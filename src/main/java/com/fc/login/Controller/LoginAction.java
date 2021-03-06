package com.fc.login.Controller;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import com.fc.base.product.entity.OrderEntity;
import com.fc.base.product.productService.OrderService;
import com.fc.login.Service.ILogService;
import com.fc.login.Service.ILoginService;
import com.fc.login.model.AnonymousEntity;
import com.fc.login.model.Log;
import com.fc.login.model.Login;
import com.fc.login.util.LoginUser;
import com.fc.login.util.LoginUtil;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class LoginAction {

    //产品名称:云通信短信API产品,开发者无需替换
    private static final String product = "Dysmsapi";
    //产品域名,开发者无需替换
    private static final String domain = "dysmsapi.aliyuncs.com";

    // TODO 此处需要替换成开发者自己的AK(在阿里云访问控制台寻找)
    private static final String accessKeyId = "LTAIxlgmunRt3Q5z";
    private static final String accessKeySecret = "lZiLmhScmWziwud2XH45Kpunifrpzu";

    //邮件发件人
    private static final String sender = "1044565101@qq.com";
    //邮件发送授权码
    private static final String senderVerfirycode = "pobbouurspoabdcj";

    @Autowired
   private ILoginService loginService;

    @Autowired
    private ILogService logService;

   @Autowired
    private OrderService orderService;

    @Autowired
    private Map<String,Object> map;

    @ModelAttribute
    public void init(){
        map=new HashMap<>();
        map.put("ok", true);
    }

    @RequestMapping("/register")
    public String register(){
        return "register";
    }

    @RequestMapping("/login")
    public String login(){
        return "login";
    }

    /**
     * 会员邮箱登录
     * @param request
     * @return
     */
    @RequestMapping("log")
    public @ResponseBody Map<String,Object> log(HttpServletRequest request){
        HttpSession session = request.getSession(true);
        String userName = (String) session.getAttribute("user");
        if (userName!=null&&!userName.equals("")){
            map.put("msg",false);
        }else {
            map.put("msg",true);
            String email = request.getParameter("phonenumber");
            String password = request.getParameter("password");
            // 当前登录的用户
            Log log = logService.getUser(email,password);
            if (log!= null) {
                map.put("message", true);
                session.setAttribute("user",log.getEmail());
                if (log.getVipname()!=null && log.getVipname().length()>0){
                    session.setAttribute("userName", log.getVipname());
                }else {
                    session.setAttribute("userName",log.getEmail());
                }
            }else {
                map.put("message", false);
            }
        }
        return map;
    }

    /**
     * 会员手机登录
     * @param request
     *@return
     */
    @RequestMapping("logs")
    public @ResponseBody Map<String,Object>logs(HttpServletRequest request) {
        HttpSession session = request.getSession(true);
        String userName = (String) session.getAttribute("user");//判断是否已经存在
        if (userName != null && !userName.equals("")) {//判断是否登录
            map.put("msg", false);
        } else {
            map.put("msg", true);
            map.put("data", true);
            String phonenumber = request.getParameter("phonenumber");//账号
            String password = request.getParameter("password");//密码
            Login login = loginService.getUsers(phonenumber, password);//查数据库
            if (login != null) {//用户是否存在
                session.setAttribute("user", login.getPhonenumber());
                map.put("data", true);
                if (login.getVipname() != null && login.getVipname().length() > 0) {
                    //-----------------------------------------//单点
                    if(LoginUser.getLoginUser().map.get(login.getVipname())==null){//取单例
                        LoginUser.getLoginUser().map.put(login.getVipname(),login.getVipname());
                        map.put("arr",LoginUser.getLoginUser().map.get(login.getVipname()));
                    }else{
                        map.put("arr",false);
                    }
                    //-------------------------
                    session.setAttribute("userName", login.getVipname());
                    session.setAttribute("path", login.getImg());
                } else {
                    //-----------------------------------------//单点
                    if(LoginUser.getLoginUser().map.get(login.getPhonenumber())==null){//取单例
                        LoginUser.getLoginUser().map.put(login.getPhonenumber(),login.getPhonenumber());
                        map.put("arr",LoginUser.getLoginUser().map.get(login.getPhonenumber()));
                    }else{
                        map.put("arr",false);
                    }
                    //-------------------------
                    session.setAttribute("userName", login.getPhonenumber());
                    session.setAttribute("path", login.getImg());
                }

            } else {
                map.put("data", false);
            }
        }
        return map;
    }

    /**
     * 会员中心退出
     * @param request
     * @return
     */
    @RequestMapping("exit")
    public @ResponseBody Map<String,Object>exit(HttpServletRequest request){
        HttpSession session = request.getSession(true);
        Map<String,Object> map1= LoginUser.getLoginUser().map;
        map1.remove(  session.getAttribute("userName"));
        session.removeAttribute("user");
        return map;
    }

    /**
     * 查询手机号
     * @param request
     * @return
     */

    @RequestMapping("virnum")
    public @ResponseBody Map<String,Object> virnum(HttpServletRequest request){
        String phonenumber = request.getParameter("phonenum");
        Login login = loginService.findUser(phonenumber);
        if (login==null){
            map.put("data",true);
        }else {
            map.put("data",false);
        }
        return map;
    }

    /**
     * 查询邮箱
     * @param request
     * @return
     */

    @RequestMapping("viremail")
    public @ResponseBody Map<String,Object>viremail(HttpServletRequest request){
        String email = request.getParameter("email");
        Log log = logService.seekUser(email);
        if (log==null){
            map.put("data",true);
        }
        else {
            map.put("data",false);
        }
        return map;
    }

    /**
     * 手机注册
     * @param request
     * @return
     */

    @RequestMapping("reg")
    public @ResponseBody Map<String,Object> reg(HttpServletRequest request){
        HttpSession session = request.getSession(true);
        String phonenumber = request.getParameter("phonenum");
        String code = (String)session.getAttribute("telecode");
        String inputcode = request.getParameter("telecode");
        String password = request.getParameter("password");
        String rpwd = request.getParameter("repassword");
        if (inputcode.equals(code)&&rpwd.equals(password)) {
            loginService.saveUser(phonenumber, inputcode, password, rpwd);
            map.put("data",true);
        }else {
            map.put("data",false);
        }
        return map;
    }

    /**
     * 邮箱注册
     * @param request
     * @return
     */

    @RequestMapping("regs")
    public @ResponseBody Map<String,Object>regs(HttpServletRequest request){
        HttpSession session = request.getSession(true);
        String email = request.getParameter("email");
        String code = (String)session.getAttribute("e-code");
        String inputcode = request.getParameter("emailcode");
        String password = request.getParameter("password");
        String rpwd = request.getParameter("repassword");
        if (inputcode.equals(code)&&rpwd.equals(password)){
            logService.saveUsers(email,inputcode,password,rpwd);
            map.put("data",true);
        }else {
            map.put("data",false);
        }
        return map;
    }

    /**
     * 会员注册手机验证码
     * @param phonenum
     * @param requests
     * @return
     * @throws ClientException
     */

    @RequestMapping("code")
    public @ResponseBody static SendSmsResponse sendSms(String phonenum, HttpServletRequest requests) throws ClientException {
        HttpSession session = requests.getSession(true);
        //可自助调整超时时间
        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
        System.setProperty("sun.net.client.defaultReadTimeout", "10000");

        //初始化acsClient,暂不支持region化
        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId, accessKeySecret);
        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
        IAcsClient acsClient = new DefaultAcsClient(profile);

        //随机生成6位验证码
        Integer code = (int) (Math.random() * (999999 - 100000 + 1)) + 100000;// 产生100000-999999的随机数
        session.setAttribute("telecode", code.toString());

        //组装请求对象-具体描述见控制台-文档部分内容
        SendSmsRequest request = new SendSmsRequest();
        //必填:待发送手机号
        request.setPhoneNumbers(phonenum);
        //必填:短信签名-可在短信控制台中找到
        request.setSignName("峰程7080");
        //必填:短信模板-可在短信控制台中找到
        request.setTemplateCode("SMS_96035015");
        //可选:模板中的变量替换JSON串,如模板内容为"亲爱的${name},您的验证码为${code}"时,此处的值为
        request.setTemplateParam("{\"name\":"+phonenum+", \"code\":"+code+"}");

        //hint 此处可能会抛出异常，注意catch
        try {
            SendSmsResponse sendSmsResponse = acsClient.getAcsResponse(request);
            return sendSmsResponse;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 会员注册邮箱验证码
     * @param httpSession
     * @param email
     * @throws Exception
     */

    @RequestMapping("mailcode")
    public @ResponseBody static void send_mail(HttpSession httpSession,String email) throws Exception {
        //创建连接对象 连接到邮件服务器
        Properties properties = new Properties();
        //设置发送邮件的基本参数
        //发送邮件服务器
        properties.put("mail.smtp.host", "smtp.qq.com");
        //自动认证
        properties.put("mail.smtp.auth", "true");
        //开启debug
        properties.put("mail.debug","true");
        //ssl邮箱端口
        properties.put("mail.smtp.socketFactory.port", 465);
        //设置是否使用ssl安全连接
        properties.put("mail.smtp.starttls.enable","true");
        //设置连接超时
        properties.put("mail.smtp.connectiontimeout","600000");
        //设置读取超时
        properties.put("mail.smtp.timeout","600000");
        //设置发送邮件的账号和密码
        Session session = Session.getInstance(properties,new Authenticator(){
            public PasswordAuthentication getPasswordAuthentication()
            {
                //两个参数分别是发送邮件的账户和密码
                return new PasswordAuthentication(sender,senderVerfirycode);
            }
        });
        session.setDebug(true);

        //创建邮件对象
        try {
        Message message = new MimeMessage(session);
        //设置发件人
        message.setFrom(new InternetAddress(sender));
        //设置收件人
        message.addRecipient(Message.RecipientType.TO,InternetAddress.parse(email)[0]);
        //设置主题
        message.setSubject("欢迎注册峰程7080网站会员");
        //设置邮件正文  第二个参数是邮件发送的类型
        Integer code = (int) (Math.random() * (999999 - 100000 + 1)) + 100000;// 产生100000-999999的随机数
        httpSession.setAttribute("e-code",code.toString());
        message.setContent("您正在www.fengcheng7080.com/vip注册会员，邮箱验证码为："+code+",请您于10分钟内使用。如验证码过期需重新获取。或直接点击进入会员页面,该邮件系统会在30秒钟后自动跳转进入会员页面。","text/html;charset=UTF-8");
        //发送一封邮件
            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping("free")
    public String freeExperience(){
        return "FreeExperience";
    }

    @RequestMapping("whatwedo")
    public String what(){
        return  "wedo";
    }

    @RequestMapping("get")
    public String get(){
        return "Getwhat";
    }

    @RequestMapping("solute")
    public String solute(){
        return "solve";
    }

    @RequestMapping("whoweare")
    public String whose(){
        return "who";
    }

    @RequestMapping("buildweb")//产品页面
    public String buildweb( HttpServletRequest request,String typeValue){
        LoginUtil util=new LoginUtil();//工具类
       String[] arr =typeValue.split("\\.");
       if(arr.length<2){
           request.setAttribute("typeValue",typeValue);
        return util.getProduct_Page(typeValue);
       }else{
           request.setAttribute("typeValue",arr[0]);
           request.setAttribute("position",arr[1]);
           System.out.println(util.getProduct_Page(arr[0]));
           return util.getProduct_Page(arr[0]);
       }
    }

    @RequestMapping("newsArticles")
    public String twelve(String type){
        return "html/news/newsArticles";
    }

    @RequestMapping("newslist")
    public String  composition(){
        return "html/news/newsList";
    }

    @RequestMapping("dataArticles")
    public String data(String type){
        return "html/data/dataArticles";
    }

    @RequestMapping("datalists")
    public String  list(){
        return "html/data/dataList";
    }

    @RequestMapping("fengchengArticles")
    public String fengcheng(String type){
        return "html/fengcheng/fengchengArticles";
    }

    @RequestMapping("fclists")
    public String  fclist(){
        return "html/fengcheng/fengchengList";
    }

    @RequestMapping("/chus")
    public String chus(){
        return "Chus";
    }

    @RequestMapping("vip")
    public String vip(){
        return "html/menber/center";
    }

    @RequestMapping("vips")
    public String vips(){
        return "html/menber/centerbase";
    }

    /**
     * 上传头像
     * @param file
     * @param request
     * @return
     */
    @RequestMapping("editvip")
    public  @ResponseBody  Map<String,Object> edit(@RequestParam(value = "evidence", required = false)MultipartFile file, HttpServletRequest request) {
        HttpSession session = request.getSession(true);
        if(file.getSize() != 0 && file.getSize()<=1000000000){
            String fileName = file.getOriginalFilename();
            String name = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date());
            String extension = FilenameUtils.getExtension(fileName);
            String url = request.getContextPath()+"/upload/"+name+ "." + extension;
            String basePath = request.getContextPath() +url;
            String path = session.getServletContext().getRealPath("")+url;
            File targetFile = new File(path);
            if (!targetFile.exists()) {
                targetFile.mkdirs();
            }
            //保存
            try {
                file.transferTo(targetFile);
            } catch (Exception e) {
                e.printStackTrace();
            }
            session.setAttribute("parsePath",basePath);
            map.put("msg",true);
        }else{
            map.put("msg",false);
        }
        return map;
    }

    @RequestMapping("pwd")
    public String password(){
        return "html/menber/password";
    }

    /**
     * 会员基本设置
     * @param vipname
     * @param phonenumber
     * @param stablephone
     * @param email
     * @param social
     * @param companyname
     * @param htype
     * @param ctype
     * @param stype
     * @param web
     * @param address
     * @param request
     * @return
     */
    @RequestMapping("updateUserInfo")
    public @ResponseBody  Map<String,Object>  updateInfo(String vipname,String phonenumber,String stablephone,String
            email,String social,String companyname,String htype,String ctype, String stype,String web,String address,HttpServletRequest request){
        HttpSession session = request.getSession(true);
        String user=(String)session.getAttribute("user");
        if(user==null || user.length()<1){  //判断用户是否为空
            map.put("data",false);
        }else{
            map.put("data",true);
         boolean  flag =false;
         Log logEntity= logService.seekUser(user);
         Login loginEntity=loginService.findUser(user);
         if(logEntity!=null){ //邮箱用户
            flag= logService.updateUser(logEntity,vipname,(String) session.getAttribute("parsePath"),phonenumber,stablephone,email,social,
                     companyname,htype,ctype,stype, web,address);
             session.setAttribute("path",(String) session.getAttribute("parsePath"));
             map.put("flag",flag);
             return map;
         }else if(loginEntity!=null){//手机用户
           flag=  loginService.updateUser(loginEntity,vipname,(String)session.getAttribute("parsePath"),phonenumber,stablephone,email,social,
                     companyname,htype,ctype,stype, web,address);
             session.setAttribute("path",(String) session.getAttribute("parsePath"));
             map.put("flag",flag);
             return map;
         }
        map.put("flag",flag);
        }
        return map;
    }

    /**
     * 显示会员用户信息
     * @param request
     * @return
     */
    @RequestMapping("showUserInfo")
    public @ResponseBody Map<String,Object>  showUserInfo(HttpServletRequest request){
        HttpSession session = request.getSession(true);
        String user =(String)session.getAttribute("user");
        if(user!=null && user.length()>0){
            Log logEntity= logService.seekUser(user);
            Login loginEntity=loginService.findUser(user);
            if(logEntity!=null){
                map.put("entity",logEntity);
            }else if(loginEntity!=null){
                map.put("entity",loginEntity);
        }
            map.put("flag",true);
            return map;
        }
        map.put("flag",false);
        return map;
    }

    /**
     * 会员页面重设密码
     * @param request
     * @param oldpassword
     * @param password
     * @param repassword
     * @return
     */
    @RequestMapping("findpwd")
    public @ResponseBody List<String> findpwd(HttpServletRequest request,String oldpassword,String password,String repassword){
        List<String> list = new ArrayList<>();
        HttpSession session = request.getSession(true);
        String userName=(String)session.getAttribute("user");
            if(userName==null || userName.length()<1){
            list.add("您还未登录!");
            return list;
             }
        if(oldpassword.equals(password)){
            list.add("新旧密码不能一样!");
            return list;
        }
        if(!password.equals(repassword)){
            list.add("两次密码不一致!");
            return list;
        }
        String phonenumber = (String) session.getAttribute("user");
        String email = (String) session.getAttribute("user");
        Log log = logService.getUser(email,oldpassword);
        Login login = loginService.getUsers(phonenumber,oldpassword);
        if(log!=null){
            if(log.getPassword().equals(oldpassword)){
                    log.setPassword(password);
                    log.setRepassword(repassword);
                    logService.findpwd(log);
            session.setAttribute("user",log.getEmail());
            list.add("修改成功");
            return list;
        }
        }else if(login!=null){
            if(login.getPassword().equals(oldpassword)){
                    login.setPassword(password);
                    login.setRepassword(repassword);
                    loginService.findpwd(login);
                session.setAttribute("user",login.getPhonenumber());
                list.add("修改成功");
                return list;
            }
        }
        list.add("密码错误!");
        return list;
    }
    @RequestMapping("anonymousLogin")//匿名注册登录
    public @ResponseBody Map<String,Object> anonymousLogin(HttpServletRequest request){
        HttpSession session = request.getSession(true);
        if(session.getAttribute("user")==null || session.getAttribute("user").toString().length()<1){
            AnonymousEntity entity=new AnonymousEntity();
            entity= loginService.anonymousLogin();
            if(entity!=null){
                session.setAttribute("user",entity.getAnonymousUser());
                map.put("user",entity.getAnonymousUser());
            }
        }else {
            map.put("user",session.getAttribute("user").toString());
        }
        if(session.getAttribute("user")!=null){
            map.put("flat",true);
        }else{
            map.put("flat",false);
        }
        return map;
    }
    @RequestMapping("safe")
    public String security(){
        return "html/menber/security";
    }

    @RequestMapping("via")
    public String via(){
        return "html/realName/realindex";
    }

    @RequestMapping("pctfct")
    public String pcertification(){
        return "html/realName/pcertification";
    }

    @RequestMapping("cctfct")
    public String ccertification(){
        return "html/EnCer/pcertification";
    }

    @RequestMapping("balance")
    public String balance(){
        return "html/AccountBalance/index";
    }

    @RequestMapping("deposit")
    public String balancetab(){
        return "html/AccountBalance/charge";
    }

    @RequestMapping("refund")
    public String refund(){
        return "html/AccountBalance/refund";
    }

    @RequestMapping("withdraw")
    public String withdraw(){
        return "html/AccountBalance/Withdrawals";
    }

    @RequestMapping("wsuccess")
    public String withdrawsucess(){
        return "html/AccountBalance/WSuccess";
    }

    @RequestMapping("wlist")
    public String withdrawlist(){
        return "html/AccountBalance/WHistory";
    }

    @RequestMapping("info")
    public String accountinfo(){
        return "html/AccountBalance/accountinfo";
    }

    @RequestMapping("bill")
    public String bill(){
        return "html/Bill/index";
    }

    @RequestMapping("billtab")
    public String billtab(){
        return "html/Bill/billtab";
    }

    @RequestMapping("saleorder")
    public String saleorder(){
        return "html/order/charge";
    }

    @RequestMapping("freeorder")
    public String freeorder(){
        return "html/order/free";
    }

    @RequestMapping("viewapply")
    public String viewapply(){
        return "html/order/myApply";
    }

    @RequestMapping("csv")
    public String customerservice(){
        return "html/service/CustomerService";
    }

    @RequestMapping("freevia")
    public String freevia(){
        return "html/service/FreePlaces";
    }

    @RequestMapping("orderensure")
    public String orderensure(){
        return "html/order/scheduleorder";
    }

    @RequestMapping("payorder")
    public String payorder(){
        return "html/order/payorder";
    }

    @RequestMapping("FreePlaces")
    public String FreePlaces(){
        return "html/service/FreePlaces";
    }

    @RequestMapping("admin")
    public String admin(){
        return "jsp/user/login";
    }

    @RequestMapping("callback")
    public String callback(){
        return "qc_callback";
    }

    /**
     * 用户付款
     * @param request
     * @return
     */
    @RequestMapping("alipay")
    public String alipay(HttpServletRequest request){
        HttpSession session = request.getSession(true);
        OrderEntity order=(OrderEntity) session.getAttribute("order"); //取选中的产品
        request.setAttribute("orderCode",order.getCode());
        request.setAttribute("orderTotal",order.getPrice());
        request.setAttribute("proTitle",order.getProTitle());
        System.out.println(order.getCode()+"    "+order.getPrice()+"   "+order.getProTitle());
        return "html/order/alipay";
    }
    @RequestMapping("mobileindex")
    public String mobileindex(){
        return "mobileindex";
    }

    @RequestMapping("contract")
    public String contract(){
        return "html/contract/contract";
    }

    @RequestMapping("cc")
    public String cc(){
        return "html/contract/CreateContract";
    }

    @RequestMapping("newsData")//显示文章
    public String showNews(String currentPage,String age){
        return "html/data/dataArticles";
    }

}


package com.fc.login.Controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.fc.base.contentadmin.artitle.entity.ArticleEntity;
import com.fc.base.contentadmin.artitle.service.ArticleService;
import com.fc.util.entity.*;
import com.fc.util.service.AccountService;
import com.fc.util.service.CommentService;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import com.fc.base.product.entity.OrderEntity;
import com.fc.base.product.productService.OrderService;
import com.fc.base.user.entity.AppType;
import com.fc.base.user.entity.CompType;
import com.fc.base.user.entity.FcUser;
import com.fc.base.user.entity.ProKind;
import com.fc.base.user.service.UserService;
import com.fc.login.Service.ILogService;
import com.fc.login.Service.ILoginService;
import com.fc.login.util.LoginUser;
import com.fc.login.util.LoginUtil;

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
    private  CommentService commentService;
    @Autowired
    private ILoginService loginService;
    @Autowired
    private AccountService accountService;
    @Autowired
    private ILogService logService;
    @Autowired
    private UserService userService;
   @Autowired
    private OrderService orderService;
    @Autowired
    private ArticleService articleService;
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
    public @ResponseBody Map<String,Object> log(HttpServletRequest request,String type ,String userName,String password){
//        HttpSession session = request.getSession(true);
//        System.out.println(type);
//        System.out.println(userName);
//        System.out.println(password);
//        if ((String) session.getAttribute("user")!=null&&!"".equals((String) session.getAttribute("user"))){
//            map.put("msg",false);
//        }else {
//
//            map.put("msg",true);
         /*   String email = request.getParameter("phonenumber");
            password = request.getParameter("password");
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
            }*/
//        }
        return logs(request, type, userName, password);
    }

    /**
     * 会员手机登录
     * @param request
     *@return
     */
    @RequestMapping("logs")//登录
    public @ResponseBody Map<String,Object>logs(HttpServletRequest request,String type ,String user,String password) {

        HttpSession session = request.getSession(true);
        if ((String) session.getAttribute("user")!=null&&!"".equals((String) session.getAttribute("user"))) {//判断是否登录
            map.put("msg", false);//判断是否有用户登录  false为已经登录
        } else {
            map.put("msg", true);
             FcUser fcUser=userService.loginUser(type ,user, password);

           if(fcUser!=null){       //判断是否正确.
               session.setAttribute("userName",fcUser.getUserName());//用户名
               session.setAttribute("user",user);//登录号
               session.setAttribute("password",password);
               session.setAttribute("type",type);//类型
               map.put( "message",true);
           }else{
        	   if(userService.findList(user, null, null).size()<0) {
        		   //返回消息：“用户未注册，请先注册”
        	   }
               map.put( "message",false);
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
  List<FcUser> list= userService.findList(phonenumber,"","0");
        if (list.size()<1){
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
      List<FcUser> list= userService.findList(email,"","1");
        if (list.size()<1){
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
//        String code = (String)session.getAttribute("telecode");
        String code=(String)request.getAttribute("yzm");
        String inputcode = request.getParameter("telecode");
        String password = request.getParameter("password");
        String rpwd = request.getParameter("repassword");
        if (inputcode.equals(code)&&rpwd.equals(password)) {
            loginService.saveUser(phonenumber, inputcode, password, rpwd);
            map.put("data",true);
        }else {
            map.put("data",false);
        }
        map.put("data",false);
        return map;
    }

    /**
     * 邮箱注册
     * @param
     * @return
     */

    @RequestMapping("regs")//注册
    public @ResponseBody Map<String,Object>regs(HttpServletRequest request,String type,String userName,String password,String repassword,String code){
      if(code.equals((String)request.getAttribute("yzm"))){
        map.put("code",true);
      }else{
          map.put("code",false);
      }
        if (userService.findList(userName,"",type).size()<1){
            map.put("data",true);
            if(password.equals(repassword)){
                userService.saveUser(userName,password,repassword,type);
                map.put("ok",true);
            }else{
                map.put("ok",false);
            }
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
//        session.setAttribute("telecode", code.toString());
        requests.setAttribute("yzm", code.toString());

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
     * @param vipName
     * @param phonenumber
     * @param stablephone
     * @param email
     * @param social
     * @param companyname
    // * @param htype
    // * @param ctype
    // * @param stype
     * @param web
     * @param address
     * @param request
     * @return
     */
    @RequestMapping("updateUserInfo")
    public @ResponseBody  Map<String,Object>  updateInfo(String vipName,String phonenumber,String stablephone,String
            email,String social,String companyname,String prodKindId,String comptypeId, String appTypeId,String web,String address,HttpServletRequest request){
        HttpSession session = request.getSession(true);
        String userName=(String)session.getAttribute("userName");
        String user=(String)session.getAttribute("user");
        String password =(String) session.getAttribute("password");
        String type=(String) session.getAttribute("type");
        String pares=(String) session.getAttribute("parsePath");//图片
        if(userName==null || userName.length()<1){  //判断用户是否为存在
            map.put("data",false);
        }else{
            map.put("data",true);

        FcUser fcUser = userService.loginUser(type,user,password);//取用户信息
          /*  if(!"".equals(pares)){
                fcUser.setProfilePhoto(pares);
         /*   }*/
//            if(!"".equals(vipName)){
//             //   fcUser.setUserName(vipName);
//            }
            if(!"".equals(stablephone)) {
                fcUser.setPhone(stablephone);//固定电话
            }
            if(!"".equals(phonenumber)) {
                fcUser.setTel(phonenumber);//手机
            }
            if(!"".equals(email)) {
                fcUser.setEmail(email);//邮箱
            }
            if(!"".equals(social)) {
                fcUser.setWechart(social);//QQ/weixin
            }
            if(!"".equals(companyname)) {
                fcUser.setCompany(companyname);
            }
            if(!"".equals(web)) {
                fcUser.setWebsite(web);//网站
            }
            if(!"".equals(address)) {
                fcUser.setOperAddr(address);//地址
            }
//            if(fcUser.getProdKindId()!=null){
//
//                fcUser.getProdKindId().setProKind(htype);
//            }else{
//                ProKind proKind=new ProKind();//行业类型
//                proKind.setProKind(htype);
//                fcUser.setProdKindId(proKind);
//            }

//            if( fcUser.getComptypeId()!=null){
//                fcUser.getComptypeId().setCompType(ctype);
//            }else{
//                CompType compType=new CompType();//公司类型
//                compType.setCompType(ctype);
//                fcUser.setComptypeId(compType);
//            }

//            if( fcUser.getAppTypeId()!=null){
//                fcUser.getAppTypeId().setAppType(stype);
//            }else {
//                AppType appType = new AppType();//申请人类型
//                appType.setAppType(stype);
//                fcUser.setAppTypeId(appType);
//            }
            if(!"".equals(prodKindId)) {
                fcUser.setProdKindId(prodKindId);
            }
            if(!"".equals(comptypeId)) {
                fcUser.setComptypeId(comptypeId);//地址
            }
            if(!"".equals(appTypeId)) {
                fcUser.setAppTypeId(appTypeId);//地址
            }

            userService.saveUser(fcUser);

        map.put("flag",true);
        }
        return map;
    }
    
    @RequestMapping("/proApply2")
    public @ResponseBody void proApply(String prodKindId,String comptypeId,String appTypeId ,String companyname ,
            String address,String stablephone,String phonenumber,String email,String web,String social,String demand){
    	
    	
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
        String password =(String) session.getAttribute("password");
        String type=(String) session.getAttribute("type");
        if(user!=null && user.length()>0){
        	FcUser fcuser = userService.loginUser(type,user,password);
        	if(fcuser!=null) 
        		map.put("entity", fcuser);
        	if(fcuser.getProdKindId()!=null){
                map.put("prodkind",fcuser.getProdKindId());
            }
            if(fcuser.getComptypeId()!=null){
                map.put("comptype", fcuser.getComptypeId());
            }
            if(fcuser.getAppTypeId()!=null){
                map.put("appType", fcuser.getAppTypeId());
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
        String user=(String)session.getAttribute("user");
            if(user==null || user.length()<1){
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
        String type=(String)session.getAttribute("type");
          FcUser fcUser = userService.loginUser(type,user,oldpassword);
	      if(fcUser!=null){
              fcUser.setPassword(password);
              fcUser.setRePassword(repassword);
              userService.saveUser(fcUser);
		      list.add("修改成功");
              session.setAttribute("password",password);
	      }else{
              list.add("密码错误");
          }
	      return list;
    }
    @RequestMapping("anonymousLogin")//匿名注册登录
    public @ResponseBody Map<String,Object> anonymousLogin(HttpServletRequest request){
        HttpSession session = request.getSession(true);
        if(session.getAttribute("user")==null || session.getAttribute("user").toString().length()<1){
//            AnonymousEntity entity=new AnonymousEntity();
//            entity= loginService.anonymousLogin();
//            if(entity!=null){
//                session.setAttribute("user",entity.getAnonymousUser());
//                map.put("user",entity.getAnonymousUser());
//            }
            FcUser entity=userService.anonymousLogin();
            if(entity!=null) {
            	session.setAttribute("user", entity.getUserName());
            	map.put("user", entity.getUserName());
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
    public String security(HttpServletRequest request){
    	HttpSession session = request.getSession(true);
    	String userid=((FcUser)session.getAttribute("user")).getId();
    	SafeQusetion safeQusetion= accountService.getSafeQusetion(userid);
    	if(safeQusetion!=null) {
    		return "html/menber/security";
    	} else {
    		return "html/menber/security_init";
    	}
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
    @RequestMapping("saveQuestion")//显示文章
    public @ResponseBody Map<String,Object> save(HttpSession session,String question,String answer,String confirmAnswer){
        FcUser fcUser=userService.loginUser((String)session.getAttribute("type"),(String)session.getAttribute("user"),(String)session.getAttribute("password"));
        SafeQusetion safeQusetion= accountService.getSafeQusetion(fcUser.getId());
        if(safeQusetion!=null){
			safeQusetion.setAnswer(answer);
			safeQusetion.setQuestion(question);
			safeQusetion.setConfirmAnswer(confirmAnswer);
            accountService.addSafeQuestion(safeQusetion,question,answer,confirmAnswer);
        }else{
            accountService.addSafeQuestion(question,answer,confirmAnswer,fcUser.getId());
        }


        return map;
    }
    @RequestMapping("showQuestion")//显示文章
    public @ResponseBody Map<String,Object> showQuestion(HttpSession session){
        FcUser fcUser=userService.loginUser((String)session.getAttribute("type"),(String)session.getAttribute("user"),(String)session.getAttribute("password"));
        SafeQusetion safeQusetion= accountService.getSafeQusetion(fcUser.getId());
        map.put("entity",safeQusetion);
        return map;
    }
    @RequestMapping("savePCertify")//个人认证(保存)
    public @ResponseBody Map<String,Object> savePersonCertify(HttpSession session,String name,String nameNum,String phone){
        String user =(String)session.getAttribute("user");
        String password =(String) session.getAttribute("password");
        String type=(String) session.getAttribute("type");
        FcUser fcuser = userService.loginUser(type,user,password);

        if(fcuser!=null){
           if( accountService.findPersonCertify(fcuser.getId())==null){
               map.put("flag",true);//没有认证
               PersonCertify personCertify=new PersonCertify();
               personCertify.setFcuserId(fcuser.getId());
               personCertify.setName(name);
               personCertify.setIdNum(nameNum);
               personCertify.setReIdNum(nameNum);
               personCertify.setTel(phone);
               accountService.savePersonCertify(personCertify);
           }else{
               map.put("flag",false);//已经存在
           };
        }else{
            map.put("ok",false);
        }
        return map;
    }
    @RequestMapping("saveECertify")//企业认证(保存)
    public @ResponseBody Map<String,Object> saveEnterCertify(HttpSession session,String enterpriceName,String corporateName,String appName,String
            phone,String tel,String website){


        FcUser fcuser = userService.loginUser((String) session.getAttribute("type"),(String)session.getAttribute("user"),(String) session.getAttribute("password"));

        if(fcuser!=null){
            if( accountService.findEnterCertify(fcuser.getId())==null){
                map.put("flag",true);//没有认证
                EnterCertify enterCertify=new EnterCertify();
                enterCertify.setFcUserId(fcuser.getId());//
                enterCertify.setAppName(appName);//
                enterCertify.setEnterpriceName(enterpriceName);
                enterCertify.setCorporateName(corporateName);
                enterCertify.setPhone(phone);
                enterCertify.setTel(tel);
                enterCertify.setWebsite(website);
                accountService.saveEnterCertify(enterCertify);
            }else{
                map.put("flag",false);//已经存在
            };
        }else{
            map.put("ok",false);
        }
        return map;
    }
    @RequestMapping("addBillApp")//申请发票
    public @ResponseBody Map<String,Object> addBillApp(HttpSession session,String appType,String billType,String billTitle){
        FcUser fcuser = userService.loginUser((String) session.getAttribute("type"),(String)session.getAttribute("user"),(String) session.getAttribute("password"));

        if(fcuser!=null) {
            BillApp billApp=accountService.findBillApp(fcuser.getId());
            if(billApp==null){
                accountService.appBill(appType, billType, billTitle, fcuser.getId());

                map.put("ok",true);
            }else{

                billApp.setAppType(appType);
                billApp.setBillTitle(billTitle);
                billApp.setBillType(billType);
                accountService.appBill(billApp);
            }

        }else{
            map.put("ok",false);
        }
        return map;
    }
    @RequestMapping("addBillSendAddr")//发票寄到哪里？
    public @ResponseBody Map<String,Object>  addBillSendAddr(HttpSession session,String receiver,String city,String address
            ,String mailCode,String phone,String tel){
        FcUser fcuser = userService.loginUser((String) session.getAttribute("type"),(String)session.getAttribute("user"),(String) session.getAttribute("password"));
        if(fcuser!=null) {
           BillApp billApp=accountService.findBillApp(fcuser.getId());//查看申请发票
           if(billApp!=null){
               map.put("flag",true);
               if(accountService.findBillSendAddr(billApp.getBaId())!=null){//
                 BillSendAddr billSendAddr= accountService.findBillSendAddr(billApp.getBaId());
                 billSendAddr.setReceiver(receiver);
                   billSendAddr.setAddress(address);
                   billSendAddr.setCity(city);
                   billSendAddr.setPhone(phone);
                   billSendAddr.setTel(tel);
                   billSendAddr.setMailCode(mailCode);
                   billSendAddr.setReceiver(receiver);
                   billSendAddr.setBaId(billApp.getBaId());
                   accountService.appBillSendAddr(billSendAddr);
               }else{
               accountService.appBillSendAddr(receiver,city,address,mailCode,phone,tel,billApp.getBaId());}
           }else{
               map.put("flag",false);
           }
            map.put("ok",true);
        }else{
            map.put("ok",false);
        }
        return map;
    }
    @RequestMapping("showBill")//发票寄到哪里？
    public @ResponseBody Map<String,Object>  addBillSendAddr(HttpSession session){
        FcUser fcuser = userService.loginUser((String) session.getAttribute("type"),(String)session.getAttribute("user"),(String) session.getAttribute("password"));
        BillApp billApp=accountService.findBillApp(fcuser.getId());//查看申请发票
        BillSendAddr billSendAddr= accountService.findBillSendAddr(billApp.getBaId());//发票地址
        if(billApp!=null&&billSendAddr!=null) {

            map.put("billapp", billApp);
            map.put("billSendAddr", billSendAddr);
        }
        return map;
    }
    @RequestMapping("articleComment")//发票寄到哪里？
    public @ResponseBody Map<String,Object>  comment(HttpSession session,String content,String id,String type){
        String user=(String)session.getAttribute("user");
        String password =(String) session.getAttribute("password");
        String userType=(String) session.getAttribute("type");
        FcUser fcUser=userService.loginUser(userType,user,password);
        if(fcUser!=null){
            map.put("ok",true);
            FcComment fcComment=new FcComment();
            fcComment.setFcuserId(fcUser.getId());
            fcComment.setCommenter(fcUser.getUserName());
            fcComment.setContent(content);
            fcComment.setCommentClass(type);
            fcComment.setSubmiterAddr(fcUser.getLocation());
           ArticleEntity entity= articleService.showDateOrFC(type,id).get(0);
            fcComment.setArtcleId(entity.getId()+"");
            commentService.saveProComent(fcComment);
        }
        return map;
    }

}


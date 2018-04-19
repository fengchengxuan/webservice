package com.fc.base.login.controller;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import com.fc.base.contentadmin.artitle.entity.ArticleEntity;
import com.fc.base.contentadmin.artitle.service.ArticleService;
import com.fc.base.login.model.Permissions;
import com.fc.base.login.model.User;
import com.fc.base.login.service.IUserService;
import com.fc.base.login.util.Util;
import com.fc.base.user.entity.FcUser;
import com.fc.base.user.service.UserService;
import com.fc.util.CommentUtil;
import com.fc.util.entity.ArtComment;
import com.fc.util.entity.FcComment;
import com.fc.util.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * Created by Mbenben on 2017/7/12.
 */
@Controller
@RequestMapping("/admin")
public class UserAction {

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
    private IUserService userService;
    @Autowired
    private UserService service;
    @Autowired
    private CommentService commentService;
    @Autowired
    private ArticleService articleService;
    @Autowired
    private Map<String,Object>map;

    @ModelAttribute
    public void init(){
        map=new HashMap<String,Object>();
        map.put("ok", false);
    }

    /**
     * 登录方法
     * @param request
     * @return
     */
    @RequestMapping("login")
    public @ResponseBody Map<String,Object> log(HttpServletRequest request){
        String username = (String) request.getSession().getAttribute("loginName");//查看是否已经登录
        if (username!=null&&!username.equals("")){
            map.put("msg",false);
        }else {
            map.put("msg", true);
            String loginName = request.getParameter("loginName");
            String password = request.getParameter("password");
            User user = userService.getUser(loginName, password);
            if (user != null) {//账号密码正确
                request.getSession().setAttribute("loginName", loginName);
                 user.setState("在线");
                 userService.updateUser(user);
                 request.setAttribute("user",user);
                map.put("data", true);
                Permissions permissions = user.getPermissions();
                request.getSession().setAttribute("loginName", user.getLoginName());
                request.getSession().setAttribute("level", user.getLevel());
                //------权限
                request.getSession().setAttribute("advertising", permissions.getAdvertising());
                request.getSession().setAttribute("content", permissions.getContent());
                request.getSession().setAttribute("footer", permissions.getFooter());
                request.getSession().setAttribute("key", permissions.getKey());
                request.getSession().setAttribute("order", permissions.getOrder());
                request.getSession().setAttribute("product", permissions.getProduct());
                request.getSession().setAttribute("system", permissions.getSystem());
                request.getSession().setAttribute("vip_management", permissions.getVip());
            }else {
                map.put("data", false);
            }
        }
        return map;
    }

    /**
     * 显示所有后台用户
     * @return
     */

    @RequestMapping("showUser")
    public @ResponseBody Util showUser(){
        List<User> list = userService.show();
        Util util=new Util();
        util.setUserList(list);
        return  util;
    }

    /**
     * 登录忘记密码
     * @param request
     * @return
     */

    @RequestMapping("forgetpassword")
    public @ResponseBody Map<String, Object> forgetpassword(HttpServletRequest request){
        String userName = request.getParameter("user");
        User user = userService.getName(userName);
        if (user==null){
            map.put("flag",false);
        }else {
            map.put("flag", true);
            request.getSession().setAttribute("mobilephoneloginName", userName);
            String phone = request.getParameter("phone");
            String pcode = (String) request.getSession().getAttribute("mobilephonecode");
            String phonecode = request.getParameter("phonecode");
            String email = request.getParameter("email");
            String ecode = (String) request.getSession().getAttribute("ecodes");
            String emailcode = request.getParameter("e-code");
            if (phonecode.equals(pcode)) {
                map.put("data", true);
            } else if (emailcode.equals(ecode)){
                map.put("data", true);
            }else {
                map.put("data", false);
            }
        }
        return map;
    }

    /**
     * 登录忘记密码手机验证码
     * @param phone
     * @param requests
     * @return
     * @throws ClientException
     */

    @RequestMapping("forgetpasswordcode")
    public @ResponseBody static SendSmsResponse Sms(String phone, HttpServletRequest requests) throws ClientException {
        //可自助调整超时时间
        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
        System.setProperty("sun.net.client.defaultReadTimeout", "10000");

        //初始化acsClient,暂不支持region化
        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId, accessKeySecret);
        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
        IAcsClient acsClient = new DefaultAcsClient(profile);

        //随机生成6位验证码
        Integer code = (int) (Math.random() * (999999 - 100000 + 1)) + 100000;// 产生100000-999999的随机数
        requests.getSession().setAttribute("mobilephonecode", code.toString());

        //组装请求对象-具体描述见控制台-文档部分内容
        SendSmsRequest request = new SendSmsRequest();
        //必填:待发送手机号
        request.setPhoneNumbers(phone);
        //必填:短信签名-可在短信控制台中找到
        request.setSignName("峰程7080");
        //必填:短信模板-可在短信控制台中找到
        request.setTemplateCode("SMS_90125033");
        //可选:模板中的变量替换JSON串,如模板内容为"亲爱的${name},您的验证码为${code}"时,此处的值为
        request.setTemplateParam("{\"name\":"+phone+", \"number\":"+code+"}");

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
     * 手机短信返回密码
     * @param phone
     * @param requests
     * @return
     * @throws ClientException
     */

    @RequestMapping("passwordcode")
    public @ResponseBody SendSmsResponse sent(String phone, HttpServletRequest requests) throws ClientException {
        //可自助调整超时时间
        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
        System.setProperty("sun.net.client.defaultReadTimeout", "10000");
        //初始化acsClient,暂不支持region化
        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId, accessKeySecret);
        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
        IAcsClient acsClient = new DefaultAcsClient(profile);
        String loginName = (String) requests.getSession().getAttribute("mobilephoneloginName");
        User pwd = userService.getName(loginName);
        String password = pwd.getPassword();
        //组装请求对象-具体描述见控制台-文档部分内容
        SendSmsRequest request = new SendSmsRequest();
        //必填:待发送手机号
        request.setPhoneNumbers(phone);
        //必填:短信签名-可在短信控制台中找到
        request.setSignName("峰程7080");
        //必填:短信模板-可在短信控制台中找到
        request.setTemplateCode("SMS_123738389");
        //可选:模板中的变量替换JSON串,如模板内容为"亲爱的${name},您的验证码为${code}"时,此处的值为
        request.setTemplateParam("{\"password\":\""+password+"\"}");

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
     * 登录忘记密码邮箱验证码
     * @param httpSession
     * @param email
     */

    @RequestMapping("forgetpasswordecode")
    public @ResponseBody static void mail(HttpSession httpSession,String email){
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
            message.setSubject("忘记密码邮箱验证码");
            //设置邮件正文  第二个参数是邮件发送的类型
            Integer code = (int) (Math.random() * (999999 - 100000 + 1)) + 100000;// 产生100000-999999的随机数
            httpSession.setAttribute("ecodes",code.toString());
            message.setContent("尊敬的用户，您的邮箱验证码为："+code+",请您于10分钟内使用。如验证码过期需重新获取。","text/html;charset=UTF-8");
            //发送一封邮件
            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }

    /**
     * 邮箱邮件返回密码
     * @param email
     * @throws Exception
     */

    @RequestMapping("passwordecode")
    public @ResponseBody Map<String,Object> sent_email(String email,HttpServletRequest request) throws Exception {
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
            message.setSubject("忘记密码邮件");
            String loginName = (String) request.getSession().getAttribute("mobilephoneloginName");
            User pwd = userService.getName(loginName);
            String password = pwd.getPassword();
            //设置邮件正文  第二个参数是邮件发送的类型
            message.setContent("尊敬的用户，您的原密码为："+password+",请您最好记下来,以免耽误您过多的时间。","text/html;charset=UTF-8");
            //发送一封邮件
            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 重设密码
     * @param session
     * @param newpwd
     * @param repassword
     * @param loginName
     * @return
     */

    @RequestMapping("changepwd")
    public @ResponseBody List<String> checkUser(HttpSession session,String newpwd,String repassword,String loginName){
       String userName = (String) session.getAttribute("loginName");
        List<String> list = new ArrayList<String>();
        if (userName==null || "".equals(userName)){
            list.add("您还未登录!");
            return list;
        }
        if (loginName==null || "".equals(loginName)){
            list.add("请输入帐号");
            return list;
        }
        if (!newpwd.equals(repassword)){
            list.add("两次密码不一致!");
            return list;
        }
        User user = userService.getName(loginName);
        if (user!=null){
            user.setPassword(newpwd);
            user.setRepassword(repassword);
            userService.updateUser(user);
            list.add("修改成功!");
            return list;
        }else {
            list.add("没有该帐号!");
        }
        return list;
    }

    /**
     * 忘记密码
     * @param request
     * @param session
     * @return
     */

    @RequestMapping("forgetpwd")
    public @ResponseBody Map<String,Object> forget(HttpServletRequest request,HttpSession session){
        String userName = (String) session.getAttribute("loginName");
        if (userName==null){
            map.put("flag",false);
        }else {
            map.put("flag", true);
            request.getSession().setAttribute("userName", userName);
            String phone = request.getParameter("phone");
            String pcodes = (String) request.getSession().getAttribute("phonecode");
            String inputpcodes = request.getParameter("code");
            String email = request.getParameter("email");
            String ecodes = (String) request.getSession().getAttribute("emailcode");
            String inputecodes = request.getParameter("e-code");
            if (inputpcodes.equals(pcodes)) {
                map.put("message", true);
            } else if (inputecodes.equals(ecodes)) {
                map.put("message", true);
            } else {
                map.put("message", false);
            }
        }
        return map;
    }

    /**
     * 忘记帐号
     * @param request
     * @param session
     * @return
     */

    @RequestMapping("forgetnumber")
    public @ResponseBody Map<String,Object> forgetnumber(HttpServletRequest request,HttpSession session){
        String userName = (String) session.getAttribute("loginName");
        String phonenumber = request.getParameter("phonenumber");
        String phonecodes = (String) request.getSession().getAttribute("telephonecode");
        String inputphonecodes = request.getParameter("phonecode");
        String emails = request.getParameter("emails");
        String emailcodes = (String) request.getSession().getAttribute("e-code");
        String inputemailcodes = request.getParameter("emailcode");
        if (inputphonecodes.equals(phonecodes)){
            map.put("msg",true);
        }else if (emailcodes.equals(inputemailcodes)){
            map.put("msg",true);
        }else {
            map.put("msg",false);
        }
        return map;
    }


    /**
     * 忘记密码手机验证码
     * @param phone
     * @param requests
     * @return
     * @throws ClientException
     */

    @RequestMapping("code")
    public @ResponseBody static SendSmsResponse sendSms(String phone, HttpServletRequest requests) throws ClientException {
        //可自助调整超时时间
        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
        System.setProperty("sun.net.client.defaultReadTimeout", "10000");

        //初始化acsClient,暂不支持region化
        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId, accessKeySecret);
        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
        IAcsClient acsClient = new DefaultAcsClient(profile);

        //随机生成6位验证码
        Integer code = (int) (Math.random() * (999999 - 100000 + 1)) + 100000;// 产生100000-999999的随机数
        requests.getSession().setAttribute("phonecode", code.toString());

        //组装请求对象-具体描述见控制台-文档部分内容
        SendSmsRequest request = new SendSmsRequest();
        //必填:待发送手机号
        request.setPhoneNumbers(phone);
        //必填:短信签名-可在短信控制台中找到
        request.setSignName("峰程7080");
        //必填:短信模板-可在短信控制台中找到
        request.setTemplateCode("SMS_90125033");
        //可选:模板中的变量替换JSON串,如模板内容为"亲爱的${name},您的验证码为${code}"时,此处的值为
        request.setTemplateParam("{\"name\":"+phone+", \"number\":"+code+"}");

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
     * 忘记帐号手机验证码
     * @param phonenumber
     * @param requests
     * @return
     * @throws ClientException
     */

    @RequestMapping("phonecode")
    public @ResponseBody static SendSmsResponse sendMessage(String phonenumber, HttpServletRequest requests) throws ClientException {
        //可自助调整超时时间
        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
        System.setProperty("sun.net.client.defaultReadTimeout", "10000");

        //初始化acsClient,暂不支持region化
        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId, accessKeySecret);
        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
        IAcsClient acsClient = new DefaultAcsClient(profile);

        //随机生成6位验证码
        Integer code = (int) (Math.random() * (999999 - 100000 + 1)) + 100000;// 产生100000-999999的随机数
        requests.getSession().setAttribute("telephonecode", code.toString());

        //组装请求对象-具体描述见控制台-文档部分内容
        SendSmsRequest request = new SendSmsRequest();
        //必填:待发送手机号
        request.setPhoneNumbers(phonenumber);
        //必填:短信签名-可在短信控制台中找到
        request.setSignName("峰程7080");
        //必填:短信模板-可在短信控制台中找到
        request.setTemplateCode("SMS_90125033");
        //可选:模板中的变量替换JSON串,如模板内容为"亲爱的${name},您的验证码为${code}"时,此处的值为
        request.setTemplateParam("{\"name\":"+phonenumber+", \"number\":"+code+"}");

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
     * 忘记密码手机短信返回密码
     * @param phone
     * @return
     * @throws ClientException
     */

    @RequestMapping("notice")
    public @ResponseBody SendSmsResponse sendMessages(String phone,HttpServletRequest requests) throws ClientException {
        //可自助调整超时时间
        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
        System.setProperty("sun.net.client.defaultReadTimeout", "10000");

        //初始化acsClient,暂不支持region化
        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId, accessKeySecret);
        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
        IAcsClient acsClient = new DefaultAcsClient(profile);
        String loginName = (String) requests.getSession().getAttribute("userName");
        User pwd = userService.getName(loginName);
        String password = pwd.getPassword();
        //组装请求对象-具体描述见控制台-文档部分内容
        SendSmsRequest request = new SendSmsRequest();
        //必填:待发送手机号
        request.setPhoneNumbers(phone);
        //必填:短信签名-可在短信控制台中找到
        request.setSignName("峰程7080");
        //必填:短信模板-可在短信控制台中找到
        request.setTemplateCode("SMS_123738389");
        //可选:模板中的变量替换JSON串,如模板内容为"亲爱的${name},您的验证码为${code}"时,此处的值为
        request.setTemplateParam("{\"password\":\""+password+"\"}");
        try {
            SendSmsResponse sendSmsResponse = acsClient.getAcsResponse(request);
            return sendSmsResponse;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 忘记密码邮箱邮件返回密码
     * @param email
     * @throws Exception
     */

    @RequestMapping("inform")
    public @ResponseBody List<String> send_email(HttpServletRequest request,String email) throws Exception {
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
            message.setSubject("忘记密码邮箱");
            String loginName = (String) request.getSession().getAttribute("userName");
            User pwd = userService.getName(loginName);
            String password = pwd.getPassword();
            //设置邮件正文  第二个参数是邮件发送的类型
            message.setContent("尊敬的用户，您的原密码为："+password+",请您最好记下来,以免耽误您过多的时间。","text/html;charset=UTF-8");
            //发送一封邮件
            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 忘记密码邮箱验证码
     * @param httpSession
     * @param email
     */

    @RequestMapping("mailcode")
    public @ResponseBody static void send_mail(HttpSession httpSession,String email){
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
            message.setSubject("忘记密码邮箱验证码");
            //设置邮件正文  第二个参数是邮件发送的类型
            Integer code = (int) (Math.random() * (999999 - 100000 + 1)) + 100000;// 产生100000-999999的随机数
            httpSession.setAttribute("emailcode",code.toString());
            message.setContent("尊敬的用户，您的邮箱验证码为："+code+",请您于10分钟内使用。如验证码过期需重新获取。","text/html;charset=UTF-8");
            //发送一封邮件
            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }

    /***
     * 忘记帐号邮箱验证码
     * @param httpSession
     * @param emails
     * @throws Exception
     */

    @RequestMapping("emailcode")
    public @ResponseBody static void sendmail(HttpSession httpSession,String emails) throws Exception {
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
            message.addRecipient(Message.RecipientType.TO,InternetAddress.parse(emails)[0]);
            //设置主题
            message.setSubject("忘记帐号邮箱验证码");
            //设置邮件正文  第二个参数是邮件发送的类型
            Integer code = (int) (Math.random() * (999999 - 100000 + 1)) + 100000;// 产生100000-999999的随机数
            httpSession.setAttribute("e-code",code.toString());
            message.setContent("尊敬的用户，您的邮箱验证码为："+code+",请您于10分钟内使用。如验证码过期需重新获取。","text/html;charset=UTF-8");
            //发送一封邮件
            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }

    /**
     * 忘记帐号手机短信返回数据
     * @param phonenumber
     * @return
     * @throws ClientException
     */

    @RequestMapping("lip")
    public @ResponseBody SendSmsResponse sendMsg(String phonenumber) throws ClientException {
        //可自助调整超时时间
        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
        System.setProperty("sun.net.client.defaultReadTimeout", "10000");

        //初始化acsClient,暂不支持region化
        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId, accessKeySecret);
        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
        IAcsClient acsClient = new DefaultAcsClient(profile);
        User entity = userService.getPhone(phonenumber);
        String loginName = entity.getLoginName();
        String password = entity.getPassword();
        //组装请求对象-具体描述见控制台-文档部分内容
        SendSmsRequest request = new SendSmsRequest();
        //必填:待发送手机号
        request.setPhoneNumbers(phonenumber);
        //必填:短信签名-可在短信控制台中找到
        request.setSignName("峰程7080");
        //必填:短信模板-可在短信控制台中找到
        request.setTemplateCode("SMS_125017678");
        //可选:模板中的变量替换JSON串,如模板内容为"亲爱的${name},您的验证码为${code}"时,此处的值为
        request.setTemplateParam("{\"name\":\""+loginName+"\",\"password\":\""+password+"\"}");
        try {
            SendSmsResponse sendSmsResponse = acsClient.getAcsResponse(request);
            return sendSmsResponse;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 忘记密码邮箱返回数据
     * @param emails
     * @return
     * @throws Exception
     */

    @RequestMapping("tip")
    public @ResponseBody List<String> sendmails(String emails) throws Exception {
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
            message.addRecipient(Message.RecipientType.TO,InternetAddress.parse(emails)[0]);
            //设置主题
            message.setSubject("忘记帐号");
            //设置邮件正文  第二个参数是邮件发送的类型
            User entity = userService.getEmail(emails);
            String loginName = entity.getLoginName();
            String password = entity.getPassword();
            message.setContent("尊敬的用户,您的帐号为"+loginName+",密码为"+password+",请您最好记下来,以免耽误您宝贵的时间","text/html;charset=UTF-8");
            //发送一封邮件
            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        return null;
    }

    @RequestMapping("hyperchannel")
    public String hyperchannel(){
        return "jsp/hyperchannel/home";
    }

    @RequestMapping("/websetting")
    public String websetting(){
        return "jsp/systemadmin/webconfigure/web";
    }

    @RequestMapping("/homepage")
    public String homepage(){
        return "jsp/systemadmin/webconfigure/index";
    }

    @RequestMapping("/wholenav")
    public String wholenav(){
        return "jsp/systemadmin/navigation/index";
    }

    @RequestMapping("/addnav")
    public String addnav(){
        return "jsp/systemadmin/navigation/addnav";
    }

    @RequestMapping("/editnav")
    public String editnav(){
        return "jsp/systemadmin/navigation/revnav";
    }

    @RequestMapping("/administrator")
    public String admin(){
        return "jsp/systemadmin/administrator/index";
    }

    @RequestMapping("/webon")
    public String webon(){
        return "jsp/systemadmin/webswitch/on";
    }

    @RequestMapping("/weboff")
    public String weboff(){
        return "jsp/systemadmin/webswitch/off";
    }

    @RequestMapping("/allnews")
    public String allnews(){
        return "jsp/contentadmin/news/allnews";
    }

    @RequestMapping("/addnews")
    public String addnews(){
        return "jsp/contentadmin/news/addnews";
    }

    @RequestMapping("/editnews")
    public String editnews(){
        return "jsp/contentadmin/news/revnews";
    }

    @RequestMapping("/draftnews")
    public String draftnews(){
        return "jsp/contentadmin/news/draft";
    }

    @RequestMapping("/allarticles")
    public String allarticles(){
        return "jsp/contentadmin/article/allarticle";
    }

    @RequestMapping("/addarticles")
    public String addarticles(){
        return "jsp/contentadmin/article/addarticle";
    }

    @RequestMapping("/editarticles")
    public String editarticles(){
        return "jsp/contentadmin/article/revarticle";
    }

    @RequestMapping("/draftarticles")
    public String draftarticles(){
        return "jsp/contentadmin/article/draft";
    }

    @RequestMapping("/alladvice")
    public String alladvice(){
        return "jsp/contentadmin/advice/allConsult";
    }

    @RequestMapping("/answer")
    public String addadvice(){
        return "jsp/contentadmin/advice/answered";
    }

    @RequestMapping("/noanswer")
    public String noanswer(){ return "jsp/contentadmin/advice/noanswered"; }

    @RequestMapping("/editadvice")
    public String editadvice(){
        return "jsp/contentadmin/advice/revsion";
    }

    @RequestMapping("/colation")
    public String colation(){
        return "jsp/contentadmin/advice/filter";
    }

    @RequestMapping("/allproduct")
    public String allproduct(){
        return "jsp/productadmin/allProduct";
    }

    @RequestMapping("/allproduct1")
    public String allproduct1(){
        return "jsp/productadmin/allProduct1";
    }

    @RequestMapping("/editproduct")
    public String editproduct(){
        return "jsp/productadmin/editProduct";
    }

    @RequestMapping("/demand")
    public String showDemand(){
        return "jsp/productadmin/product";
    }

    @RequestMapping("/updateProduct")
    public String updataProduct(){
        return "jsp/productadmin/updateProduct";
    }

    @RequestMapping("/draftproduct")
    public String draftproduct(){
        return "jsp/productadmin/draft";
    }

    @RequestMapping("/product")
    public String product(){
        return "jsp/productadmin/product";
    }

    @RequestMapping("/addproduct")
    public String addprocuct(){
        return "jsp/productadmin/addProduct";
    }

    @RequestMapping("/addclass")
    public String addclass(){
        return "jsp/productadmin/addclass";
    }

    @RequestMapping("/allorder")
    public String allorder(){
        return "jsp/Order/myOrder/order";
    }

    @RequestMapping("/paidorder")
    public String paidorder(){
        return "jsp/Order/myOrder/paidOrder";
    }

    @RequestMapping("/arrearage")
    public String arrearage(){
        return "jsp/Order/myOrder/arrearageOrder";
    }

    @RequestMapping("/refund")
    public String refund(){
        return "jsp/Order/myOrder/refundOrder";
    }

    @RequestMapping("/addorder")
    public String addorder(){
        return "jsp/Order/myOrder/addOrder";
    }

    @RequestMapping("/editOrder")
    public String editorder(){
        return "jsp/Order/myOrder/modifyOrder";
    }

    @RequestMapping("/dataArticles")
    public String dataArticles(){
        return "jsp/list/dataArticles";
    }

    @RequestMapping("allApply")
    public String allApply(){
        return "jsp/Order/myOrder/allApply";
    }

    @RequestMapping("experience")
    public String experience(){
        return "jsp/Order/myOrder/experience";
    }

    @RequestMapping("/orderestimate")
    public String orderestimate(){
        return "jsp/Order/myevaluate/orderEvaluation";
    }

    @RequestMapping("/articleEstimate")
    public String articleEstimate(){
        return "jsp/Order/myevaluate/ArticleOrderEvaluation";
    }

    @RequestMapping("/newsestimate")
    public String newsestimate(){
        return "jsp/Order/myevaluate/NewsOrderEvaluation";
    }

    @RequestMapping("/filterestimate")
    public String filterestimate(){
        return "jsp/Order/myevaluate/filterEvaluation";
    }

    @RequestMapping("/allvip")
    public String allvip(){
        return "jsp/vipAdmin/whole";
    }

    @RequestMapping("/members")
    public String menbers(){
        return "jsp/vipAdmin/Member";
    }

    @RequestMapping("/Guests")
    public String guests(){
        return "jsp/vipAdmin/Guest";
    }

    @RequestMapping("/focustopic")
    public String foucstopic(){
        return "jsp/ad/Focus/FocusTopic";
    }

    @RequestMapping("/focuscolumn")
    public String focuscolumn(){
        return "jsp/ad/Focus/FocusColumn";
    }

    @RequestMapping("/focustheme")
    public String focustheme(){
        return "jsp/ad/Focus/FocusTheme";
    }

    @RequestMapping("/allvcr")
    public String allvideo(){
        return "jsp/ad/Video/Allvideo";
    }

    @RequestMapping("/addvcr")
    public String addvideo(){
        return "jsp/ad/Video/addvideo";
    }

    @RequestMapping("/editvcr")
    public String editvideo(){
        return "jsp/ad/Video/Modifyvideo";
    }

    @RequestMapping("/draftvideo")
    public String draftvideo(){
        return "jsp/ad/Video/draftvideo";
    }

    @RequestMapping("/alltheme")
    public String alltheme(){
        return "jsp/ad/theme/allTheme";
    }

    @RequestMapping("/addtheme")
    public String addtheme(){
        return "jsp/ad/theme/addTheme";
    }

    @RequestMapping("/editTheme")
    public String editTheme(){
        return "jsp/ad/theme/modifyTheme";
    }

    @RequestMapping("/draftTheme")
    public String draftTheme(){
        return "jsp/ad/theme/DraftTheme";
    }

    @RequestMapping("/allkeywords")
    public String allkeywords(){
        return "jsp/KeyWord/all";
    }

    @RequestMapping("/addkeywords")
    public String addkeywords(){
        return "jsp/KeyWord/add";
    }

    @RequestMapping("/editkeywords")
    public String editkeword(){
        return "jsp/KeyWord/modify";
    }

    @RequestMapping("/certificate")
    public String centifiate(){
        return "jsp/footer/certification";
    }

    @RequestMapping("/copyright")
    public String copyright(){
        return "jsp/footer/copyright";
    }

    @RequestMapping("link")
    public String link(){
        return "jsp/footer/link";
    }


    @RequestMapping("AuxiliaryNav")
    public String AuxiliaryNav(){
        return "jsp/footer/AuxiliaryNav";
    }
    /**
     * 后台退出
     * @param request
     * @return
     */

    @RequestMapping("/exit")
    public @ResponseBody Map<String,Object> exit(HttpServletRequest request){
        request.getSession().removeAttribute("loginName");
        return map;
    }

    /**
     * 添加后台管理员,权限
     * @param session
     * @param addUserName
     * @param addAdmin
     * @param addPassword
     * @param addPhoneNumber
     * @param addEmail
     * @param system
     * @param product
     * @param vip
     * @param key
     * @param content
     * @param order
     * @param advertising
     * @param footer
     * @return
     */
    @RequestMapping("/addUser")
    public @ResponseBody List<String> addUser(HttpSession session, String addUserName, String addAdmin, String addPassword, String addPhoneNumber, String addEmail , String
            system, String product, String vip , String key, String content , String order, String advertising,String footer){
        List<String> arr=new ArrayList<>();
        String name=(String)session.getAttribute("loginName");
        User loginUser=userService.showUser(name,"","","","").get(0);
        if(loginUser.getPermissions().getModify().equals("false")){
            arr.add("你的权限不够");
            return arr;
        }
       List<User> list= userService.showUser(addUserName,"","","","");
        if(list!=null && list.size()>0){
            arr.add("已有该名称");
            return arr;
        }
        list=    userService.showUser(addUserName,"","","","");
       if(list==null||list.size()<1){
               User user=new User();
               user.setPassword(addPassword);
               user.setEmail(addEmail);
               user.setPhonenumber(addPhoneNumber);
               user.setLoginName(addUserName);
               user.setLevel(addAdmin);
               user.setState("正常");
               //---------------------权限

               Permissions entity = new Permissions();
               if("系统管理员".equals(addAdmin)){
                   entity.setModify("true");
               }else{
                   entity.setModify("false");
               }
               entity.setSystem(system);
               entity.setKey(key);
               entity.setOrder(order);
               entity.setVip(vip);
               entity.setProduct(product);
               entity.setContent(content);
               entity.setAdvertising(advertising);
               entity.setFooter(footer);
               user.setPermissions(entity);
               userService.addUser(user);
              arr.add("添加成功");
              return arr;
       }
        arr.add("该号码已经注册");
       return arr;
       }

    /**
     * 后台删除用户
     * @param session
     * @param userList
     * @return
     */
    @RequestMapping("/deleteUser")
       public @ResponseBody List<String> deleteUser(HttpSession session,String[] userList){
        List<String> list=new ArrayList();
           String name=(String)session.getAttribute("loginName");
           User loginUser=userService.showUser(name,"","","","").get(0);
           if(loginUser.getPermissions().getModify().equals("false")){
               list.add("你的权限不够");
               return  list;
           }
           if(userList!=null){
               return userService.deleteUser(userList);
           }
        list.add("失败");
           return list;
       }

    /**
     * 修改用户权限
     * @param session
     * @param loginName
     * @param level
     * @param phonenumber
     * @param email
     * @param system
     * @param product
     * @param vip
     * @param key
     * @param content
     * @param order
     * @param advertising
     * @param footer
     * @return
     */
    @RequestMapping("/updateUser")
    public @ResponseBody List<String> updateUser(HttpSession session,String loginName,String level, String phonenumber, String email ,String
            system, String product, String vip , String key, String content , String order, String advertising,String footer){
        List<String> list=new ArrayList();
        String name=(String)session.getAttribute("loginName");
        User loginUser=userService.showUser(name,"","","","").get(0);
        if(loginUser.getPermissions().getModify().equals("false")){
            list.add("你的权限不够");
            return  list;
        }
        if(loginName!=null &&loginName.length()>0){
            User user=userService.showUser(loginName,"","","","").get(0);
            if(level!=null && level.length()>0){
                user.setLevel(level);
            }
            if(phonenumber!=null && phonenumber.length()>0){
                user.setPhonenumber(phonenumber);
            }
            if(email!=null && email.length()>0){
                user.setEmail(email);
            }
            //------------------更改权限
            Permissions permissions=user.getPermissions();
            if(system!=null && system.length()>0){
               permissions.setSystem(system);
            }
            if(product!=null && product.length()>0){
                permissions.setProduct(product);
            }
            if(vip!=null && vip.length()>0){
                permissions.setVip(vip);
            }
            if(key!=null && key.length()>0){
                permissions.setKey(key);
            }
            if(content!=null && content.length()>0){
                permissions.setContent(content);
            }
            if(order!=null && order.length()>0){
                permissions.setOrder(order);
            }
            if(advertising!=null && advertising.length()>0){
                permissions.setAdvertising(advertising);
            }
            if(footer!=null && footer.length()>0){
                permissions.setFooter(footer);
            }
            if(level.equals("系统管理员")){
                permissions.setModify("true");
            }else{
                permissions.setModify("false");
            }
            list.add(userService.updateUser(user));
            return list;
        }
        list.add("失败");
        return list;
    }

    /**
     * 查询后台用户
     * @param loginName
     * @return
     */
    @RequestMapping("/findUser")
    public @ResponseBody List<User> findUser(String loginName){
       List<User> list=userService.showUser(loginName,"","","","");
        return list;
    }
    @RequestMapping("/articleComment")//新闻全查询
    public @ResponseBody
    CommentUtil showArticleComment(String type){
        List<FcComment> list= commentService.findComment(type,"");//新闻评价
        List<FcUser> list1=new ArrayList<>();                   //用户
        List<ArticleEntity> list2=new ArrayList<>();
        for(int i=0;i<list.size();i++){
            list1.add(service.getUser(list.get(i).getFcuserId(),""));
        }
        for(int i=0;i<list.size();i++){
            list2.add(articleService.SreachId(list.get(i).getArtcleId()).get(0));
        }
        List<ArtComment> list3 =new ArrayList<>();
        CommentUtil util=new CommentUtil();
        for(int i=0;i<list.size();i++){
            list3.add(util.getArtComment(list.get(i).getCommenter(),list1.get(i).getUserTypeId(),list.get(i).getContent(),list.get(i).getCommontType(),list.get(i).getStatus(),list2.get(i).getArtTitle()));

        }
        util.setAtrCommentsList(list3);
        return util;
    }
    @RequestMapping("changeShowArticle")
    public  @ResponseBody CommentUtil changeShowArticleComment(String artType,String userType,String commontType){

        List<FcComment> list= commentService.findComment(artType,commontType);//新闻评价
        List<FcComment> list1=new ArrayList<>();                               //筛选后的新闻评价
        List<FcUser> list2=new ArrayList<>();                                 //用户
        List<ArticleEntity> list3=new ArrayList<>();                          //新闻
        CommentUtil util=new CommentUtil();
        for(int i=0;i<list.size();i++){

            if(service.getUser(list.get(i).getFcuserId(),"").getUserTypeId().equals(userType)){
                list1.add(list.get(i));
                list2.add(service.getUser(list.get(i).getFcuserId(),""));
            }else if("".equals(userType)){
                list1.add(list.get(i));
                list2.add(service.getUser(list.get(i).getFcuserId(),""));
            }
        }
        for(int i=0;i<list.size();i++){
            list3.add(articleService.SreachId(list.get(i).getArtcleId()).get(0));
        }
        List<ArtComment> list4 =new ArrayList<>();

        for(int i=0;i<list1.size();i++){
            list4.add(util.getArtComment(list1.get(i).getCommenter(),list2.get(i).getUserTypeId(),list1.get(i).getContent(),list1.get(i).getCommontType(),list1.get(i).getStatus(),list3.get(i).getArtTitle()));
        }
        util.setAtrCommentsList(list4);
        return util;
    }
    @RequestMapping("/deleteAllComment")
    public @ResponseBody Map<String,Object> deleteAllComment(String[] listId){

     for(String id:listId){
         System.out.println(id+":id");
     }
        return map;
    }
}

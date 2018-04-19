package com.fc.base.product.productAction;

import com.fc.base.login.model.User;
import com.fc.base.product.entity.*;
import com.fc.base.product.productService.OrderService;
import com.fc.base.product.productService.ProCommentService;
import com.fc.base.product.productService.ProductService;
import com.fc.base.product.util.Amount;
import com.fc.base.product.util.OrderUtil;
import com.fc.base.product.util.ProUtil;
import com.fc.base.product.util.SreachPro;
import com.fc.base.user.entity.FcUser;
import com.fc.base.user.service.UserService;
import com.fc.util.entity.FcComment;
import com.fc.util.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.*;
  
/**
 * Created by lenovo on 2017/9/20.
 */
@Controller
@RequestMapping("/Product")
public class ProductAction {



    @Autowired
    private  ProductService service;
    @Autowired
    private ProCommentService commentService1;
    @Autowired
    private CommentService  commentService;
    @Autowired
    private OrderService orderService;
    private ProductEntity entity;
    private String result;
    private User user;
    private List<ProductEntity>  listPro;
    private SreachPro SreachPro;
    private List<String> list;
    private Map map;
    @Autowired
    private UserService userService;

    @ModelAttribute
    public void init(){
        list=new ArrayList<>();
        map=new HashMap<String,Object>();
        map.put("ok", false);
        map.put("flag", false);
    }

    @RequestMapping("/add")//产品添加
    public @ResponseBody List<String>  add(String htmlText, String proTitle, String proKey, String proAbstract, String proType ,HttpSession session,boolean or,
                                           String demand,String proService,String servicePrice,String hard_Configuration,String soft_Configuration,
                                                      String personnel,String time_Allocation, String user_range,String dataInfo ,String pro_manager,
                                                       String technical_service,String serviceGuarante,String preferential ,String timeValue,String num,String freeCode,String freeText){
        entity =new ProductEntity();
        String username = (String) session.getAttribute("loginName");
        if (username==null|| username.length()<1){
            list.add("您还未登录!");
        }else {
             entity.setUserName((String) session.getAttribute("loginName"));
         }
        if(htmlText!=null && !"".equals(htmlText)){
            entity.setHtmlText(htmlText);
        }

        if(proTitle!=null && !"".equals(proTitle)){
            entity.setProTitle(proTitle);
        }else {
            list.add("必须输入产品标题");
            return list;
        }
        if(proType!=null && !"".equals(proType)){

            entity.setProType(new ProUtil().typeChange(proType));
        }else {
            list.add("请选择发布类型");
            return list;
        }
        if(proKey!=null&& !"".equals(proKey)){
            entity.setProKey(proKey);
        }else {
            list.add("请输入关键字");
            return list;
        }
        if(proAbstract!=null && !"".equals(proAbstract)){
            entity.setProAbstract(proAbstract);
        }else{
            list.add("输入摘要");
            return list;
        }
        if(or){
            entity.setProState("正常");
        }else{
            entity.setProState("草稿");
        }
        result= service.addProduct(entity);//先添加产品表
        if(  demand!=null && demand.length()>0){ //添加产品需求定位信息
          list.add(service.saveProInfoService(proTitle,demand.trim(),proService,servicePrice,hard_Configuration,soft_Configuration,personnel,time_Allocation,user_range,dataInfo,pro_manager,technical_service,serviceGuarante, preferential ,timeValue, num,freeCode,freeText));
          return list;
        }
        list.add(result);
        return  list;
    }
    @RequestMapping("/Search")//条件搜索
    public @ResponseBody SreachPro Search(String proTitle ,String proKey){
        SreachPro= service.searchTitleProduct(proTitle,proKey);
        return SreachPro;

    }
    @RequestMapping("/SearchAll")//按类型查询
    public  @ResponseBody SreachPro SearchType(String proState, String proType,String systemId){
                  if(proType.equals("全部类型")){
                      proType="";
                  }
        if(systemId.equals("管理员")){
            systemId="";
        }

        SreachPro= service.searchStatePro(proState,proType,systemId);

        return SreachPro;
    }
    @RequestMapping("/SearchTitle")//标题查询
    public @ResponseBody List<ProductEntity> SearchTitle(String proTitle){
        listPro =new ArrayList<ProductEntity>();
        if(proTitle!=null && proTitle.length()>0){
           SreachPro=service.searchTitleProduct(proTitle,"");
        }
        if(SreachPro.getList()!=null && !SreachPro.getList().isEmpty())
        {
            listPro=SreachPro.getList();
            return listPro;
        }
        return null;
    }
    @RequestMapping("/update")//更新
    public @ResponseBody List<String> upDatePro( String newProTitle,String htmlText, String proTitle, String proKey, String proAbstract, String proType ,HttpSession session) {
        String username = (String) session.getAttribute("loginName");
        if (username == null || username.length() < 1) {
            list.add("您还未登录");
            return list;
        }
            list = service.upDataService(username, newProTitle, htmlText, proTitle, proKey, proAbstract, proType);
            return list;
    }
    @RequestMapping("/deletePro")//删除
    public @ResponseBody List<String> deletePro(String proTitle,HttpSession session){
        String username = (String) session.getAttribute("loginName");
        if (username==null|| username.length()<1){
            list.add("您还未登录!");
            return list;
        }
        list=service.deletePro( proTitle);
        return list;
    }
    @RequestMapping("/sreachId")//根据Id查询
    public @ResponseBody List<ProductEntity> upDateJump(String id){
          listPro=service.sreachId(id);
        return listPro;
    }
    @RequestMapping("/deleteAll")//删除勾选部分
    public @ResponseBody List<String> deleteAll(int[] listId,HttpSession session){
        String username = (String) session.getAttribute("loginName");
        if (username==null|| username.length()<1){
            list.add("您还未登录!");
            return list;
        }
        listPro=new ArrayList<ProductEntity>();
       for(int i :listId){
            if(service.sreachId(i+"").size()>0){
                listPro.add(service.sreachId(i+"").get(0));
            }

        }
       if(listPro.size()>0){
            for(int i=0;i<listPro.size();i++){
            list =  service.deletePro(listPro.get(i).getProTitle());
            }
        }
        return list;
    }
    @RequestMapping("/proShow")//查询全部
    public @ResponseBody List<ProductEntity> proShow(){

        listPro=service.proShowService();

        return listPro;
    }
    @RequestMapping("/browserUp")//更改浏览量
    public @ResponseBody List<ProductEntity> proBrowser(String proTitle){

        listPro= service.proBrowserService(proTitle);
        return listPro;
    }
    @RequestMapping("/setTlement")//显示总价
    public @ResponseBody List<String> setTlement(int number,int proId,String demand ,String scheme,String time){
            List<ProductInofEntity> proInfoList=service.sreachId(proId+"").get(0).getProInfoList();
            for(int i=0;i<proInfoList.size();i++){
                if(proInfoList.get(i).getDemand().equals(demand)&&proInfoList.get(i).getService().equals(scheme)&&proInfoList.get(i).getTimeValue().equals(time)){
                    String price= proInfoList.get(i).getServicePrice();
                    String preferential= proInfoList.get(i).getPreferential();
                    int priceI = Integer.parseInt(price);
                    int preferentiaI=Integer.parseInt(preferential);
                    int totalNum=priceI*number-preferentiaI;
                    list.add(totalNum+"");
                    return list;
                }
            }

        list.add("0");
        return list;
    }
    @RequestMapping("/payOrder")//保存订单
    public @ResponseBody List<String> payOrder(HttpSession session,int pro_number,String title,double pro_total,String pro_time,Double disCount,String scheme){
        String username = (String) session.getAttribute("user");
        if (username==null|| username.length()<1){
            list.add("您还未登录!");
            return list;
        }
        list= orderService.saveOrderService(username,pro_number,title,pro_total,pro_time,disCount,scheme);
        session.setAttribute("code",list.get(1));
        return list;
    }
    @RequestMapping("/comment")//提交问答内容
    public  @ResponseBody  List<String> submitComment(String content, String proTitle, HttpServletRequest request){
        String ip = request.getHeader("x-forwarded-for");
        if(ip ==null|| ip.length() ==0||"unknown".equalsIgnoreCase(ip)) {
         ip = request.getHeader("Proxy-Client-IP");
        }
          if(ip ==null|| ip.length() ==0||"unknown".equalsIgnoreCase(ip)) {
          ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if(ip ==null|| ip.length() ==0||"unknown".equalsIgnoreCase(ip)){
            ip = request.getRemoteAddr();
          }

       // list= commentService.addComment(content,proTitle,"1837718665");
        return list;
    }
    /*@RequestMapping("/oldOrder")//显示旧订单
   /* public @ResponseBody List<OrderEntity> oldOrder(HttpSession session, int pro_number, String pro_title, String pro_time, Double pro_total, double disCount){
         List<OrderEntity> oldOrder=orderService.oldOrderService("11",pro_title,pro_number,pro_time,pro_total,disCount);

        return oldOrder;
    }*/
  //----------------------------------------------------------------
    @RequestMapping("/showOrder")//显示全用户订单
    public @ResponseBody SreachPro showAllOrder(HttpSession session,String userName){
        String user =(String)session.getAttribute("user");
        String password =(String) session.getAttribute("password");
        String type=(String) session.getAttribute("type");
        FcUser fcUser=userService.loginUser(type,user,password);
        SreachPro util=orderService.showAllOrderService(fcUser.getId());

        return util;
    }
    @RequestMapping("/stateOrder")//根据状态显示订单
    public @ResponseBody SreachPro stateOrder(String userName,String state ,String transaction){
       SreachPro sreach= orderService.stateOrderSerice(userName,state,transaction);
      return sreach;
    }
    @RequestMapping("/upProInfo")//更新产品信息
    public @ResponseBody List<String> upProInfo(HttpSession session ,String newProTitle,String htmlText, String proTitle, String proKey, String proAbstract, String proType ,String oldDemand,String newDemand,String proService,String price,String hard_Configuration
            ,String soft_Configuration ,String personnel,String time_Allocation,String user_range,String dataInfo,String pro_manager,String technical_service
            ,String serviceGuarante,String preferential ,String timeValue,String num){
        String username = (String) session.getAttribute("loginName");
        if (username==null|| username.length()<1){
            list.add("您还未登录!");
            return list;
        }
        ProductEntity entity=service.searchTitle(proTitle).get(0);//查产品
        service.upDataService(username, newProTitle, htmlText, proTitle, proKey, proAbstract, proType);//保存产品
        entity=service.sreachId(entity.getId()+"").get(0);//id查产品
        String str= service.upDateInfoService(entity.getProTitle(),oldDemand,newDemand,proService,price,hard_Configuration,soft_Configuration,personnel,
                    time_Allocation,user_range,dataInfo,pro_manager,technical_service,serviceGuarante, preferential ,timeValue, num);//保存需求
        list.add(str);
        return list;
    }
    @RequestMapping("/showInfo")
    public @ResponseBody ProductInofEntity showInfo(String proTitle,String useTime,String demand,String proService ){
        List<ProductEntity> proList=  service.searchTitle(proTitle);
        if(proList.size()>0&&proList!=null){
            List<ProductInofEntity> proInfoList=proList.get(0).getProInfoList();
           if( proInfoList.size()>0&&proInfoList!=null){
               for(int i=0;i<proInfoList.size();i++){
                   String newProService=proInfoList.get(i).getService();
                   if(proInfoList.get(i).getDemand().equals(demand)&&proInfoList.get(i).getTimeValue().equals(useTime)&& newProService.equals(proService)){
                       return proInfoList.get(i);
                   }
               }
           }

            return null;
        }
        return null;
    }
    @RequestMapping("/allDemand")//返回全部需定位
    public @ResponseBody  SreachPro allDemand(String proTitle){
        List<ProductInofEntity> list = service.searchTitle(proTitle).get(0).getProInfoList();
        SreachPro util= new SreachPro();
        util.setList(service.searchTitle(proTitle));
        util.setProInfoList(list);
        return  util;
    }
    @RequestMapping("/deleteDemand")
    public @ResponseBody List<String> deleteDemand(String id){
       service.deleteDemand(id);
       return new ArrayList<>();
    }
    @RequestMapping("/addClass")
    public @ResponseBody List<String> addClass(HttpSession session,String productType,String productTitle,String productService,String productKey
            ,String productAbstract,String proNumber,String demand,String timeValue){
        entity =new ProductEntity();
        String username = (String) session.getAttribute("loginName");
        if (username==null|| username.length()<1){
            list.add("您还未登录!");
        }else {
            entity.setUserName((String) session.getAttribute("loginName"));
        }
        if(productTitle!=null && !"".equals(productTitle)){
            entity.setProTitle(productTitle);
        }else {
            list.add("必须输入产品标题");
            return list;
        }
        if(productType!=null && !"".equals(productType)){
            entity.setProType(productType);
        }else {
            list.add("请选择发布类型");
            return list;
        }
        if(productKey!=null&& !"".equals(productKey)){
            entity.setProKey(productKey);
        }else {
            list.add("请输入关键字");
            return list;
        }
        if(productAbstract!=null && !"".equals(productAbstract)){
            entity.setProAbstract(productAbstract);
        }else{
            list.add("输入摘要");
            return list;
        }
        result= service.addProduct(entity);//先添加产品表
        if("已经有相应的标题".equals(result)||"添加成功".equals(result)){ //添加产品需求定位信息
            list.add(service.saveProInfoService(productTitle,demand.trim(),productService,"","","","","","","","","","","",timeValue, proNumber,"",""));
            return list;
        }
        list.add(result);
        return  list;
    }
    @RequestMapping("showPay")
    public @ResponseBody Map<String,String> showPay(String titleId,String row,String time ,String num){

       row=row.replaceAll("√","").trim();
     List<ProductInofEntity> list=new ArrayList<>();        //存储选中项目的实体类
    String[] row1=row.split(";");                       //分割 选中项目
    for(String row2:row1){
        String[] rowArrs=row2.trim().split("-");          //分割 需求和服务
        if(rowArrs!=null&&rowArrs.length>1) {
           ProductEntity proEntity=service.sreachId(titleId).get(0);
           String demand= rowArrs[0];                               //取需求
           String service= rowArrs[1];                              //取服务
                         for(int i=0;i<proEntity.getProInfoList().size();i++){
                             ProductInofEntity entity=  proEntity.getProInfoList().get(i);
                             if(demand.equals(entity.getDemand()) && service.equals(entity.getService()) && time.equals(entity.getTimeValue())){
                                 list.add(entity);
                     }
                 }
        }
    }
    Amount amout=new Amount();//结算总金额
     map.put("price", amout.showAmount(list,num));
        return map;
    }
    @RequestMapping("proOrder")//显示选中的产品
    public @ResponseBody Map<String,Object> proOrder(HttpServletRequest request,String row,String time,String num,String titleId){//需求版本，时长，数量，产品id
        map.put("flag",true);
        row=row.replaceAll("√","").trim();
        List<ProductInofEntity> list=new ArrayList<>();
        ProductEntity proEntity=service.sreachId(titleId).get(0);  //取产品
        String[] row1=row.split(";");
        for(String row2:row1){
            String[] rowArrs=row2.trim().split("-");          //分割 需求和服务
            if(rowArrs!=null&&rowArrs.length>1) {
                String demand= rowArrs[0];                               //取需求
                String service= rowArrs[1];                              //取服务
                for(int i=0;i<proEntity.getProInfoList().size();i++){
                    ProductInofEntity entity=  proEntity.getProInfoList().get(i);
                    if(demand.equals(entity.getDemand()) && service.equals(entity.getService()) && time.equals(entity.getTimeValue())){
                        list.add(entity);
                    }
                }
            }
        }
        Amount amout=new Amount();//结算总金额
        String totalPice  =amout.finalPrice(list,num,amout.showAmount(list,num));//结算最后总价格
        OrderUtil util=new OrderUtil();
        util.setPrice(totalPice);
        util.setProTitle(proEntity.getProTitle());
        util.setInofEntityList(list);
        util.setNum(num);
        request.getSession(true).setAttribute("showOrder",util);
        return map;
    }
    @RequestMapping("findPay")//“确认订单”页 显示数据
    public @ResponseBody
    OrderUtil findPayEntity(HttpSession session){
        OrderUtil util=(OrderUtil) session.getAttribute("showOrder");
        util.setInofEntityList(util.getProInfo());//把“需求定位”放到另一个list中，显示
        return  util;
    }
    @RequestMapping("order")//显示订单
    public @ResponseBody
    OrderEntity order(HttpSession session){
       if( session.getAttribute("order")!=null){//判断是否存在订单
            //   return  (OrderEntity)session.getAttribute("order");
        }
        String loginName=(String) session.getAttribute("user");  //取用户名
        String password=(String) session.getAttribute("password");  //取用户名
        String type=(String) session.getAttribute("type");
        FcUser fcUser=userService.loginUser(type,loginName,password);
        System.out.println(fcUser.getId()+":用户id");
        OrderUtil util=(OrderUtil) session.getAttribute("showOrder"); //取选中的产品
        //生成编号
       Format format=new SimpleDateFormat("yyyyMMdd"); //时间转换
        StringBuffer code=new StringBuffer("FC");
        String date= format.format(new Date());
        code.append(date);
        if(orderService.findOrder().size()>0){
            code.append(String.format("%05d",orderService.findOrder().size()+1));
        }else{
            code.append(String.format("%05d",0));
        }
        OrderEntity  order= util.createOrder(fcUser.getId(),code.toString());
        session.setAttribute("order",order);

        orderService.saveOrder(order);
        return order;
    }
    @RequestMapping("proComment")//你问我答
    public @ResponseBody Map<String,Object>  comment(HttpSession session,String content){
        String user=(String)session.getAttribute("user");
        String password =(String) session.getAttribute("password");
        String type=(String) session.getAttribute("type");
        FcUser fcUser= userService.loginUser(type,user,password);
        if(fcUser!=null){
            map.put("ok",true);
            FcComment fcComment=new FcComment();
//            fcComment.setContent(content);
//            fcComment.setFcuserId(fcUser.getId());
//            fcComment.setCommenter(fcUser.getUserName());
            commentService.saveProComent(fcComment);
        }
        return  map;
    }
}

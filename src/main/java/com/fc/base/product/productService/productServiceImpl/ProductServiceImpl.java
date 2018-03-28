package com.fc.base.product.productService.productServiceImpl;

import com.fc.base.product.entity.GivenFreeEntity;
import com.fc.base.product.entity.ProductEntity;
import com.fc.base.product.entity.ProductInofEntity;
import com.fc.base.product.productDao.ProductDao;
import com.fc.base.product.productService.ProductService;
import com.fc.base.product.util.ProUtil;
import com.fc.base.product.util.SreachPro;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by lenovo on 2017/9/21.
 */
@Service
public class ProductServiceImpl implements ProductService{
    @Autowired
    private ProductDao productDao;
    private SreachPro pro;
    private List<ProductEntity>  list;
    private ProductEntity entity;


    @Override//类型查询
    public SreachPro searchStatePro(String proState,String proType,String systemId) {
        pro=new SreachPro();
        list=productDao.sreachState(proState,proType,systemId);
        pro.setList(list);
        return pro;
    }

    @Override//删除产品
    public List<String> deletePro(String proTitle) {
        entity= productDao.sreachTitleProductDao(proTitle).get(0);
        entity.setProState("已删除");
        return productDao.deletePro(entity);
    }

    @Override//根据Id查
    public List<ProductEntity> sreachId(String id) {

        return productDao.sreachIdDao(id);
    }

    @Override
    public List<String> upDataService(String userName,String newProTitle, String htmlText, String proTitle, String proKey, String proAbstract, String proType) {
        List<String> listS=new ArrayList<String>();
        list=productDao.sreachTitleProductDao(proTitle);
       if(list.size()>0){
           entity=list.get(0);
       }
       if(newProTitle.length()>30 && proKey.length()>15 && proAbstract.length()>100){
          listS.add("不符合规定");
          return listS;
       }
       if(newProTitle!=null && newProTitle!="" && !proTitle.equals(newProTitle)) {
           if (productDao.sreachTitleProductDao(newProTitle).size() > 0) {
               listS.add("此新产品名称已经存在");
               return listS;
           }
       };

        Date newDate=new Date();
        Format format=new SimpleDateFormat("yyyy-MM-dd  hh:mm");
        entity.setCrateDate(format.format(newDate));
        if(proTitle!=null && proTitle!=""){
            entity.setProTitle(proTitle.trim());
        }
        if(proAbstract!=null && proAbstract!=""){
            entity.setProAbstract(proAbstract.trim());
        }
        if(proKey!=null && proKey!=""){
            entity.setProKey(proKey.trim());
        }
        entity.setHtmlText(htmlText);
        entity.setUserName(userName);
        entity.setProType(proType);
        listS= productDao.upDatePro(entity,newProTitle);
        return listS;
    }

    private Date createDate;

    @Override//产品浏览量
    public List<ProductEntity> proBrowserService(String proTitle) {
        list = productDao.sreachTitleProductDao(proTitle);
       if(list.size()>0){
           list.get(0).setProBrowser(list.get(0).getProBrowser()+1);
           list=productDao.proBrowserDao(list.get(0));

        }
        return list;
    }

    @Override//关键词或者标题查找
    public SreachPro searchTitleProduct(String proTitle,String proKey) {
        pro=new SreachPro();
        list= productDao.sreachTitle(new ProUtil().alterTitle(proTitle),new ProUtil().alterTitle(proKey));
        pro.setList(list);
        return pro;

    }
    @Override//添加产品表
    public String addProduct(ProductEntity entity) {
        List<ProductEntity> list =new ArrayList<ProductEntity>();
        if(entity.getProTitle().length()>30){
            return "标题不能超过30个";
        }else if (entity.getProKey().length()>15){
            return "关键字必须小于15个";
        }else if(entity.getProAbstract().length()>100){
            return "摘要文字不能超过100";
        }
        createDate=new Date();
        Format format=new SimpleDateFormat("yyyy-MM-dd  hh:mm");
        entity.setCrateDate(format.format(createDate));
        entity.setProBrowser(0);
        list= productDao.sreachTitleProductDao(entity.getProTitle());
        if(list.size()>0){
            return "已经有相应的标题";
        }
        int price=0;
        entity.setPrice(price);

        return productDao.addProductDao(entity);
    }

    @Override//根据标题查询
    public List<ProductEntity> searchTitle(String proTitle) {

        list = productDao.sreachTitleProductDao(proTitle);

        return list;
    }

    @Override//查询全产品
    public List<ProductEntity> proShowService() {
        return productDao.proShowDao();
    }

    @Override//保存产品详细信息表
    public String saveProInfoService(String proTitle, String demand, String proService, String servicePrice, String hard_Configuration, String soft_Configuration, String personnel, String time_Allocation,
                                     String user_range, String dataInfo, String pro_manager, String technical_service, String serviceGuarante,String preferential ,String timeValue,String num,String freeCode,String freeText) {
       ProductEntity entity=productDao.sreachTitleProductDao(proTitle).get(0);//根据取产品表
       String proInfoTotal="";
       String[] proInfoArr;
       int flag;
       if (entity.getProInfoList()!=null) {
           for (int i = 0; i < entity.getProInfoList().size(); i++) { //循环出每一个需求名
               flag = 0;
               if (proInfoTotal.length() < 0) {  //第一个就添加;
                   proInfoTotal = entity.getProInfoList().get(i).getDemand() + ";";
               } else {
                   proInfoArr = proInfoTotal.split(";");
                   for (String proInfo : proInfoArr) {
                       if (proInfo.equals(entity.getProInfoList().get(i).getDemand())) {
                           flag++;
                           break;
                       }
                   }
                   if (flag == 0) {
                       flag = 0;
                       proInfoTotal = proInfoTotal + entity.getProInfoList().get(i).getDemand() + ";";
                   }
               }
           }
           if (proInfoTotal.split(";").length >= 5) {
               return "您的需求定位已经足够多了";
           }
       }
        List<ProductInofEntity> list=entity.getProInfoList();//查看是否有相应的产品的需求定位和服务是否存在
        if(list!=null){
            if(list.size()>0) {
                for (int i = 0; i < list.size(); i++) {
                    if (list.get(i).getTimeValue().equals(timeValue) && list.get(i).getService().equals(proService) && list.get(i).getDemand().equals(demand)) {//查看相应标题的需求方案是否存在
                        return "您所填写的需求方案已经存在，请选择其他的方案";
                    }
                }
            }
        }
        ProductInofEntity proInfoEntity=new ProductInofEntity();
        proInfoEntity.setDemand(demand);  //需求
        proInfoEntity.setService(proService);//服务标准
        proInfoEntity.setServicePrice(servicePrice);//服务金额
        proInfoEntity.setHard_Configuration(hard_Configuration);//硬性配置
        proInfoEntity.setSoft_Configuration(soft_Configuration);//软性配置
        proInfoEntity.setPersonnel(personnel);//人员配置
        proInfoEntity.setTime_Allocation(time_Allocation);//时间配备
        proInfoEntity.setUser_range(user_range);//适合用户
        proInfoEntity.setData(dataInfo);//数据统计
        proInfoEntity.setPro_manager(pro_manager);//经理
        proInfoEntity.setTechnical_service(technical_service);//技术服务
        proInfoEntity.setServiceGuarante(serviceGuarante);//服务保障
        proInfoEntity.setProEntity(entity);
        proInfoEntity.setPreferential(preferential);
        proInfoEntity.setTimeValue(timeValue);
        proInfoEntity.setTotalNum(num);
        //--------------------------赠送
        List<String> list1=new ArrayList<>();
        List<String> list2=new ArrayList<>();
        if(freeCode.length()>0&&freeText.length()>0){
            String[] freeTextRow=freeText.split(";");
            String[] freeCodeRow=freeCode.split(";");
            for(String freeText1:freeTextRow){
                list1.add(freeText1);
            }
            for(String freeCode1:freeCodeRow){
                list2.add(freeCode1);
            }
        }
        List<GivenFreeEntity> freeList=new ArrayList<>();
        if(list1.size()!=list2.size()){
            return "请输入正确的赠送信息";
        }
        String str= productDao.saveProInfoDao(proInfoEntity);
        productDao.findIdProInof(str);
        List<GivenFreeEntity> list3=new ArrayList<>();
            for(int i=0;i<list1.size();i++){
              if(list1.get(i).length()>0&&list2.get(i).length()>0) {
                GivenFreeEntity freeEntity = new GivenFreeEntity();
                freeEntity.setType(list1.get(i));
                freeEntity.setContent(list2.get(i));
               freeEntity.setInfoEntity(productDao.findIdProInof(str).get(0));
                productDao.saveFree(freeEntity);
              }
            }
        return "添加成功";
    }

    @Override//更新产品信息
    public String upDateInfoService(String title, String demand, String newDemad, String proService, String price, String hard_Configuration,
                                    String soft_Configuration, String personnel, String time_Allocation, String user_range, String dataInfo, String pro_manager, String technical_service,
                                    String serviceGuarante,String preferential ,String timeValue,String num) {
        list=productDao.sreachTitleProductDao(title);//根据产品查询相应的表
        if(list!=null &&list.size()>0){ //判断是否存在
            if(list.get(0).getProInfoList().size()>0&&list.get(0).getProInfoList()!=null){//查询是否拥有相应的需求
                List<ProductInofEntity> proInfo=new ArrayList<ProductInofEntity>();
                for(int i =0 ;i<list.get(0).getProInfoList().size();i++){
                     String demandP= list.get(0).getProInfoList().get(i).getDemand();
                     String serviceP=list.get(0).getProInfoList().get(i).getService();
                     String timeValueP=list.get(0).getProInfoList().get(i).getTimeValue();
                    if(demandP.equals(demandP)&&serviceP.equals(proService)&&timeValueP.equals(timeValue)){  //把对应的需求取出
                        proInfo.add(list.get(0).getProInfoList().get(i));
                    }
                }
                if( proInfo.size()>0&&proInfo!=null){
                    if(newDemad!=null &&newDemad.length()>0){
                        proInfo.get(0).setDemand(newDemad);
                    }
                    if(price!=null &&price.length()>0){
                        proInfo.get(0).setServicePrice(price);
                    }
                    if(hard_Configuration!=null &&hard_Configuration.length()>0){
                        proInfo.get(0).setHard_Configuration(hard_Configuration);
                    }
                    if(soft_Configuration!=null &&soft_Configuration.length()>0){
                        proInfo.get(0).setSoft_Configuration(soft_Configuration);
                    }
                    if(personnel!=null &&personnel.length()>0){
                        proInfo.get(0).setPersonnel(personnel);
                    }
                    if(time_Allocation!=null &&time_Allocation.length()>0){
                        proInfo.get(0).setTime_Allocation(time_Allocation);
                    }
                    if(user_range!=null &&user_range.length()>0){
                        proInfo.get(0).setUser_range(user_range);
                    }
                    if(dataInfo!=null &&dataInfo.length()>0){
                        proInfo.get(0).setData(dataInfo);
                    }
                    if(pro_manager!=null &&pro_manager.length()>0){
                        proInfo.get(0).setPro_manager(pro_manager);
                    }
                    if(technical_service!=null &&technical_service.length()>0){
                        proInfo.get(0).setTechnical_service(technical_service);
                    }
                    if(serviceGuarante!=null &&serviceGuarante.length()>0){
                        proInfo.get(0).setServiceGuarante(serviceGuarante);
                    }
                    if(preferential!=null &&preferential.length()>0){
                        proInfo.get(0).setPreferential(preferential);
                    }
                    if(num!=null &&num.length()>0){
                        proInfo.get(0).setTotalNum(num);
                    }
                   return productDao.upDateInfoDao(proInfo.get(0));
                }
           }
        }
        return "错误，请重新输入";
    }

    @Override
    public void deleteDemand(String id) {
        productDao.deleteDemand(id);
    }
}

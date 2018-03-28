package com.fc.base.product.productService;

import com.fc.base.product.entity.ProductEntity;
import com.fc.base.product.util.SreachPro;

import java.util.List;

/**
 * Created by lenovo on 2017/9/21.
 */
public interface ProductService {
    public String addProduct(ProductEntity entity);
    public SreachPro searchTitleProduct(String proTitle, String proKey);
    public SreachPro searchStatePro(String proState, String proType, String systemId);
    public List<ProductEntity> searchTitle(String proTitle);
    public List<String> upDataService(String newProTitle, String htmlText, String proTitle, String proKey, String proAbstract, String proType, String userName);
    public List<String> deletePro(String proTitle);
    public List<ProductEntity> sreachId(String id);
    public List<ProductEntity> proShowService();
    public List<ProductEntity> proBrowserService(String proTitle);
    public String saveProInfoService(String proTitle, String demand, String proService, String servicePrice, String hard_Configuration, String soft_Configuration,
                                     String personnel, String time_Allocation, String user_range, String dataInfo, String pro_manager,
                                     String technical_service, String serviceGuarante, String preferential, String timeValue, String num, String freeCode, String freeText);
    public String upDateInfoService(String title, String demand, String newDemad, String proService, String price, String hard_Configuration,
                                    String soft_Configuration, String personnel, String time_Allocation, String user_range, String dataInfo, String pro_manager, String technical_service,
                                    String serviceGuarante, String preferential, String timeValue, String num);
    public void deleteDemand(String id);
}

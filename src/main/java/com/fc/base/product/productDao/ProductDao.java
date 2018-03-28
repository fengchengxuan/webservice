package com.fc.base.product.productDao;

import com.fc.base.product.entity.GivenFreeEntity;
import com.fc.base.product.entity.ProductEntity;
import com.fc.base.product.entity.ProductInofEntity;

import java.util.List;

/**
 * Created by lenovo on 2017/9/21.
 */
public interface ProductDao {
    //添加
    public String addProductDao(ProductEntity entity);
    //title查询
    public List<ProductEntity> sreachTitleProductDao(String proTitle);
    //title模糊查询
    public List<ProductEntity> sreachTitle(String proTitle, String proKey);
    //type查询
    public List<ProductEntity> sreachState(String proState, String proType, String systemId);
    //更新
    public List<String> upDatePro(ProductEntity entity, String newProTitle);
    //删除(修改表的状态，假删)
    public List<String> deletePro(ProductEntity entity);
    //根据id查数据
    public List<ProductEntity> sreachIdDao(String id);
    //查询全部
    public  List<ProductEntity> proShowDao();
    //更新浏览量
    public List<ProductEntity>  proBrowserDao(ProductEntity entity);
    //保存产品详细信息
    public String saveProInfoDao(ProductInofEntity entity);
    //查询需求定位下的服务模块
    public List<ProductInofEntity> sreachProInfoDao(String demand, String proService);
     //更新需求信息
    public String upDateInfoDao(ProductInofEntity entity);
    //删除需求
    public void deleteDemand(String id);
    void saveFree(GivenFreeEntity entity);
    List<ProductInofEntity> findIdProInof(String id);
}

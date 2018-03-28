package com.fc.base.product.util;

import com.fc.base.product.entity.ProductInofEntity;

import java.math.BigDecimal;
import java.util.List;

public class Amount {
   public  String showAmount(List<ProductInofEntity> list,String num){  //总价
        double price=00.00; //初始化金额
       for(int i=0;i<list.size();i++){//信息金额
           double infoPrice =Double.parseDouble(list.get(i).getServicePrice()); //把所有需求的金额都加上
           BigDecimal b =new BigDecimal(infoPrice);
           double f1 = b.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();
           price=price +f1;
       }
        price=price*Integer.parseInt(num);
        return price+"";
    }
    public  String finalPrice(List<ProductInofEntity> list,String num,String totalPice){  //减掉全部的优惠价格
        double totalPicel=Double.parseDouble(totalPice);
        BigDecimal b =new BigDecimal(totalPicel);
        double f1 = b.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();
        Double preferential=0.00;
        for(int i=0;i<list.size();i++){
            if(list.get(i).getPreferential()!=null&&!"".equals(list.get(i).getPreferential())) {
                double infoPrice = Double.parseDouble(list.get(i).getPreferential()); //信息金额
                double f2 = new BigDecimal(infoPrice).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();
                preferential = preferential + f2;
            }
        }
        f1=f1-(preferential*Integer.parseInt(num));
        return f1+"";
    }

}

package com.fc.util;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */
  
public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2017091508750265";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCS3AXy2Cd2LWTXCBh9kzsfrIXFI6x0IiRgs3wPppN7rRVjjX+qwdVqDxCVoXOK+O0kSLypnPZP8CLCTgqxZ7c4kr6Tyyh8k8FnxSg99QFLekTK2+xAMOCzDLihrivBpM6WZebA/MVw9gOpywQneSKBmdjoAha+FCCCajW/tS6SOeAs5Ao2L2Q1L+0054DmdfyaaillbX4bh7u9UPhXK/O8kTtCa1ZuxunDcXxO4ZJk/+rGuibZ5MsYWVPpl79BXw9EpFvfrc7h9WMd0UqydwPI7rND8CbgL87RNmOloUWzhmP4dnhZtF/XagkJqwla7NH95egMpl80Tb0td4uWo1N9AgMBAAECggEATF3LXhdWldZPDJ4yFgKciQDuYrAFOjKS1hIfHghRwssjRyxKSeIXdto0loppCcgdkHOeX1i2oKTPfliUqOG03d846KOI/xbaSHq2TVl8/eGrqg0oUczY22JvE+v85uorXvvIPWxzwyS6jO170IbmEZyNtT940ginSwmtv22YtQJGbYRrLZLbAzVWooQ28qjWT+pjyKa+j+DgGPQQ6yDEpHNAez77QFs4zbOMV1eHNCIzlaFQnzR7+WoxWfETb4N7LkU9kVhq4JtARQv4EJrW4EOQAUv2AtzfX5PijyJzs30Umexl14R7pSPDClrOkt0Bx8sZU4/BuaQc/SBMv/xOhQKBgQDZ+jQRazIsxbjywvO6ixnYznSuQwcGC2vTz3i1bzmFB50QBSpFVcqScT5t7oZ8k7Vr3oUb04UH/YGv57rFW4dkhO71vrbzODQwqOkr2RMAPFgNgNMuy/T5gKRK3n6dm6bqsAaPN3hrIT8gpupuUydWbyM9A/3G7WTbH56Q/988AwKBgQCsegtsuZswSJZ2S71zzxVPTs3uy7F7V0n99JbbDy1Co9t8MSBbIgbL6i3AnQnTBCivwEY+WaadEpPzwNJKlE7r7pZp0A+EpPf1z3YpzBw52jLfJaXTvMyMZnk/B1MxTp8pyKx9JmS1AWltrVMgeanRm89B2pwR+5S8op6mQe7afwKBgQCixoETcOVrIcvXHVY8u5t1l9byOwOHtAe1iH0vn/toKCNVz0WduU8oxIBGP5UWeodEIktsWCxDpz+tSHLk5lDY85wuz1h3kEUJAVn+cIAL8QQgMU+C5rPtje8iKbyLnaysHP8I+/dkqNMnYv41nMsHdL7v1Ycxgh2KtLYIucrOWQKBgGS+8Tdz/zMn40N8IFCqMI9fv6hxsN0T8rN1kDyq08wuPEGBzJ2O9Ztc0ZbF4/wvXLi0PhOjeFAdjvB9vBg2IxdrCM8L6lSXrAMYSLRHdmFQlBCGRCO3D2AfZ0kqtSyC+TOF9UMxDvgvt+6JpJm+lzRJp7mWwT07z/iToMoKj0NvAoGBAI3KoEyxAsotT+XnJqeqyVMr5dIp5B1Ly5SnrRsjQBexc9AGqeYvk5hVo6GlK7hRbi6PLRBXsdoX2PRa4svnxKcZyo7IBFqLDBg4Xtq1L6lt2wSkR3ZS4jufS3nAy3IOAkLxgYyNzDCYjlWQKWf/Gr/FWsX/+ewgBa7UXgjZzKfp";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyxGKEXtkXW4jX5pSv2QqXop3tgFXbAbITPYT0wOuQjGO1M19gYaOGQQEPcf9IXzyapbX6dgum69hwMB/ZFMPARhf0+gSexj3oZ5YcKpdcPKYgA2v1+yNzTT4iWcc2A7BD0TjkrE3GKnbe+QmJeCmgwteMiUwIw6B8V2h+gBXkdEk8J9U+Eu5dIbFvdXp+35SbDUN1TinUbnjutFiEVQ4xcZN4yuCBNSK3UcuCyGbE11oJZwORKX39ReCTAzbEC/rSy0SfpLVS2s/Okekvzidp8eSO8+zG4TRVFrIZuRCLBtlRUeMOzwJPXM6gzrCTnCxTkq+pTR4XENCE4VwkokKeQIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://www.fengcheng7080.com/foryou";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://www.fengcheng7080.com";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipay.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "F:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}


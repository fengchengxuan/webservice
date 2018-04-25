package com.fc.util;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fc.base.user.entity.FcUser;
import com.fc.base.user.service.UserService;

@WebServlet("/uploadProfile")  
public class UploadServlet extends HttpServlet {  
    private static final long serialVersionUID = 1L;  
  
    @Autowired
    private UserService userService;
    
    protected void service(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {  
        // 判断上传表单是否为multipart/form-data类型  
    	Map<String, Object> map = new HashMap<String, Object>();
        HttpSession session = request.getSession();  
        FcUser fcUser = (FcUser) session.getAttribute("fcUser"); // 在登录时将 User 对象放入了 会话  
                                 // 中  
      
//        if (ServletFileUpload.isMultipartContent(request)) {  
      
            try {  
            // 1. 创建DiskFileItemFactory对象，设置缓冲区大小和临时文件目录  
            DiskFileItemFactory factory = new DiskFileItemFactory();  
            // System.out.println(System.getProperty("java.io.tmpdir"));//默认临时文件夹  
      
            // 2. 创建ServletFileUpload对象，并设置上传文件的大小限制。  
            ServletFileUpload sfu = new ServletFileUpload(factory);  
            sfu.setSizeMax(1024 * 1024);// 以byte为单位 不能超过1M
                             // 1kb 1024kb=1M 1024M = 1G  
            sfu.setHeaderEncoding("utf-8");  
      
            // 3.  
            // 调用ServletFileUpload.parseRequest方法解析request对象，得到一个保存了所有上传内容的List对象。  
            @SuppressWarnings("unchecked")  
            List<FileItem> fileItemList = sfu.parseRequest(request);  
            Iterator<FileItem> fileItems = fileItemList.iterator();  
      
            // 4. 遍历list，每迭代一个FileItem对象，调用其isFormField方法判断是否是上传文件  
            while (fileItems.hasNext()) {  
                FileItem fileItem = fileItems.next();  
                // 普通表单元素  
                if (fileItem.isFormField()) {  
                String name = fileItem.getFieldName();// name属性值  
                String value = fileItem.getString("utf-8");// name对应的value值  
      
                System.out.println(name + " = " + value);  
                }  
                // <input type="file">的上传文件的元素  
                else {  
                String fileName = fileItem.getName();// 文件名称  
                System.out.println("原文件名：" + fileName);// Koala.jpg  
      
                String suffix = fileName.substring(fileName.lastIndexOf('.'));  
                System.out.println("扩展名：" + suffix);// .jpg  
      
                // 新文件名（唯一）  
                String newFileName = new Date().getTime() + suffix;  
                System.out.println("新文件名：" + newFileName);// image\1478509873038.jpg  
      
                // 5. 调用FileItem的write()方法，写入文件  
                File file = new File("D:\\workspace\\0414\\webservice\\src\\main\\webapp/upload/" + fileName);  
	                System.out.println(file.getAbsolutePath());  
	                fileItem.write(file);  
	      
	                // 6. 调用FileItem的delete()方法，删除临时文件  
	                fileItem.delete();  
	      
	                /* 
	                 * 存储到数据库时注意 1.保存源文件名称 Koala.jpg 2.保存相对路径 
	                 * image/1478509873038.jpg 
	                 *  
	                 */  
	                if (fcUser != null) {
	                	fcUser.setProfilePhoto(fileName);
	                	session.setAttribute("fcUser", fcUser);
	                	System.out.println(request.getContextPath() + "/updateProfile");
	                	response.sendRedirect(request.getContextPath() + "/updateProfile");  
	                } else {
	                    response.sendRedirect(request.getContextPath() + "/login.jsp");  
	                }
	            }  
            }  
      
            } catch (FileUploadException e) {  
            session.setAttribute("err_msg", "file_over_size");
            response.sendRedirect(request.getContextPath() + "/updateProfile");  
            e.printStackTrace();  
            } catch (Exception e) {  
            e.printStackTrace();  
            }  
    }  
}  
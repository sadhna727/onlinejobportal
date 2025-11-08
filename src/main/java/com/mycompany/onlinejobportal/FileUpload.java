/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.onlinejobportal;


import java.util.*;
import java.io.*;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Himanshu Kashyap
 */
public class FileUpload {

    public Map<String, String> formdata = new HashMap<String, String>();
    public HttpServletRequest request;

    public FileUpload(HttpServletRequest _request) {
        this.request = _request;
    }

    public boolean doUpload(String uploadPath) {

        boolean status = false;

        boolean isfile = ServletFileUpload.isMultipartContent(request);

        if (isfile) {

            DiskFileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);

            try {
                List<FileItem> files = upload.parseRequest(request);

                for (FileItem item : files) {

                    if (!item.isFormField()) {

                        String filename = new File(item.getName()).getName();
                        String path = uploadPath + filename;
                        item.write(new File(path));

                        formdata.put(item.getFieldName(), item.getName());

                    } else {
                        formdata.put(item.getFieldName(), item.getString());
                    }

                    status = true;
                }
            } catch (Exception ex) {
                
            }

        }

        return status;
    }

    public Map<String, String> getFormData() {

        boolean isfile = ServletFileUpload.isMultipartContent(request);
        if (isfile) {

            DiskFileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);

            try {
                List<FileItem> files = upload.parseRequest(request);
                for (FileItem item : files) {
                    if (!item.isFormField()) {
                        formdata.put(item.getFieldName(), item.getName());
                    } else {
                        formdata.put(item.getFieldName(), item.getString());
                    }

                }
            } catch (Exception ex) {

            }

        }

        return formdata;

    }

}
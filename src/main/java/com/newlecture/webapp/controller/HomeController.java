package com.newlecture.webapp.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/*")
public class HomeController {

	@RequestMapping("index")
	public String index() {

		return "home.index";
	}

	@RequestMapping("upload")
	@ResponseBody
	public String upload(String title, MultipartFile file, HttpServletRequest request) throws IOException {

		System.out.println(title);
		System.out.println(file.getOriginalFilename());

		ServletContext ctx = request.getServletContext();
		String path = ctx.getRealPath("/resource/upload");

		System.out.println("path : " + path);

		File f = new File(path); 

		if (!f.exists()) {
			if (!f.mkdirs())
				System.out.println("디렉토리를 생성할 수가 없습니다.");
		}

		path += File.separator + file.getOriginalFilename();
		File f2 = new File(path); 
		
		System.out.println("path2 : " + path);
		
		InputStream fis = file.getInputStream(); 
		OutputStream fos = new FileOutputStream(f2); 

		byte[] buf = new byte[1024];

		int size = 0;
		
		while ((size = fis.read(buf)) > 0)
			fos.write(buf, 0, size);

		fos.close();
		fis.close();

		return "home.upload";
	}

}
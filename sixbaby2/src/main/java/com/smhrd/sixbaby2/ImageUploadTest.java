package com.smhrd.sixbaby2;

import java.io.File;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.smhrd.mapper.Mapper;

@Controller
public class ImageUploadTest {
	
	
	@Autowired
	Mapper mapper;
	
	@Resource(name="uploadPath")
	String uploadPath;
	
	
	@RequestMapping("/imgTest.do")
	public void imgTest( ) {
	}
	
	@RequestMapping(value="/imgTest.do", method = RequestMethod.POST)
	public ModelAndView imgTest(MultipartFile file, ModelAndView mav) throws Exception{
		System.out.println("파일이름" + file.getOriginalFilename());
		System.out.println("파일크기" + file.getSize());
		System.out.println("컨텐트 타입" + file.getContentType());
		
		String savedName = file.getOriginalFilename();
		
		savedName = randomFileName(savedName, file.getBytes());
		
		mav.setViewName("/imgResult");
		mav.addObject("savedName", savedName);
		
		return mav;
	}
	
	@RequestMapping("/imgResult.do")
	public String imgResult() {
		return "imgResult";
	}
	
	public String randomFileName(String originalName, byte[] fileData) throws Exception {
		UUID uuid = UUID.randomUUID();
		String savedName = uuid.toString() + "_" + originalName;
		File target = new File(uploadPath, savedName);
		FileCopyUtils.copy(fileData, target);
		
		return savedName;
	}

}

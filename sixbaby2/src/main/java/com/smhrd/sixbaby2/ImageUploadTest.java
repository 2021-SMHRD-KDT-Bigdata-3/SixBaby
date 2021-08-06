package com.smhrd.sixbaby2;


import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;

import org.apache.commons.io.IOUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class ImageUploadTest {
	
	
	@Resource(name="uploadPath")
	String uploadPath;
	
	@RequestMapping(value = "/imgTest.do", method = RequestMethod.GET)
	public void imgTest( ) {
	}
	
	@RequestMapping(value="/imgTest.do", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public ModelAndView imgTest(MultipartFile file, ModelAndView mav) throws Exception{
		System.out.println("파일이름" + file.getOriginalFilename());
		System.out.println("파일크기" + file.getSize());
		System.out.println("컨텐트 타입" + file.getContentType());
		
		String savedName = file.getOriginalFilename();
		
		savedName = uploadFile(savedName, file.getBytes());
		mav.setViewName("imgResult");
		mav.addObject("savedName", savedName);
		
		return mav;
		
	}
	
	private String uploadFile(String originalName, byte[] fileData) throws Exception{
		UUID uuid = UUID.randomUUID();
		
		String savedName = uuid.toString() + "_" + originalName;
		
		File target = new File(uploadPath, savedName);
		FileCopyUtils.copy(fileData, target);
		
		return savedName;
	}
	
	@RequestMapping("/imgResult.do")
	public String imgResult() {
		return "imgResult";
	}
	
	
	
	@RequestMapping(value = "/imgTestAjax.do", method = RequestMethod.GET)
	public void imgTestAjax( ) {
	}
	
	@RequestMapping(value="/imgTestAjax.do", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	@ResponseBody
	public ResponseEntity<String> imgTestAjax(MultipartFile file) throws Exception{
		System.out.println("파일이름" + file.getOriginalFilename());
		System.out.println("파일크기" + file.getSize());
		System.out.println("컨텐트 타입" + file.getContentType());
		System.out.println("파일경로 : " + uploadPath + file.getOriginalFilename());
		
		return new ResponseEntity<String>(UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes()), HttpStatus.OK);
	}
	
	@RequestMapping("/imgDisplay.do")
	@ResponseBody
	public ResponseEntity<byte[]> imgDisplay(@RequestParam(value = "fileName")String fileName) throws Exception{
		System.out.println("들어는 오니" + fileName);
		InputStream in = null;
		ResponseEntity<byte[]> entity = null;
		
		try {
			String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);
			MediaType mType = MediaUtils.getMediaType(formatName);
			HttpHeaders headers = new HttpHeaders();
			in = new FileInputStream(uploadPath + fileName);
			
			if(mType != null) {
				headers.setContentType(mType);
			} else {
				fileName = fileName.substring(fileName.indexOf("_") + 1);
				headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
				headers.add("Content-Disposition", "attachment; filename=/"+new String(fileName.getBytes("utf-8"), "ios-8859-1")+"/");
			}
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.OK);
		} catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		} finally {
			in.close();
		}
		return entity;
	}
	
	@RequestMapping(value = "/imgDelete.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<String> imgDelete(String fileName){
		System.out.println("체킹체킹 :" + fileName);
//		String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);
//		MediaType mType = MediaUtils.getMediaType(formatName);
//		
//		if(mType != null) {
//			String front = fileName.substring(0, 12);
//			String end = fileName.substring(14);
//			
//			new File(uploadPath + (front + end)).delete();
//		}
//		
//		new File(uploadPath + fileName).delete();
		
		return new ResponseEntity<String>("deleted", HttpStatus.OK);
	}
	


}


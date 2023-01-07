package com.learntime.app.admin.controller;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.learntime.app.common.file.FileUploader;
import com.learntime.app.skin.service.SkinService;
import com.learntime.app.skin.vo.SearchVo;
import com.learntime.app.skin.vo.SkinVo;

@RequestMapping("admin")
@Controller
public class AdminSkinController {
	
	@Autowired
	@Qualifier("skinServiceImpl")
	private SkinService skinService;

	//관리자 스킨샵 리스트
	@GetMapping("/skinshop/list")
	public String skinList(Model model, SearchVo vo) {
		
	List<SkinVo> list=skinService.skinList(vo);
	model.addAttribute("list",list);
	return "/admin/skinshop/list";
	}
	
	//관리자 스킨샵 상세조회(수정) 화면
	@GetMapping("/skinshop/edit")
	public String skinEdit(Model model, String no) {
		SkinVo vo=skinService.skinEdit(no);
		model.addAttribute("vo",vo);
		return "/admin/skinshop/edit";
	}
	
	//관리자 스킨샵 상세조회(수정) 서버
	@PostMapping("/skinshop/edit")
	public String skinEdit(SkinVo vo,HttpServletRequest request) {
		if (!vo.isEmpty()) {
	    	  String rename=FileUploader.uploadSkin(request, vo.getImgPath());
	    	  vo.setImgName(rename);
	    	  
	      }

         try {
        	 
        	 String path = request.getSession().getServletContext().getRealPath("/resources/css/");
        	 File file = new File(path+"skinshop.css");
        	 if (!file.exists()) {
        		 file.createNewFile();
        	 }	 
        	 
        	 FileWriter fw = new FileWriter(file,true);
             BufferedWriter writer = new BufferedWriter(fw);
			
             writer.write(vo.getClassStyle());
             writer.close();
             
		} catch (IOException e) {
			
			e.printStackTrace();
		}
         
		
		int result=skinService.skinEditUpdate(vo);
	
		if(result==0) {
			return"common/errorPage";
		}
		
		return "redirect:/admin/skinshop/list";
	}
	
	//관리자 스킨샵 작성하기
	@GetMapping("/skinshop/write")
	public String skinWrite() {
		return "/admin/skinshop/write";
	}
	
	//관리자 스킨샵 작성하기
	@PostMapping("/skinshop/write")
	public String skinWrite(SkinVo vo,HttpServletRequest request) {

		if (!vo.isEmpty()) {
	    	  String rename=FileUploader.uploadSkin(request, vo.getImgPath());
	    	  vo.setImgName(rename);
	    	  
	      }
		
		try {
        	 
        	 String path = request.getSession().getServletContext().getRealPath("/resources/css/");
        	 File file = new File(path+"skinshop.css");
        	 if (!file.exists()) {
        		 file.createNewFile();
        	 }	 
        	 
        	 FileWriter fw = new FileWriter(file,true);
             BufferedWriter writer = new BufferedWriter(fw);
			
             writer.write(vo.getClassStyle());
             writer.close();
             
		} catch (IOException e) {
			
			e.printStackTrace();
		}
         
		
		int result=skinService.skinWrite(vo);
	
		if(result==0) {
			return"common/errorPage";
		}
		
		return "redirect:/admin/skinshop/list";
	}
	
	//관리자 스킨 활성화
	@PostMapping("/skinshop/able")
	public String skinAble(String no,HttpServletRequest request,HttpSession session) {

		int result=skinService.skinAble(no);
	
		
		String referer = request.getHeader("Referer");
		request.getSession().setAttribute("redirectURI", referer);
		return "redirect:" + referer;
	}
	
	//관리자 스킨 활성화
		@PostMapping("/skinshop/delete")
		public String skinDelete(String no,HttpServletRequest request,HttpSession session) {

			int result=skinService.skinDelete(no);
		
			
			String referer = request.getHeader("Referer");
			request.getSession().setAttribute("redirectURI", referer);
			return "redirect:" + referer;
		}
	
}

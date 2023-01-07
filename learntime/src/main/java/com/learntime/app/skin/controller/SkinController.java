package com.learntime.app.skin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.skin.service.SkinService;
import com.learntime.app.skin.vo.SearchVo;
import com.learntime.app.skin.vo.SkinVo;

@Controller
public class SkinController {
	
	
	@Autowired
	@Qualifier("skinServiceImpl")
	private SkinService skinService;
	
	@GetMapping("/skinshop")
	public String List(Model model, SearchVo vo) {
		
		List<SkinVo> list=skinService.skinList(vo);
		model.addAttribute("list",list);
		return "/skinshop/list";
	}
	
	
	
	
	
	@ResponseBody
	@GetMapping(value ="/skinModal",produces = "application/text;charset=utf8")
	public String skinModal(HttpSession session,String no) {
		System.out.println(no);
		
		SkinVo skinModal=skinService.skinModal(no);
		
		Gson gson = new Gson();
        HashMap<String, Object> map = new HashMap<String, Object>();

        map.put("skinModal", skinModal);

        String jsonString = gson.toJson(map);
        
        return jsonString;
		
		
		

	}
	
	@PostMapping("/skinshop/buy")
	public String skinBuy(String completeNo,String tokenPrice,HttpSession session) {
		MemberVo loginMember=(MemberVo) session.getAttribute("loginMember");
		
		Map<String, String>map=new HashMap<String, String>();
		map.put("ITEM_NO", completeNo);
		map.put("M_NO", loginMember.getNo());
		map.put("tokenPrice", tokenPrice);
		
		int result = skinService.skinBuy(map);
		
		if(result==0) {
			return "common/errorPage";
		}
		
		return "redirect:/skinshop";
		
	}


}

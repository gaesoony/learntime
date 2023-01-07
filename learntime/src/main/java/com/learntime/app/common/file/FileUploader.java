package com.learntime.app.common.file;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.learntime.app.admin.vo.BannerVo;
import com.learntime.app.admin.vo.PopupVo;
import com.learntime.app.badge.vo.BadgeVo;
import com.learntime.app.member.vo.MemberGradeVo;
import com.learntime.app.member.vo.MemberVo;
import com.learntime.app.mystudy.vo.ProfileVo;

public class FileUploader {
	
	//회원 프로필 업뎃
	public static String uploadMemberProfile(HttpServletRequest req, MemberVo vo) {
		String path = req.getSession().getServletContext().getRealPath("/resources/upload/profile/");
        String originName = vo.getImgPath().getOriginalFilename();
        String ext = originName.substring(originName.lastIndexOf("."), originName.length());
        // xxxxxxx.png (뒤에서부터 3자리. , 파일명 길이)

        String changeName = "profile_" + System.nanoTime() + ext; // profile_현재시간
        File target = new File(path + changeName);
        
        String imgName="/resources/upload/profile/"+changeName;
        
        try {
          	vo.getImgPath().transferTo(target);

         } catch (Exception e) {
            e.printStackTrace();
         }
          
        return imgName;
	}
	
	
	//그룹 프로필 업뎃
    public static String uploadGroupProfile(HttpServletRequest req, ProfileVo vo) {
        String path = req.getSession().getServletContext().getRealPath("/resources/upload/mystudy/profile/");
        String originName = vo.getProfile().get(0).getOriginalFilename();

        String ext = originName.substring(originName.lastIndexOf("."), originName.length());

        String changeName = "profile" + System.nanoTime() + ext; //profile현재시간

        File target = new File(path + changeName);

        try {
            vo.getProfile().get(0).transferTo(target);
        } catch (Exception e) {
            e.printStackTrace();
        } 

        return changeName;
    }
    
    //관리자 프로필 업뎃
    public static String uploadManagerProfile(HttpServletRequest req, ProfileVo vo) {
        String path = req.getSession().getServletContext().getRealPath("/resources/upload/manager/profile/");
        String originName = vo.getProfile().get(0).getOriginalFilename();

        String ext = originName.substring(originName.lastIndexOf("."), originName.length());

        String changeName = "profile" + System.nanoTime() + ext; //profile현재시간

        File target = new File(path + changeName);

        try {
            vo.getProfile().get(0).transferTo(target);
        } catch (Exception e) {
            e.printStackTrace();
        } 

        return changeName;
    }
    
	//배너 업뎃
    public static String uploadBanner(HttpServletRequest req, BannerVo vo) {
        String path = req.getSession().getServletContext().getRealPath("/resources/upload/banner/");
        String originName = vo.getBanner().get(0).getOriginalFilename();

        String ext = originName.substring(originName.lastIndexOf("."), originName.length());

        String changeName = "banner" + System.nanoTime() + ext; //profile현재시간

        File target = new File(path + changeName);

        try {
            vo.getBanner().get(0).transferTo(target);
        } catch (Exception e) {
            e.printStackTrace();
        } 

        return changeName;
    }
    
	//팝업 업뎃
    public static String uploadPopup(HttpServletRequest req, PopupVo vo) {
        String path = req.getSession().getServletContext().getRealPath("/resources/upload/popup/");
        String originName = vo.getPopup().get(0).getOriginalFilename();

        String ext = originName.substring(originName.lastIndexOf("."), originName.length());

        String changeName = "popup" + System.nanoTime() + ext; //profile현재시간

        File target = new File(path + changeName);

        try {
            vo.getPopup().get(0).transferTo(target);
        } catch (Exception e) {
            e.printStackTrace();
        } 
        return changeName;
    }
    
    
  //뱃지 이미지 업뎃
  	public static String uploadBadge(HttpServletRequest req, BadgeVo vo) {
  		String path = req.getSession().getServletContext().getRealPath("/resources/upload/badge/");
          String originName = vo.getImgPath().getOriginalFilename();
          String ext = originName.substring(originName.lastIndexOf("."), originName.length());
          // xxxxxxx.png (뒤에서부터 3자리. , 파일명 길이)

          String changeName = "badge" + System.nanoTime() + ext; // profile_현재시간
          File target = new File(path + changeName);
          
          String imgName="/resources/upload/badge/"+changeName;
          
          try {
            	vo.getImgPath().transferTo(target);

           } catch (Exception e) {
              e.printStackTrace();
           }
            
          return imgName;
  	}
  	
  //멤버 등급 수정
    public static String uploadMemberGrade(HttpServletRequest req, MultipartFile multipartFile) {
        String path = req.getSession().getServletContext().getRealPath("/resources/upload/grade/");
        
        
        String originName = multipartFile.getOriginalFilename();
     	 System.out.println(originName);
     	 String ext = originName.substring(originName.lastIndexOf("."), originName.length());

     	 String changeName = "grade" + System.nanoTime() + ext; //profile현재시간
          System.out.println(changeName);
          File target = new File(path + changeName);

          String imgName="/resources/upload/grade/"+changeName;
          
          
          try {
         	 multipartFile.transferTo(target);
          } catch (Exception e) {
              e.printStackTrace();
          } 
          
        return imgName;
       
    }
    
  //멤버 등급 수정
    public static String uploadSkin(HttpServletRequest req, MultipartFile multipartFile) {
        String path = req.getSession().getServletContext().getRealPath("/resources/upload/skin/");
        
        
        String originName = multipartFile.getOriginalFilename();
     	 System.out.println(originName);
     	 String ext = originName.substring(originName.lastIndexOf("."), originName.length());

     	 String changeName = "skin" + System.nanoTime() + ext; //profile현재시간
          System.out.println(changeName);
          File target = new File(path + changeName);

          String imgName="/resources/upload/skin/"+changeName;
          
          
          try {
         	 multipartFile.transferTo(target);
          } catch (Exception e) {
              e.printStackTrace();
          } 
          
        return imgName;
       
    }


}

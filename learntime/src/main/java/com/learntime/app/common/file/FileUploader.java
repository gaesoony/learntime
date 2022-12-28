package com.learntime.app.common.file;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

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


}

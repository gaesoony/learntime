package com.learntime.app.common.file;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import com.learntime.app.member.vo.MemberVo;

public class FileUploader {
	
	//회원 프로필 업뎃
	public static String uploadMemberProfile(HttpServletRequest req, MemberVo vo) {
		String path = req.getSession().getServletContext().getRealPath("/resources/upload/profile/");
        String originName = ""+vo.getImgPath();
        String ext = originName.substring(originName.lastIndexOf("."), originName.length());
        // xxxxxxx.png (뒤에서부터 3자리. , 파일명 길이)

        String changeName = "profile_" + System.nanoTime() + ext; // profile_현재시간

        File target = new File(path + changeName);

        try {
           vo.setImgPath(target);
        } catch (Exception e) {
           e.printStackTrace();
        }
        
        return changeName;
	}

}

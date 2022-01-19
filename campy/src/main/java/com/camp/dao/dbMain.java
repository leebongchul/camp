package com.camp.dao;

import com.camp.dto.memberDTO;

public class dbMain {

    public static void main(String[] args) {

        memberDTO dto = new memberDTO();
        memberDAO dao = new memberDAO();

        dto.setUser_id("bong123");
        dto.setUser_pass("@1234567");
        dto.setUser_name("리봉철");
        dto.setUser_tel("01015354685");
        dto.setUser_email("bong0717@naver.com");
        // dao.(dto);
        // int result = dao.getLoginResult(dto);
        // System.out.println(result);
    }

}

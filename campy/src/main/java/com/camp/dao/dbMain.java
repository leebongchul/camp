package com.camp.dao;

import com.camp.dto.memberDTO;

public class dbMain {

    public static void main(String[] args) {

        memberDTO dto = new memberDTO();
        memberDAO dao = new memberDAO();
        myPageDAO mdao = new myPageDAO();
        noticeDAO ndao = new noticeDAO();

        // ndao.noticSelect();
        // ndao.noticSelect();

    }

}

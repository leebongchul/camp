package com.camp.dao;

import java.util.ArrayList;

import com.camp.dto.memberDTO;

public class memberDAO extends DBconn {
    public int insert(memberDTO dto) {
        int result = 0;
        String sql = "insert into member values(?,?,?,?,?,sysdate,?)";
        String tel = dto.getHp1() + dto.getHp2() + dto.getHp3();
        String email = dto.getEmail1() + "@" + dto.getEmail2();
        dto.setUser_tel(tel);
        dto.setUser_email(email);
        getPreparedStatement(sql);
        try {
            pstmt.setString(1, dto.getUser_id());
            pstmt.setString(2, dto.getUser_pass());
            pstmt.setString(3, dto.getUser_name());
            pstmt.setString(4, dto.getUser_tel());
            pstmt.setString(5, dto.getUser_email());
            pstmt.setString(6, "y");

            result = pstmt.executeUpdate();

            close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public int memberDelete(memberDTO dto) {
        System.out.println("memberDelete작동");
        int result = 0;
        String sql = "update member set USER_EXITYN = 'n' where USER_ID = ? and USER_PASS = ? ";
        getPreparedStatement(sql);
        try {
            pstmt.setString(1, dto.getUser_id());
            pstmt.setString(2, dto.getUser_pass());
            result = pstmt.executeUpdate();
            close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;

    }

    public ArrayList<memberDTO> myPageselect() {
        ArrayList<memberDTO> list = new ArrayList<memberDTO>();
        memberDTO dto = new memberDTO();
        String sql = "select * from member where user_id = ?";
        getPreparedStatement(sql);

        try {
            pstmt.setString(1, dto.getUser_id());
            rs = pstmt.executeQuery();
            while (rs.next()) {

                dto.setUser_id(rs.getString(1));
                dto.setUser_pass(rs.getString(2));
                dto.setUser_name(rs.getString(3));

                String tel = rs.getString(4);
                dto.setHp1(subStr(tel, 0, 3));
                dto.setHp2(subStr(tel, 3, 7));
                dto.setHp3(subStr(tel, 7, 11));

                String email = rs.getString(5);
                int atidx = email.indexOf("@");
                dto.setEmail1(subStr(email, 0, atidx));
                dto.setEmail1(subStr(email, atidx + 1));
                // dto.setUser_pass();
                list.add(dto);
            }

            close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    // 문자열 자르기
    public String subStr(String str, int sindex) {
        String result = str.substring(sindex);

        return result;
    }

    public String subStr(String str, int sindex, int eindex) {
        String result = str.substring(sindex, eindex);

        return result;
    }

    // 아이디찾기
    public String getIdFind(memberDTO dto) {
        System.out.println("getIdFind Start");
        String result = null;
        String sql = "select user_id from member where user_name = " + "? AND  USER_EMAIL = ?";
        getPreparedStatement(sql);

        String email = dto.getEmail1() + "@" + dto.getEmail2();
        String name = dto.getUser_name();
        dto.setUser_name(name);
        dto.setUser_email(email);
        System.out.println("try 전");
        try {
            pstmt.setString(1, dto.getUser_name());
            pstmt.setString(2, dto.getUser_email());
            rs = pstmt.executeQuery();
            System.out.println("데이터베이스 입력");
            while (rs.next()) {
                dto.setUser_id(rs.getString(1));
                result = dto.getUser_id();
                System.out.println("while");
            }
            close();
        } catch (Exception e) {
            System.out.println("catch");
            e.printStackTrace();
        }

        return result;

    }

    // 록그인
    public int getLoginResult(memberDTO dto) {

        int result = 0;
        String sql = "select count(*) from member where user_id= ? and user_pass= ? and USER_EXITYN = ?";
        getPreparedStatement(sql);
        try {

            pstmt.setString(1, dto.getUser_id());
            pstmt.setString(2, dto.getUser_pass());
            pstmt.setString(3, "y");
            rs = pstmt.executeQuery();
            while (rs.next()) {
                result = rs.getInt(1);
            }
            close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}

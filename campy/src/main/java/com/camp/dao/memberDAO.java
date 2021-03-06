package com.camp.dao;

import java.util.ArrayList;

import com.camp.dto.memberDTO;

public class memberDAO extends DBconn {
    // 회원가입
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
        System.out.println(result);
        return result;
    }

    // 로그인
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

    // 아이디찾기
    public String getIdFind(memberDTO dto) {
        String result = null;
        String sql = "select user_id from member where user_name = " + "? AND  USER_EMAIL = ?";
        getPreparedStatement(sql);

        String email = dto.getEmail1() + "@" + dto.getEmail2();
        String name = dto.getUser_name();
        dto.setUser_name(name);
        dto.setUser_email(email);
        try {
            pstmt.setString(1, dto.getUser_name());
            pstmt.setString(2, dto.getUser_email());
            rs = pstmt.executeQuery();
            while (rs.next()) {
                dto.setUser_id(rs.getString(1));
                result = dto.getUser_id();
            }
            close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;

    }

    // 중복찾기
    public ArrayList<memberDTO> idCheck() {
        ArrayList<memberDTO> list = new ArrayList<memberDTO>();

        String sql = "select user_id from member";
        getPreparedStatement(sql);

        try {
            rs = pstmt.executeQuery();
            while (rs.next()) {
                memberDTO dto = new memberDTO();
                dto.setUser_id(rs.getString(1));
                list.add(dto);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
//        for (int i = 0; i < list.size(); i++) {
//
//            System.out.println(list.get(i).getUser_id());
//        }
        return list;
    }

    // 비밀번호 수정전 정보 체크uj
    public int getPassCheck(memberDTO dto) {
        int result = 0;
        String sql = "select count(*) from member where user_id = ? and user_name = ? and user_tel = ? and user_email = ? and user_exityn = 'y'";
        getPreparedStatement(sql);

        String tel = dto.getHp1() + dto.getHp2() + dto.getHp3();
        String email = dto.getEmail1() + "@" + dto.getEmail2();
        dto.setUser_tel(tel);
        dto.setUser_email(email);

        try {
            pstmt.setString(1, dto.getUser_id());
            pstmt.setString(2, dto.getUser_name());
            pstmt.setString(3, dto.getUser_tel());
            pstmt.setString(4, dto.getUser_email());
            rs = pstmt.executeQuery();
            while (rs.next()) {
                result = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    // 비밀번호변경
    public int PassUpdate(memberDTO dto) {
        int result = 0;
        String sql = "update member set user_pass = ? where user_id = ? ";
        getPreparedStatement(sql);
        try {
            pstmt.setString(1, dto.getUser_pass());
            pstmt.setString(2, dto.getUser_id());
            result = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

}

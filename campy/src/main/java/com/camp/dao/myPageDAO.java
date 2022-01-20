package com.camp.dao;

import java.util.ArrayList;

import com.camp.dto.memberDTO;
import com.camp.dto.rsrvDTO;

public class myPageDAO extends DBconn {

    // �쉶�썝�깉�눜
    public int memberDelete(memberDTO dto) {
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

    // 留덉씠�럹�씠吏��젙蹂�
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
    
    public ArrayList<rsrvDTO> rsrvlist() {
        ArrayList<rsrvDTO> list = new ArrayList<rsrvDTO>();
        rsrvDTO dto = new rsrvDTO();
        String sql = "";
        getPreparedStatement(sql);
        
        try {
            pstmt.setInt(1, dto.getRsvn_num());
            rs = pstmt.executeQuery();
            while (rs.next()) {
                
//                dto.getRsvn_num(rs.getInt(1));
//                dto.getUser_pass(rs.getString(2));
//                dto.setUser_name(rs.getString(3));
//                
//                String tel = rs.getString(4);
//                dto.setHp1(subStr(tel, 0, 3));
//                dto.setHp2(subStr(tel, 3, 7));
//                dto.setHp3(subStr(tel, 7, 11));
//                
//                String email = rs.getString(5);
//                int atidx = email.indexOf("@");
//                dto.setEmail1(subStr(email, 0, atidx));
//                dto.setEmail1(subStr(email, atidx + 1));
                // dto.setUser_pass();
                list.add(dto);
            }
            
            close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    // 臾몄옄�뿴 �옄瑜닿린
    public String subStr(String str, int sindex) {
        String result = str.substring(sindex);

        return result;
    }

    public String subStr(String str, int sindex, int eindex) {
        String result = str.substring(sindex, eindex);

        return result;
    }
}

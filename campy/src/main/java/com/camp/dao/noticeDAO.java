package com.camp.dao;

import java.util.ArrayList;

import com.camp.dto.noticeDTO;

public class noticeDAO extends DBconn {

    public int Insert(noticeDTO dto) {
        int result = 0;
        String sql = "insert into notice values(?,?,?,?,sysdate,?,sysdate)";
        String ntnum = dto.getNotice_num();
        // String ntnum = dto.ge
        getPreparedStatement(sql);
        try {
            pstmt.setInt(1, Integer.parseInt(ntnum + 1));
            pstmt.setString(2, dto.getNotice_tittle());
            pstmt.setString(3, dto.getNotice_content());
            pstmt.setString(4, dto.getNotice_writer());
            pstmt.setString(5, dto.getNotice_updater());
            result = pstmt.executeUpdate();

            close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(result);
        return result;
    }

    public ArrayList<noticeDTO> noticSelect() {
        ArrayList<noticeDTO> list = new ArrayList<noticeDTO>();
        String sql = "select * from notice order by notice_num desc";
        getPreparedStatement(sql);
        try {
            rs = pstmt.executeQuery();
            while (rs.next()) {
                noticeDTO dto = new noticeDTO();
                int ntnum = rs.getInt(1);
                dto.setNotice_num(Integer.toString(ntnum));
                dto.setNotice_tittle(rs.getString(2));
                dto.setNotice_content(rs.getString(3));
                dto.setNotice_writer(rs.getString(4));
                dto.setNotice_regdate(rs.getString(5));
                dto.setNotice_updater(rs.getString(6));
                dto.setNotice_updatedate(rs.getString(7));
                list.add(dto);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

}

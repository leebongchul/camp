package com.camp.dao;

import java.util.ArrayList;

import com.camp.dto.noticeDTO;

public class noticeDAO extends DBconn {

    public int Insert(noticeDTO dto) {
        System.out.println("진입");
        // String ntnum = ntcnumCount();
        int result = 0;
        String sql = "insert into notice values(nt_seq.NEXTVAL,?,?,?,sysdate,?,sysdate)";
        // String ntnum = dto.ge
        dto.setNotice_updater(dto.getNotice_writer());
        String udater = dto.getNotice_updater();
        System.out.println(udater);
        getPreparedStatement(sql);
        try {
            System.out.println(dto);
            System.out.println("try");
            pstmt.setString(1, dto.getNotice_tittle());
            pstmt.setString(2, dto.getNotice_content());
            pstmt.setString(3, dto.getNotice_writer());
            pstmt.setString(4, dto.getNotice_updater());
            result = pstmt.executeUpdate();

            close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(result);
        return result;
    }
    // 공지사항불러오기.

    public ArrayList<noticeDTO> noticSelect() {
        ArrayList<noticeDTO> list = new ArrayList<noticeDTO>();
        String sql = "select * from notice order by notice_num desc";
        getPreparedStatement(sql);
        try {
            rs = pstmt.executeQuery();
            while (rs.next()) {
                noticeDTO dto = new noticeDTO();

                dto.setNotice_num(rs.getInt(1));
                dto.setNotice_tittle(rs.getString(2));
                dto.setNotice_content(rs.getString(3));
                dto.setNotice_writer(rs.getString(4));
                dto.setNotice_regdate(rs.getString(5));
                dto.setNotice_updater(rs.getString(6));
                dto.setNotice_updatedate(rs.getString(7));
                list.add(dto);
            }
            close();
        } catch (Exception e) {
            e.printStackTrace();
        }
//        for (int i = 0; i < list.size(); i++) {
//            System.out.println(list.get(i).getNotice_num());
//            System.out.println(list.get(i).getNotice_tittle());
//            System.out.println(list.get(i).getNotice_content());
//            System.out.println(list.get(i).getNotice_writer());
//            System.out.println(list.get(i).getNotice_regdate());
//            System.out.println(list.get(i).getNotice_updater());
//            System.out.println(list.get(i).getNotice_updatedate());
//        }

        return list;
    }

}

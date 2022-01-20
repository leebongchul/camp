package com.camp.dao;

import java.util.ArrayList;

import com.camp.dto.qnaDTO;

public class qnaDAO extends DBconn {
    // QNA 삽입
    public int Insert(qnaDTO dto) {
        int result = 0;
        String sql = "insert into qna values(?,?,?,?,?,sysdate,?,sysdate)";
        getPreparedStatement(sql);
        String qnanum = dto.getQna_num();
        String qnahit = dto.getQna_hitnum();

        try {
            result = pstmt.executeUpdate();

            pstmt.setInt(1, Integer.parseInt(qnanum + 1));
            pstmt.setString(2, dto.getQna_tittle());
            pstmt.setString(3, dto.getQna_content());
            pstmt.setInt(4, Integer.parseInt(qnahit));
            pstmt.setString(5, dto.getQna_writer());
            pstmt.setString(6, dto.getQna_updater());
            close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    // 조회수 추가
    public int Qnahit(qnaDTO dto) {
        int result = 0;
        String sql = "update qna set qna_hitnum = qna_hitnum+1 where QNA_NUM = ?";
        getPreparedStatement(sql);
        String qnanum = dto.getQna_num();
        try {
            pstmt.setInt(1, Integer.parseInt(qnanum));
            pstmt.executeUpdate();
            close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    // qna select
    public ArrayList<qnaDTO> noticSelect() {
        ArrayList<qnaDTO> list = new ArrayList<qnaDTO>();
        String sql = "select * from notice order by notice_num desc";
        getPreparedStatement(sql);
        try {
            rs = pstmt.executeQuery();
            while (rs.next()) {
                qnaDTO dto = new qnaDTO();
                int qnanum = rs.getInt(1);
                int qnahitnum = rs.getInt(4);

                dto.setQna_num(Integer.toString(qnanum));
                dto.setQna_tittle(rs.getString(2));
                dto.setQna_content(rs.getString(3));
                dto.setQna_hitnum(Integer.toString(qnahitnum));
                dto.setQna_writer(rs.getString(5));
                dto.setQna_regdate(rs.getString(6));
                dto.setQna_updater(rs.getString(6));
                dto.setQna_updatedate(rs.getString(7));
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

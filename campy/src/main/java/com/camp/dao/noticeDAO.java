package com.camp.dao;

import com.camp.dao.DBconn;
import com.camp.dto.noticeDTO;

public class noticeDAO extends DBconn{
	/**
	 * 글쓰기 
	 */
	public int insert(noticeDTO dto) {
		int result = 0;
		String sql = "insert into notice values('n_'||sequ_notice.nextval,?,?,0,sysdate)";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, dto.getNotice_tittle());
			pstmt.setString(2, dto.getNotice_content());
			
			result = pstmt.executeUpdate();
			
			close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}		
		
		return result;
	}
}
	
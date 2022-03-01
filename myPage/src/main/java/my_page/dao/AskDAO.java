package my_page.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import my_page.dto.AskDTO;
import my_page.dto.MyMemberDTO;
import sqlmap.MybatisManager;

public class AskDAO {

	//문의 등록
	public void insert(AskDTO dto) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			session.insert("ask.insert", dto);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
	}

	//문의 목록 
	public List<MyMemberDTO> list() {
		List<MyMemberDTO> list=null;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			list=session.selectList("ask.list");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		return list;
	}

	//문의를 등록한 사용자가 탈퇴할 시 
	//문의 내용은 보존하기 위해 update문 사용
	public void updateForMember(String userid) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			Map<String, String> map = new HashMap<>();
			map.put("userid", userid);
			map.put("newUserid", "(탈퇴한 사용자)");
			session.insert("ask.updateForMember", map);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
	}

}

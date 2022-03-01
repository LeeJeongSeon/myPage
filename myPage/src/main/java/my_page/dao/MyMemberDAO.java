package my_page.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import my_page.dto.MyMemberDTO;
import sqlmap.MybatisManager;

public class MyMemberDAO {
	
	//로그인 (아이디, 비밀번호 검증)
	//회원 정보를 요청/응답 페이지 뿐 아니라 다른 페이지도 사용하기 때문에
	//dto를 리턴하여 session attribute 등록
	public MyMemberDTO login(MyMemberDTO dto) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			dto=session.selectOne("my_member.login", dto);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		return dto;
	}

	//아이디 찾기
	//이메일을 입력하고 아이디를 리턴하지만 이메일은 알기 쉽기 때문에 아이디의 일부만 공개하도록 함
	public String findId(String email) {
		SqlSession session=null;
		String result="";
		try {
			session=MybatisManager.getInstance().openSession();
			result=session.selectOne("my_member.findId", email);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		return result;
	}

	//비밀번호 찾기
	//아이디를 입력하고 비밀번호 리턴
	public String findPw(String userid) {
		SqlSession session=null;
		String result="";
		try {
			session=MybatisManager.getInstance().openSession();
			result=session.selectOne("my_member.findPw", userid);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		return result;
	}
	
	//회원가입
	public void join(MyMemberDTO dto) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			session.insert("my_member.join", dto);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
	}

	//아이디 중복확인
	public int checkId(String userid) {
		SqlSession session=null;
		int result=0;
		try {
			session=MybatisManager.getInstance().openSession();
			result=session.selectOne("my_member.checkId", userid);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		return result;
	}

	//회원 명단 출력
	public List<MyMemberDTO> memberList() {
		List<MyMemberDTO> list=null;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			list=session.selectList("my_member.list");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
		return list;
	}

	//회원 정보 수정
	public void edit(MyMemberDTO dto) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			session.update("my_member.edit", dto);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
	}

	//회원 탈퇴
	public void deleteAccount(String userid) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			session.delete("my_member.delete", userid);
			session.commit();			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
	}

}

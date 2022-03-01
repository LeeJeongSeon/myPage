package my_page.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import my_page.dto.MyPostDTO;
import sqlmap.MybatisManager;

public class MyPostDAO {

	//서비스용 게시글 목록+페이징 처리
	public List<MyPostDTO> postList(int start, int end) {
		List<MyPostDTO> list=null;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			Map<String, Object> map=new HashMap<>();
			map.put("start", start);
			map.put("end", end);
			list=session.selectList("my_post.list", map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
		return list;
	}
	
	//관리자용 게시글 목록
	public List<MyPostDTO> postListforAdmin() {
		List<MyPostDTO> list=null;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			list=session.selectList("my_post.listForAdmin");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
		return list;
	}	

	//전체 게시글 목록 출력시 전체 게시글의 개수 파악
	public int count() {
		int result=0;
		try(SqlSession session=MybatisManager.getInstance().openSession()) {
			result=session.selectOne("my_post.count");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	//조회수 증가(하루에 1번)
	public void plusReadCount(int num, HttpSession countSession) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			long read_time=0;
			if(countSession.getAttribute("readTime_"+num) != null) {
				read_time=(long)countSession.getAttribute("readTime_"+num);
			}
			long current_time=System.currentTimeMillis();
			if(current_time-read_time > 1000*60*60*24) {
				session.update("my_post.plusReadCount", num);
				session.commit();
				countSession.setAttribute("readTime_"+num, current_time);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
	}

	//게시글 상세열람+열람시 줄바꿈 처리를 위한 replace
	//사용자에게 읽기 전용 페이지이기 때문에 html태그나 엔티티코드로 대체하여도 
	//읽는데 무리가 없다. 
	public MyPostDTO viewReplace(int num) {
		MyPostDTO dto=null;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			dto=session.selectOne("my_post.view", num);
			String content=dto.getContent();
			content=content.replace("\n", "<br>");
			content=content.replace("  ", "&nbsp;&nbsp;");
			dto.setContent(content);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
		return dto;
	}

	//게시글에 첨부된 파일이름 
	public String getFileName(int num) {
		String result="";
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			result=session.selectOne("my_post.getFileName", num);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
		
		return result;
	}

	//첨부된 파일 다운로드 회수 증가
	public void plusDown(int num) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			session.update("my_post.plusDown", num);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
	}

	//게시물 추천수 증가+세션에 값을 저장함으로써 한 사용자가 여러번 추천함을 방지
	public void plusRecommendCount(int num, HttpSession countSession) {
		SqlSession session=null;
		try {
			if(countSession.getAttribute("recommend_"+num)!="true") {
				session=MybatisManager.getInstance().openSession();
				session.update("my_post.plusRecommendCount", num);
				session.commit();
				countSession.setAttribute("recommend_"+num, "true");				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
	}

	//검색 게시글 목록 +페이징 처리
	public List<MyPostDTO> searchList(String array, String keyword, int start, int end) {
		List<MyPostDTO> list=null;
		try(SqlSession session=MybatisManager.getInstance().openSession()) {
			Map<String, Object> map=new HashMap<>();
			map.put("array", array);
			map.put("keyword", "%"+keyword+"%");
			map.put("start", start);
			map.put("end", end);
			list=session.selectList("my_post.searchList", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	//게시글 등록
	public void insert(MyPostDTO dto) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			session.insert("my_post.insert", dto);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
	}
	
	//게시글 삭제
	public void delete(int num) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			session.delete("my_post.delete", num);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
	}
	
	//회원 탈퇴 시 게시글 삭제
	public void deleteForMember(String userid) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			session.delete("my_post.deleteForMember", userid);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
	}

	//게시글 수정시 값 가져오기
	//viewReplace와 비슷하나, 실제 입력창에 태그나 엔티티코드가 그대로 출력되는 것을 방지하기 위해
	//replace는 사용하지 않는다. 
	public MyPostDTO view(int num) {
		MyPostDTO dto=new MyPostDTO();
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			dto=session.selectOne("my_post.view", num);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
		return dto;
	}

	//게시글 수정처리
	public void update(MyPostDTO dto) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			session.update("my_post.update", dto);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
	}

	//검색 게시글 목록 출력시 해당하는 게시물의 개수 가져오기
	public int searchCount(String keyword) {
		int result=0;
		keyword="%"+keyword+"%";
		try(SqlSession session=MybatisManager.getInstance().openSession()) {
			result=session.selectOne("my_post.searchCount", keyword);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
}

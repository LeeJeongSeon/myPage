package my_page.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import my_page.dto.MyPostDTO;
import my_page.dto.PostCommentDTO;
import sqlmap.MybatisManager;

public class CommentDAO {
	//서비스용 댓글 목록
	public List<PostCommentDTO> commentList(int num) {
		List<PostCommentDTO> list=null;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			list=session.selectList("post_comment.commentList", num);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
		return list;
	}
	
	//관리자용 댓글 목록
	public List<PostCommentDTO> commentListforAdmin() {
		List<PostCommentDTO> list=null;
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			list=session.selectList("post_comment.listForAdmin");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
		return list;
	}	

	//댓글 등록
	public void commentAdd(PostCommentDTO dto) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			session.insert("post_comment.commentAdd", dto);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
	}

	//댓글 삭제
	public void delete(int num) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			session.delete("post_comment.delete", num);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
	}
	
	//게시글 삭제 시 댓글 삭제
	public void deleteForPost(int post_num) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			session.delete("post_comment.deleteForPost", post_num);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
	}
	
	//회원 탈퇴 시 댓글 삭제
	public void deleteForMember(String userid) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			session.delete("post_comment.deleteForMember", userid);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}
	}

}

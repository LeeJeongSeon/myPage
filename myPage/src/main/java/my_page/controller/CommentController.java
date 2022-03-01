package my_page.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import my_page.dao.CommentDAO;
import my_page.dto.PostCommentDTO;

@WebServlet("/swup_comment/*")
public class CommentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
		System.out.println(uri);
		String contextPath = request.getContextPath();
		CommentDAO dao = new CommentDAO();

		//서비스용 댓글 목록
		if (uri.indexOf("list.do") != -1) {
			int num = Integer.parseInt(request.getParameter("num"));
			List<PostCommentDTO> list = dao.commentList(num);
			request.setAttribute("list2", list);
			String page = "/myPage/post/comment.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);

		//관리자용 댓글 목록
		} else if (uri.indexOf("adminList.do") != -1) {
			List<PostCommentDTO> list = dao.commentListforAdmin();
			request.setAttribute("list3", list);
			String page = "/myPage/admin/commentList.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);

		//댓글 등록
		} else if (uri.indexOf("add.do") != -1) {
			PostCommentDTO dto = new PostCommentDTO();
			int post_num = Integer.parseInt(request.getParameter("post_num"));
			String userid = request.getParameter("userid");
			String content = request.getParameter("content");
			dto.setPost_num(post_num);
			dto.setUserid(userid);
			dto.setContent(content);
			dao.commentAdd(dto);

		//댓글 삭제
		} else if (uri.indexOf("delete.do") != -1) {
			int num = Integer.parseInt(request.getParameter("num"));
			int post_num = Integer.parseInt(request.getParameter("post_num"));
			dao.delete(num);
			String page = "/swup_post/view.do?num="+post_num;
			response.sendRedirect(contextPath + page);
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

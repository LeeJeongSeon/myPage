package my_page.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import my_page.dao.AskDAO;
import my_page.dto.AskDTO;
import my_page.dto.MyMemberDTO;

@WebServlet("/swup_ask/*")
public class AskController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
		System.out.println(uri);
		String contextPath = request.getContextPath();
		AskDAO dao = new AskDAO();

		if (uri.indexOf("question.do") != -1) {
			String page = "/myPage/ask/page1.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);

		} else if (uri.indexOf("report.do") != -1) {
			String page = "/myPage/ask/page2.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);

		} else if (uri.indexOf("thanks.do") != -1) {
			String page = "/myPage/ask/page3.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);

		} else if (uri.indexOf("ads.do") != -1) {
			String page = "/myPage/ask/page4.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);

		//문의 작성
		} else if (uri.indexOf("insert.do") != -1) {
			HttpSession session=request.getSession();
			String userid="";
			if((String)session.getAttribute("userid")==null) {
				userid="(익명)";
			}else {
				userid=(String)session.getAttribute("userid");
			}
			String subject=request.getParameter("subject");
			String content=request.getParameter("content");
			String target=request.getParameter("target");
			AskDTO dto=new AskDTO();
			dto.setUserid(userid);
			dto.setSubject(subject);
			dto.setContent(content);
			dto.setTarget(target);
			dao.insert(dto);
			
		//문의 리스트
		} else if (uri.indexOf("list.do") != -1) {
			List<MyMemberDTO> list=dao.list();
			request.setAttribute("list4", list);
			String page="/myPage/admin/askList.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

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
import my_page.dao.CommentDAO;
import my_page.dao.MyMemberDAO;
import my_page.dao.MyPostDAO;
import my_page.dto.MyMemberDTO;

@WebServlet("/swup_member/*")
public class MyMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws 
	ServletException, IOException {
		String uri=request.getRequestURI();
		System.out.println(uri);
		MyMemberDAO dao=new MyMemberDAO();
		
		//로그인
		if(uri.indexOf("login.do") != -1) {
			String result="";
			String userid=request.getParameter("userid");
			String passwd=request.getParameter("passwd");
			MyMemberDTO dto=new MyMemberDTO();
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			dto=dao.login(dto);
			if(dto==null) {
				result="아이디 또는 비밀번호가 잘못 입력되었습니다.";
			}else {				
				result=dto.getName()+"님 환영합니다.";
				HttpSession session=request.getSession();
				session.setAttribute("userid", dto.getUserid());
				session.setAttribute("passwd", dto.getPasswd());
				session.setAttribute("name", dto.getName());
				session.setAttribute("email", dto.getEmail());
				session.setAttribute("introduce", dto.getIntroduce());
				session.setAttribute("admin", dto.getAdmin());
			}
			request.setAttribute("result", result);
			String page="/myPage/member/loginResult.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
			
		//아이디 찾기
		}else if(uri.indexOf("findId.do") != -1) {
			String find_result="";
			String email=request.getParameter("email");
			String userid=dao.findId(email);
			if(userid!=null) {
				find_result="아이디는 4자리까지만 공개됩니다. \n아이디 : "+userid;
			}else {
				find_result="존재하지 않는 이메일입니다.";
			}
			request.setAttribute("find_result", find_result);
			String page="/myPage/member/findResult.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
			
		//비밀번호 찾기
		}else if(uri.indexOf("findPw.do") != -1) {
			String find_result="";
			String userid=request.getParameter("userid");
			String passwd=dao.findPw(userid);
			if(passwd!=null) {
				find_result="보안을 위해 바로 비밀번호를 변경해주세요. \n비밀번호 : "+passwd;
			}else {
				find_result="존재하지 않는 아이디입니다.";
			}
			request.setAttribute("find_result", find_result);
			String page="/myPage/member/findResult.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
			
		//회원가입
		}else if(uri.indexOf("join.do") != -1) {
			HttpSession session=request.getSession();
			if((String)session.getAttribute("checked")=="true") {
				String userid=request.getParameter("userid");
				String passwd=request.getParameter("passwd");
				String name=request.getParameter("name");
				String email=request.getParameter("email");
				String introduce=request.getParameter("introduce");
				if(introduce.length()==1 && introduce.indexOf(".")==0) {
					introduce="안녕하세요!";
				}
				MyMemberDTO dto=new MyMemberDTO();
				dto.setUserid(userid);
				dto.setPasswd(passwd);
				dto.setName(name);
				dto.setEmail(email);
				dto.setIntroduce(introduce);
				dao.join(dto);
			}
			String page="/myPage/member/joinResult.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
			
		//로그아웃
		}else if(uri.indexOf("logout.do") != -1) {
			HttpSession session=request.getSession();
			session.invalidate();
			String result = "로그아웃되었습니다. 메인 화면으로 이동합니다. ";
			request.setAttribute("result", result);
			String page="/myPage/member/loginResult.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
			
		//아이디 중복확인
		}else if(uri.indexOf("checkId.do") != -1) {
			String find_result="";
			String checked="false";
			String userid=request.getParameter("userid");
			int num=dao.checkId(userid);
			if(num==1) {
				find_result="사용 불가능한 아이디입니다.";
			}else {
				find_result="사용 가능한 아이디입니다.";
				checked="true";
			}
			request.setAttribute("find_result", find_result);
			HttpSession session=request.getSession();
			session.setAttribute("checked", checked);
			String page="/myPage/member/findResult.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
			
		//회원 명단
		}else if(uri.indexOf("list.do") != -1) {
			List<MyMemberDTO> list=dao.memberList();
			request.setAttribute("list", list);
			String page="/myPage/admin/memberList.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
			
		//정보 수정
		}else if(uri.indexOf("edit.do") != -1) {
			HttpSession session=request.getSession();
			String userid=request.getParameter("userid");
			String passwd=request.getParameter("passwd");
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String introduce=request.getParameter("introduce");
			MyMemberDTO dto=new MyMemberDTO();
			dto.setUserid(userid);
			dto.setPasswd(passwd);
			dto.setName(name);
			dto.setEmail(email);
			dto.setIntroduce(introduce);
			dao.edit(dto);
			session.setAttribute("userid", dto.getUserid());
			session.setAttribute("passwd", dto.getPasswd());
			session.setAttribute("name", dto.getName());
			session.setAttribute("email", dto.getEmail());
			session.setAttribute("introduce", dto.getIntroduce());
			String page="/myPage/member/editResult.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
						
		//회원 탈퇴
		}else if(uri.indexOf("delete.do") != -1) {
			MyPostDAO dao2 = new MyPostDAO();
			CommentDAO dao3= new CommentDAO();
			AskDAO dao4 = new AskDAO();
			String userid=request.getParameter("userid");
			dao4.updateForMember(userid);
			dao3.deleteForMember(userid);
			dao2.deleteForMember(userid);
			dao.deleteAccount(userid);
			HttpSession session=request.getSession();
			session.invalidate();
			String page="/myPage/member/deleteResult.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws 
	ServletException, IOException {
		doGet(request, response);
	}

}

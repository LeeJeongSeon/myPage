package my_page.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import common.Constants;
import my_page.dao.CommentDAO;
import my_page.dao.MyPostDAO;
import my_page.dto.MyPostDTO;

@WebServlet("/swup_post/*")
public class MyPostController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
		System.out.println(uri);
		String contextPath = request.getContextPath();
		MyPostDAO dao = new MyPostDAO();

		//서비스용 게시글 목록
		if (uri.indexOf("list.do") != -1) {
			int count = dao.count();
			int curPage = 1;
			if (request.getParameter("curPage") != null) {
				curPage = Integer.parseInt(request.getParameter("curPage"));
			}
			Mp_Pager pager = new Mp_Pager(count, curPage);
			int start = pager.getPageBegin();
			int end = pager.getPageEnd();
			List<MyPostDTO> list = dao.postList(start, end);
			request.setAttribute("list", list);
			request.setAttribute("page", pager);
			String page = "/myPage/post/post.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);

		//관리용 게시글 목록
		} else if (uri.indexOf("adminList.do") != -1) {
			List<MyPostDTO> list = dao.postListforAdmin();
			request.setAttribute("listAdmin", list);
			String page = "/myPage/admin/postList.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);

		//게시글 작성페이지 이동
		} else if(uri.indexOf("write.do") != -1) {
			String page="/myPage/post/posting.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
			
		//게시글 열람
		} else if (uri.indexOf("view.do") != -1) {
			int num = Integer.parseInt(request.getParameter("num"));
			HttpSession session = request.getSession();
			dao.plusReadCount(num, session);
			MyPostDTO dto = dao.viewReplace(num);
			request.setAttribute("dto", dto);
			String page = "/myPage/post/postView.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);

		//첨부파일 다운로드
		} else if (uri.indexOf("download.do") != -1) {
			int num = Integer.parseInt(request.getParameter("num"));
			String filename = dao.getFileName(num);
			String path = Constants.UPLOAD_PATH_SWUP + filename;
			byte byteArray[] = new byte[4096];
			FileInputStream fis = new FileInputStream(path);
			String mimeType = getServletContext().getMimeType(path);
			if (mimeType == null) {
				mimeType = "application/octet-stream;charset=utf-8";
			}
			filename = new String(filename.getBytes("utf-8"), "8859_1");
			response.setHeader("Content-Disposition", "attachment;filename=" + filename);
			ServletOutputStream out = response.getOutputStream();
			int numRead;
			while (true) {
				numRead = fis.read(byteArray, 0, byteArray.length);
				if (numRead == -1)
					break;
				out.write(byteArray, 0, numRead);
			}
			out.flush();
			out.close();
			fis.close();
			dao.plusDown(num);
			
		//게시글 추천하기
		} else if (uri.indexOf("recommend.do") != -1) {
			int num = Integer.parseInt(request.getParameter("num"));
			HttpSession session = request.getSession();
			dao.plusRecommendCount(num, session);
			String page="/swup_post/view.do?num="+num;
			response.sendRedirect(contextPath+page);

		//게시글 검색하여 목록출력
		} else if (uri.indexOf("search.do") != -1) {
			String array=request.getParameter("array");
			String keyword=request.getParameter("keyword");
			int count = dao.searchCount(keyword);
			int curPage = 1;
			if (request.getParameter("curPage") != null) {
				curPage = Integer.parseInt(request.getParameter("curPage"));
			}
			Mp_Pager pager = new Mp_Pager(count, curPage);
			int start = pager.getPageBegin();
			int end = pager.getPageEnd();
			List<MyPostDTO> list=dao.searchList(array, keyword, start, end);
			System.out.println(count);
			request.setAttribute("list", list);
			request.setAttribute("array", array);
			request.setAttribute("keyword", keyword);
			request.setAttribute("page1", pager);
			String page="/myPage/post/postSearch.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
			
		//게시글 작성(실제 작성 uri)
		} else if (uri.indexOf("insert.do") != -1) {
			File uploadDir = new File(Constants.UPLOAD_PATH_SWUP);
			if (!uploadDir.exists()) {
				uploadDir.mkdir();
			}
			MultipartRequest multi = new MultipartRequest(request, Constants.UPLOAD_PATH_SWUP, Constants.MAX_UPLOAD, "utf-8", new DefaultFileRenamePolicy());
			String subject = multi.getParameter("subject");
			String content = multi.getParameter("content");
			String ip = request.getRemoteAddr();
			if (ip.equalsIgnoreCase("0:0:0:0:0:0:0:1")) {
				InetAddress ia = InetAddress.getLocalHost();
				ip = ia.getHostAddress();
			}
			String filename = " ";
			int filesize = 0;
			try {
				Enumeration files = multi.getFileNames();
				while (files.hasMoreElements()) {
					String file1 = (String) files.nextElement();
					filename = multi.getFilesystemName(file1);
					File f1 = multi.getFile(file1);
					if (f1 != null) {
						filesize = (int) f1.length();// 파일 사이즈 저장
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			MyPostDTO dto = new MyPostDTO();
			HttpSession session=request.getSession();
			dto.setUserid((String)session.getAttribute("userid"));
			dto.setSubject(subject);
			dto.setContent(content);
			dto.setIp(ip);
			if (filename == null || filename.trim().equals("")) {
				filename = "-";
			}
			dto.setFilename(filename);
			dto.setFilesize(filesize);
			dao.insert(dto);
			String page = "/swup_post/list.do";
			response.sendRedirect(contextPath + page);
			
		//게시글 수정페이지로 이동
		}else if(uri.indexOf("edit.do") != -1) {
			int num = Integer.parseInt(request.getParameter("num"));
			MyPostDTO dto = dao.view(num);
			request.setAttribute("dto", dto);
			String page="/myPage/post/reposting.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
			
		//게시글 수정(실제 수정 uri)
		}else if(uri.indexOf("update.do") != -1) {
			int num = Integer.parseInt(request.getParameter("num"));
			String subject = request.getParameter("subject");
			String content = request.getParameter("content");
			String ip = request.getRemoteAddr();
			MyPostDTO dto = new MyPostDTO();
			dto.setNum(num);
			dto.setSubject(subject);
			dto.setContent(content);
			dto.setIp(ip);
			dao.update(dto);
			String page = "/swup_post/list.do";
			response.sendRedirect(contextPath + page);
			
		//게시글 삭제
		}else if(uri.indexOf("delete.do") != -1) {
			CommentDAO dao2=new CommentDAO();
			int num = Integer.parseInt(request.getParameter("num"));
			dao2.deleteForPost(num);
			dao.delete(num);
			String page="/myPage/post/deleteResult.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

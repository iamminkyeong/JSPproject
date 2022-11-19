<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.dao.BoardDAO, com.example.bean.BoardVO"%>
<%--<%@ page import="com.example.util.FileUpload" %>--%>
<%
	String sid = request.getParameter("id");
	if (sid != ""){  
		int id = Integer.parseInt(sid);
		BoardVO u = new BoardVO();
//		String filename = BoardDAO.getPhotoFilename(id);
//		if(filename!=null)
//			FileUpload.deleteFile(request, filename);
		u.setSeq(id);
		BoardDAO boardDAO = new BoardDAO();
		boardDAO.deleteBoard(u);
	}
	response.sendRedirect("posts.jsp");
%>
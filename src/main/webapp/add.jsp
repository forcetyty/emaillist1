
<%@page import="kr.co.itcen.emaillist.vo.EmaillistVo"%>
<%@page import="kr.co.itcen.emaillist.dao.EmaillistDao"%>
<%
	request.setCharacterEncoding("utf-8");
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String email = request.getParameter("email");

	EmaillistVo vo = new EmaillistVo();
	
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	vo.setEmail(email);
	
	new EmaillistDao().insert(vo);
	
	//이 경로는 index.jsp로 이동한다.
	response.sendRedirect(request.getContextPath());
%>

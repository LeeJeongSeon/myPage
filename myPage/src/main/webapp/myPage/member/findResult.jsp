<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SWUP_수프</title>
<%@ include file="../myInclude/header.jsp"%>
<style type="text/css">
body {
	font: 20px Montserrat, sans-serif;
	line-height: 1.8;
	color: #555;
	background-color: #f8f8f8;
}
h1 {
font-weight: bold;
font-size: 40pt;
}
h4 {
display: inline;
}
button {
background-color: #bbb;
color: white;
}
.margin {
	margin-bottom: 40px;
}
.container-fluid {
	padding-top: 150px;
	padding-bottom: 100px;
	width: 100%;
	text-align: center;
}
th {
padding: 20px 30px 20px 0;
}
.bottom {
width: 98%;
text-align: center;
}
.btnToMain {
position: absolute;
left: 30px;
top: 10px; 
border-radius: 10px;
}
#result {
font-size: 15px;
color: blue;
}
</style>
</head>
<body>
	<%
	String find_result=(String)request.getAttribute("find_result");
	if(find_result.indexOf("존재하지")!=-1 || find_result.indexOf("불가능한")!=-1) {
	%>
	<b style="color: red;"><%=find_result %></b>
	<%	
	}else {
		out.print(find_result);			
	}
	%>
</body>
</html>
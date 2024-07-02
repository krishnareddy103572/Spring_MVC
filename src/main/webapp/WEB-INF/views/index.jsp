<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
    <%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>First JSP</title>
</head>
<body>


<h1>This is Index page</h1>
<h1>This is my url</h1>
<%

String name =(String) request.getAttribute("name");
Integer phoneno = (Integer) request.getAttribute("phoneno");
List<String> frnds = (List<String>) request.getAttribute("frnds");
%>
<h2>Myself <%=name%> ,WhatsAPP?</h2>
<h2>Call me <%=phoneno%> ,Later to this number</h2>

<%
for(String s:frnds){
%>
<h1><%=s%></h1>

<%
}
%>




</body>
</html
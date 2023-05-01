<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String singer = "";
    	String album = "";
    
    	if(Integer.parseInt(request.getParameter("title")) == 1) {
    		singer = "뉴진스";
    		album = "Ditto";
    	} else if(Integer.parseInt(request.getParameter("title")) == 2) {
    		singer = "샘스미스";
    		album = "Unholy";
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	<div align="center">
	<h2>선택하신 앨범 정보</h2>
	<hr>
	<p>당신이 선택한신 앨범은 <%=singer %>의 <%=album %>입니다.</p>
	<hr>
	<h3>타이틀 곡 뮤직 비디오</h5>
	
	<% if(Integer.parseInt(request.getParameter("title")) == 1) {%>
	<iframe width="784" height="441" src="https://www.youtube.com/embed/Km71Rr9K-Bw" title="NewJeans (뉴진스) &#39;Ditto&#39; Performance Video" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
	<% } else if(Integer.parseInt(request.getParameter("title")) == 2) { %>
	<iframe width="784" height="441" src="https://www.youtube.com/embed/Uq9gPaIzbe8" title="Sam Smith, Kim Petras - Unholy (Official Music Video)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
	<% } %>
	</div>
	

</body>
</html>
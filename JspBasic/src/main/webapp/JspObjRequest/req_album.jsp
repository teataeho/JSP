<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">	
		<table border="1">
			<tr>
				<th><b>앨범 커버</b></th>
				<th><b>가수</b></th>
				<th><b>앨범 제목</b></th>
				<th><b>발매일</b></th>
			</tr>
			<tr>
				<td><img src="./img/newjeans.jpg" alt="뉴진스" width="100px" height="100px"></td>
				<td>뉴진스</td>
				<td>
					<a href="req_album_result.jsp?title=1">Ditto</a>
				</td>
				<td>2023.01.02</td>
			</tr>
			<tr>
				<td><img src="./img/samsmith.jpg?title=2" alt="샘스미스" width="100px" height="100px"></td>
				<td>샘스미스</td>
				<td>
					<a href="req_album_result.jsp">Unholy</a>
				</td>
				<td>2022.09.21</td>
			</tr>
		</table>
	</div>
</body>
</html>
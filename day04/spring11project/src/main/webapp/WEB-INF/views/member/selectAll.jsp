<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selectAll</title>
<jsp:include page="../css.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="../top_menu.jsp"></jsp:include>
	<h1>회원목록</h1>
	
	<div style="padding:5px">
		<form action="m_searchList.do">
			<select name="searchKey" id="searchKey">
				<option value="name">name</option>
				<option value="tel">tel</option>
			</select>
			<input type="text" name="searchWord" id="searchWord" value="ki">
			<input type="submit" value="검색">
		</form>
	</div>

	<table id="memberList">
	<thead>
		<tr>
			<th>num</th>
			<th>id</th>
			<th>pw</th>
			<th>name</th>
			<th>tel</th>
			<th>img</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="vo" items="${vos}">
			<tr>
				<td><a href="m_selectOne.do?num=${vo.num}">${vo.num}</a></td>
				<td>${vo.id}</td>
				<td>${vo.pw}</td>
				<td>${vo.name}</td>
				<td>${vo.tel}</td>
				<td><img width="35px" src="resources/uploadimg/thumb_${vo.save_name}"></td>
			</tr>
		</c:forEach>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="5">1 2 3 4 5</td>
		</tr>
	</tfoot>
	</table>
</body>
</html>
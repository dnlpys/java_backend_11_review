<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selectAll</title>
<jsp:include page="../css.jsp"></jsp:include>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	console.log("onload...");
	$.ajax({
		url : "json_mv_selectAll.do",
//			data:{},
		method:'GET',//default get
//			method:'POST',
		dataType:'json', //xml,text
		success : function(arr) {
			console.log('ajax...success:', arr);//{}
			
//  			let tag_vos = '';
 			
//  			$.each(arr,function(index,vo){
// //	 				console.log(index,vo);
// //	 				console.log(vo.num,vo.id,vo.pw,vo.name,vo.tel);
//  				tag_vos += `
//  					<tr>
//  					<td>				
//  						<a href="m_selectOne.do?num=\${vo.num}">\${vo.num}</a>
//  					</td>
//  					<td>\${vo.id}</td>
//  					<td>\${vo.pw}</td>
//  					<td>\${vo.name}</td>
//  					<td>\${vo.tel}</td>
//  				</tr>
//  				`;
//  			});
			
// 			$("#vos").html(tag_vos);
		},
		error:function(xhr,status,error){
			console.log('xhr.status:', xhr.status);
		}
	});//end $.ajax()...
});//end onload...



</script>	


</head>
<body>
	<jsp:include page="../top_menu.jsp"></jsp:include>
	<h1>영화목록</h1>
	
	<div style="padding:5px">
		<form action="mv_searchList.do">
			<select name="searchKey" id="searchKey">
				<option value="title">title</option>
				<option value="producer">producer</option>
			</select>
			<input type="text" name="searchWord" id="searchWord" value="맨">
			<input type="submit" value="검색">
		</form>
	</div>

	<table id="memberList">
	<thead>
		<tr>
			<th>num</th>
			<th>title</th>
			<th>price</th>
			<th>producer</th>
			<th>img</th>
		</tr>
	</thead>
	<tbody>
<%-- 		<c:forEach var="vo" items="${vos}"> --%>
<!-- 			<tr> -->
<%-- 				<td><a href="mv_selectOne.do?num=${vo.num}">${vo.num}</a></td> --%>
<%-- 				<td>${vo.title}</td> --%>
<%-- 				<td>${vo.price}</td> --%>
<%-- 				<td>${vo.producer}</td> --%>
<%-- 				<td><img width="35px" src="resources/uploadimg/thumb_${vo.save_name}"></td> --%>
<!-- 			</tr> -->
<%-- 		</c:forEach> --%>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="5">1 2 3 4 5</td>
		</tr>
	</tfoot>
	</table>
</body>
</html>
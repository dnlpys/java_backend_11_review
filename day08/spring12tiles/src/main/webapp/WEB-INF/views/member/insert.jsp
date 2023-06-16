<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member insert</title>
<link href="resources/content.css" rel="stylesheet" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js">
	
</script>
<script>
	$(function() {
		var isCheck = true;
		$("button").click(function() {
			$.ajax({
				type : "post",
				url : "m_idcheck.do",
				data : {
					m_id : $("#m_id").val()
				},
				dataType : "json",
				success : function(responseData) {
					$("#result").text(responseData.result);
					if ($("#result").text() === 'UnAvailable') {
						isCheck = true;
					} else {
						isCheck = false;
					}
				},
				error : function() {
					alert("error");
				}
			});
			return false;
		});
		$("form").submit(function() {
			console.log(isCheck);
			if (isCheck) {
				alert("아이디 중복을 체크하세요.");
				return false;
			}

			if ($("#m_imgName").val().length == 0) {
				alert("프로필 이미지를 첨부하세요.");
				return false;
			}

		});
	});
</script>

</head>
<body>
	<header>
		<h1>m_insert</h1>
	</header>
	<section>
		<form:form action="m_insertOk.do" method="post"
			enctype="multipart/form-data" modelAttribute="uploadForm">
			<label>m_id:</label>
			<input type="text" name="m_id" id="m_id" value="test" />
			<button>중복체크</button>
			<span id="result"></span>
			<br />
			<label>m_pw</label>
			<input type="text" name="m_pw" value="hi123456" />
			<br />
			<label>m_name:</label>
			<input type="text" name="m_name" value="KIM" />
			<br />
			<label>m_tel:</label>
			<input type="text" name="m_tel" value="010-8888-8888" />
			<br />
			<label>m_imgName:</label>
			<input type="file" name="multipartFile" id="m_imgName" />
			<br />
			<input type="submit" value="INSERT OK" />
		</form:form>
	</section>
</body>
</html>
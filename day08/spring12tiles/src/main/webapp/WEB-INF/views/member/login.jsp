<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member login</title>
<link href="resources/style.css" rel="stylesheet" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js">
	
</script>
<script>
	$(function() {
		$("form").submit(function() {
			if ($("#m_id").val().length == 0) {
				alert("ID를 하세요.");
				return false;
			}
			if ($("#m_pw").val().length == 0) {
				alert("비번을 하세요.");
				return false;
			}

		});
	});
</script>

</head>
<body>
	<header>
		<h1>HOME</h1>
	</header>
	<section>
		<form action="m_loginOk.do" method="post">
			<label>아이디</label> <input type="text" name="m_id" id="m_id"
				value="yangssem" /> <label>비번</label> <input type="password"
				name="m_pw" value="hi123456" /> <input type="submit" value="LOGIN" />
		</form>
	</section>
</body>
</html>
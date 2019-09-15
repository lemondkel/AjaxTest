<%--
  Created by IntelliJ IDEA.
  User: l2jong
  Date: 2019-09-15
  Time: 오후 11:30
  To change this template use File | Settings | File Templates.
  XMLHttpRequest 객체를 구하는 자바스크립트 코드
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<title>$Title$</title>
</head>
<body>
<script type="text/javascript" src="getXMLHttpRequest.js"></script>
<script type="text/javascript">
	var httpRequest = getXMLHttpRequest();
	httpRequest.onreadystatechange = callbackFunction;
	httpRequest.open("GET", "/Server1.jsp", true);
	httpRequest.send(null);

	function callbackFunction() {
		// 서버로부터 응답이 왔으므로 알맞은 작업을 수행
		if(httpRequest.readyState === 1 || httpRequest.readyState === 2
			|| httpRequest.readyState === 3) {
			// 작업중
		} else if (httpRequest.readyState === 4) {
			// 끝
			if (httpRequest.status === 200) {
				// 정상
				var data = httpRequest.responseText;
				console.log(data);
			} else {
				// Error
				alert("Error");
			}
		}
	}
</script>
</body>
</html>

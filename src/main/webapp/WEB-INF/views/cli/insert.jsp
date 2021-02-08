<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객정보 입력창</title>
</head>
<body>
<form id="ClientInsertForm" name="ClientInsertForm" onsubmit="ClientInsertcheck()">
<table border="1" >
<caption><b>고객정보 저장</b></caption>
 <colgroup>
  <col width=100/>
  <col width=100/>
 </colgroup>

 <tbody>
 
  <tr>
   <th>고객아이디</th>
   <td>
    <input type ="text" id="cliId" name="cliId" maxlength=50 value=""/>
   </td>
  </tr>
  <tr>
   <th>고객이름</th>
   <td>
    <input type ="text" id="name" name="name" maxlength=50 value=""/>
   </td>
  </tr>
  <tr>
   <th>성별(M/F)</th>
   <td>
    <input type ="text" id="gender" name="gender" maxlength=50 value=""/>
   </td>
  </tr>
  <tr>
   <th>연락처</th>
   <td>
    <input type ="text" id="phoneNum" name="phoneNum" maxlength=50 value=""/>
   </td>
  </tr>
  <tr>
   <th>생년월일<br>('-'는 생략)</th>
   <td>
    <input type ="text" id="regDate" name="regDate" maxlength=50 value=""/>
   </td>
  </tr>
 </tbody>
</table>
<p>
 <input type="submit" id="insert-btn" value="입력"/>
 <input type="button" value="취소" onclick="history.back(-1)">
 <input type="button" value="홈으로" onclick="history.back(-1)">
</p>

</form>

<script>
$('#insert-btn').click(function(e){
	e.preventDefault()
	$.ajax({
		url:'/gwland/client/insert',
		type:'POST',
		data:JSON.stringify({
			cliId: $('#cliId').val(),
			name: $('#name').val(),
			gender: $('#gender').val(),
			phoneNum: $('#phoneNum').val(),
			regDate: $('#regDate').val()
		}),
		dataType:'json',
		contentType:'application/json',
		success: 
			function(d){
			console.log(d)
			if(d.message === "SUCCESS"){
				alert("고객정보를 성공적으로 등록하셨습니다.")
			}else{
				alert("고객정보 입력을 실패하셨습니다.")
			}
		},
		error: function(e){
			alert("다시 입력해주세요.")
		}
	})
})
</script>
</body>
</html>
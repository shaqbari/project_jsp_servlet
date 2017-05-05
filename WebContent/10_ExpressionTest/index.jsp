<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
	table{
		width:100%;
	}
	.a{
		width:100px;
	}
</style>

</head>
<body>
	<table border="1">
		<thead>
			<tr>
				<td>연산자</td>
				<td>예시</td>			
			</tr>			
		</thead>
		<tbody>
			<tr>
				<td class="a">+</td>
				<td>\${10+100}=${10+100}</td>			
			</tr>	
			<tr>
				<td class="a">-</td>
				<td>\${10-100} = ${10-100}</td>			
			</tr>	
			<tr>
				<td class="a">*</td>
				<td>\${10*100} = ${10*100}</td>			
			</tr>
			<tr>
				<td class="a">/</td>
				<td>\${10/100} = ${10/100}</td>			
			</tr>
			<tr>
				<td class="a">&lt;</td>
				<td>\${10<100} = ${10<100}</td>			
			</tr>
			<tr>
				<td class="a">mod 나머지</td>
				<td>\${10 mod 100} = ${10 mod 100}</td>			
			</tr>
			<tr>
				<td class="a">?:</td>
				<td>\${10 > 100 ? "참":"거짓"} = ${10 > 100? "참":"거짓"}</td>			
			</tr>
				
		</tbody>
	</table>
</body>
</html>
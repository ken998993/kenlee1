<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>企業結束營業資料</title>
<style>
form {
	margin: 0 auto;
	width: 600px;
}
.smallbox{
 
  margin: 0 auto;
	width: 200px;
	
	
}

</style>
</head>

<body>
<!-- 	<form name="insertMemberFormA" action="member.do" method="POST"> -->
<form name="insertMemberFormA" action="Update.do" method="POST">
		<table border="1">
			<thead>
				<tr bgcolor='tan'>
					<th height="60" colspan="2" align="center">企業結束營業資料</th>
				</tr>
			</thead>
			<tbody>
				<tr bgcolor='tan'>
					<td width="120" height="40">ID:</td>
					<td width="600" height="40" align="left"><input id='num'
						style="text-align: left" name="mId" value="${param.mId}" type="text" size="14">
						<div style="color:#FF0000; font-size:60%; display: inline">${ErrorMsg.id2}</div>
					</td>	
				</tr>
				<tr bgcolor='tan'>
					<td width="120" height="40">TaxID:</td>
					<td width="600" height="40" align="left"><input style="text-align: left" name="tid" value="${param.tid}" type="text" size="14">
						<div style="color:#FF0000; font-size:60%; display: inline">${ErrorMsg.taxid}</div>
					</td>
				</tr>
				<tr bgcolor='tan'>
					<td width="120" height="40">企業名稱:</td>
					<td width="600" height="40" align="left"><input name="mName" value="${param.mName}"
						type="text" size="20">
						<div style="color:#FF0000; font-size:60%; display: inline">${ErrorMsg.company_name}</div>
					</td>
				</tr>
				<tr bgcolor='tan'>
					<td width="120" height="40">企業住址:</td>
					<td width="600" height="40" align="left"><input
						name="mAddress" value="${param.mAddress}" type="text" size="54">
						<div style="color:#FF0000; font-size:x-small; display: inline">${ErrorMsg.company_location}</div>
					</td>
				</tr>
				<tr bgcolor='tan'>
					<td width="120" height="40">負責人:</td>
					<td width="600" height="40" align="left"><input name="mchairman" value="${param.chairman}"
						type="text" size="20"></td>
				</tr>
					<tr bgcolor='tan'>
					<td width="120" height="40">資本額:</td>
					<td width="600" height="40" align="left"><input name="mcapital" value="${param.capital}"
						type="text" size="20"></td>
				</tr>
				<tr bgcolor='tan'>
					<td width="120" height="40">創立時間:</td>
					<td width="600" height="40" align="left"><input
						name="msetup_date" value="${param.msetup_date}" type="text" size="14">
						<font color='blue'
						size="-1">&nbsp;&nbsp;格式為yyyy-MM-dd</font>
						<div style="color:#FF0000; font-size:x-small; display: inline">${ErrorMsg.setup_date}</div>
					</td>
				<tr bgcolor='tan'>
					<td width="120" height="40">結束時間:</td>
					<td width="600" height="40" align="left"><input
						name="mclose_date" value="${param.mclose_date}" type="text" size="14">
						<font color='blue'
						size="-1">&nbsp;&nbsp;格式為yyyy-MM-dd</font>
						<div style="color:#FF0000; font-size:x-small; display: inline">${ErrorMsg.close_date}</div>
					</td>
				<tr bgcolor='tan'  >
					<td height="50" colspan="2" align="left">
<!-- 					<input type="button" value="新增"> -->
<!-- 					<input type="button" value="刪除"> -->
					<input type="submit" value="送出修改資料">
					<input type="button" value="新增"  onclick="javascript:location.href='InsertCompanyForm.jsp'">
					<input type="button" value="查詢"  onclick="javascript:location.href='SearchPage.jsp'">		
							</td>
			
					
				</tr>
			
			</tbody>
		</table>
			<div style="color:#FF0000; display: inline">${ErrorMsg.exception}</div>
	</form>

</body>
</html>
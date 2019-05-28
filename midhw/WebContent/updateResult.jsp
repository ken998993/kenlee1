<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改成功</title>
</head>
<body>
<h1>公司名稱 ${ CompanyBean.company_name } 的資料修改成功</h1>
負責人	${ CompanyBean.chairman }<br>
編號: 	${ CompanyBean.id }<br>
地址: 	${ CompanyBean.company_location }<br>
資本額	${ CompanyBean.capital }<br>
成立時間	${ CompanyBean.setup_date }<br>
倒閉日期: ${ CompanyBean.close_date }<br>


</body>
</html>
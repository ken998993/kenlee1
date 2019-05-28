
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>企業倒閉新增資料</title>
<style>
body {
	margin: 0px;
	padding: 0px;
	background: #fff url("res/bgcolor.jpg") no-repeat;
	　
	//設定背景圖片的呈現方式
	background-size
	:
	cover;
	　
	//設定背景圖片的填滿方式
}

form {
	margin: 0 auto;
	width: 300px;
	width: 50% display:inline-block;
}

tr {
	background: #fff url("res/bgcolor2.jpg") no-repeat;
}

.smallbox {
	
}

.position {
	display: inline-flex;
	width: 500px;
}

.position1 {
	/* 	display:inline-flex; */
	width: 30%;
	position: relative;
	left: 400px;
}

.form1 {
	margin: 0 auto;
	width: 50%;
	display: inline-block;
}

.a {
	display: flex;
	width: 100%;
	justify-content: center;
}
/* ============================================================================================== 
SED Innovations
https://sed.am
https://mkrtchyan.ga
================================================================================================= */
* {
	margin: 0;
	padding: 0;
}

header {
	background-color: rgba(33, 33, 33, 0.9);
	color: #ffffff;
	display: block;
	font: 14px/1.3 Arial, sans-serif;
	height: 50px;
	position: relative;
	z-index: 5;
}

h2 {
	margin-top: 30px;
	text-align: center;
}

header h2 {
	font-size: 22px;
	margin: 0 auto;
	padding: 10px 0;
	width: 80%;
	text-align: center;
}

header a, a:visited {
	text-decoration: none;
	color: #fcfcfc;
}

@
keyframes move-twink-back {
	from {background-position: 0 0;
}

to {
	background-position: -10000px 5000px;
}

}
@
-webkit-keyframes move-twink-back {
	from {background-position: 0 0;
}

to {
	background-position: -10000px 5000px;
}

}
@
-moz-keyframes move-twink-back {
	from {background-position: 0 0;
}

to {
	background-position: -10000px 5000px;
}

}
@
-ms-keyframes move-twink-back {
	from {background-position: 0 0;
}

to {
	background-position: -10000px 5000px;
}

}
@
keyframes move-clouds-back {
	from {background-position: 0 0;
}

to {
	background-position: 10000px 0;
}

}
@
-webkit-keyframes move-clouds-back {
	from {background-position: 0 0;
}

to {
	background-position: 10000px 0;
}

}
@
-moz-keyframes move-clouds-back {
	from {background-position: 0 0;
}

to {
	background-position: 10000px 0;
}

}
@
-ms-keyframes move-clouds-back {
	from {background-position: 0;
}

to {
	background-position: 10000px 0;
}

}
.stars, .twinkling, .clouds {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	width: 100%;
	height: 100%;
	display: block;
}

.stars {
	background: #000
		url(http://www.script-tutorials.com/demos/360/images/stars.png) repeat
		top center;
	z-index: 0;
}

.twinkling {
	background: transparent
		url(http://www.script-tutorials.com/demos/360/images/twinkling.png)
		repeat top center;
	z-index: 1;
	-moz-animation: move-twink-back 200s linear infinite;
	-ms-animation: move-twink-back 200s linear infinite;
	-o-animation: move-twink-back 200s linear infinite;
	-webkit-animation: move-twink-back 200s linear infinite;
	animation: move-twink-back 200s linear infinite;
}

.clouds {
	background: transparent
		url(http://www.script-tutorials.com/demos/360/images/clouds3.png)
		repeat top center;
	z-index: 3;
	-moz-animation: move-clouds-back 200s linear infinite;
	-ms-animation: move-clouds-back 200s linear infinite;
	-o-animation: move-clouds-back 200s linear infinite;
	-webkit-animation: move-clouds-back 200s linear infinite;
	animation: move-clouds-back 200s linear infinite;
}
</style>
</head>

<body>

	<div class="stars"></div>
	<div class="twinkling"></div>
	<div class="clouds">

		<div class="a">
			<div class="position">
				<
				<!-- 	<form name="insertMemberFormA" action="member.do" method="POST"> -->
				<form name="insertMemberFormA" action="company.do" method="POST">
					<table border="1">
						<thead>
							<tr>
								<th height="60" colspan="2" align="center">企業倒閉新增資料</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td width="120" height="40">ID:</td>
								<td width="600" height="40" align="left"><input id='num'
									style="text-align: left" name="mId" value="${param.mId}"
									type="text" size="14"> <span id="idsp2"></span>
									<div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.id2}</div>
								</td>
							</tr>
							<tr>
								<td width="120" height="40">TaxID:</td>
								<td width="600" height="40" align="left"><input id='tid'
									style="text-align: left" name="tid" value="${param.tid}"
									type="text" size="14"> <span id="idsp3"></span>
									<div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.taxid}</div>
								</td>
							</tr>
							<tr>
								<td width="120" height="40">企業名稱:</td>
								<td width="200" height="40" align="left"><input id='mName'
									name="mName" value="${param.mName}" type="text" size="10">
									<span id="idsp4"></span>
									<div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.company_name}</div>
								</td>
							</tr>
							<tr>
								<td width="120" height="40">企業住址:</td>
								<td width="600" height="40" align="left"><input
									id='mcompanylocation' name="mAddress" value="${param.mAddress}"
									type="text" size="40"> <span id="idsp5"></span>
									<div style="color: #FF0000; font-size: x-small; display: inline">${ErrorMsg.company_location}</div>
								</td>
							</tr>
							<tr>
								<td width="120" height="40">負責人:</td>
								<td width="600" height="40" align="left"><input
									id='mchairman' name="mchairman" value="${param.chairman}"
									type="text" size="20"> <span id="idsp6"></span>
									<div
										style="color: #FF0000; font-size: x-small; display: inline">${ErrorMsg.chairman}</div>
								</td>
							</tr>
							<tr>
								<td width="120" height="40">資本額:</td>
								<td width="600" height="40" align="left"><input
									id='mcapital' name="mcapital" value="${param.capital}"
									type="text" size="20"> <span id="idsp7"></span>
									<div
										style="color: #FF0000; font-size: x-small; display: inline">${ErrorMsg.capital}</div>
								</td>
							</tr>

							<tr>
								<td width="120" height="40">創立時間:</td>
								<td width="600" height="40" align="left"><input
									id='msetupdate' name="msetup_date" value="${param.msetup_date}"
									type="text" size="14"> <span id="idsp8"></span> <font
									color='blue' size="-1">&nbsp;&nbsp;格式為yyyy-MM-dd</font>
									<div
										style="color: #FF0000; font-size: x-small; display: inline">${ErrorMsg.setup_date}</div>
								</td>
							<tr>
								<td width="120" height="40">結束時間:</td>
								<td width="600" height="40" align="left"><input
									id='mclosedate' name="mclose_date" value="${param.mclose_date}"
									type="text" size="14"> <span id="idsp9"></span> <font
									color='blue' size="-1">&nbsp;&nbsp;格式為yyyy-MM-dd</font>
									<div
										style="color: #FF0000; font-size: x-small; display: inline">${ErrorMsg.close_date}</div>
								</td>
							<tr>
								<td height="50" colspan="2" align="left">
									<!-- 					<input type="button" value="新增"> --> <!-- 					<input type="button" value="刪除"> -->
									<input type="submit" value="新增"> <input type="button"
									value="修改"
									onclick="javascript:location.href='UpateCompanyForm.jsp'">
									
								</td>


							</tr>

						</tbody>
					</table>
					<div style="color: #FF0000; display: inline">${ErrorMsg.exception}</div>
				</form>
			</div>
			<div class="position">
				<form class="smallbox" name="insertcompanyData"
					action="deleteCompany.do" method="POST">
					<table border='1'>
						<thead>
							<tr bgcolor='white'>
								<th height="60" colspan="2" align="center">刪除第幾筆資料</th>
							</tr>
						</thead>
						<tbody>
							<tr bgcolor='white'>
								<td width="120" height="40">ID:</td>
								<td width="400" height="40" align="left"><input id='deletenum'
									style="text-align: left" name="mId1" type="text" size="15">

									<form>
										<span id="show"></span>
									</form>
									<div style="color: black; font-size: 60%; display: inline">${ErrorMsg.id3}</div>
								</td>
							</tr>


							<tr bgcolor='white'>
								<td height="50" colspan="2" align="center"><input
									type="submit" value="送出"></td>
							</tr>
							<tr bgcolor='white'>
								<td width="120" height="40">結果:</td>
								<td><span style="font-family: 微軟正黑體; font-size: 1em;">${DeleteCmopanyInfo}</span>
								</td>
								<td><br>


<%-- 									<div style="color: #FF0000; display: inline">${ErrorMsg.id3}</div> --%>
								</td>
						</tbody>
					</table>
<%-- 					<div style="color: #000000; display: inline">${ErrorMsg.id3}</div> --%>
				</form>
				<br>




				<!-- 	<div class="position"> -->
				<div>
					<form name="insertcompanyData" action="SearchCompany.do"
						method="POST">
						<table>
							<thead>
								<tr bgcolor='tan'>
									<th height="60" colspan="2" align="center">查詢公司資料</th>
								</tr>
							</thead>
							<tbody>
								<tr bgcolor='tan'>
									<td width="120" height="40">ID:</td>
									<td width="400" height="40" align="left"><input id='num'
										style="text-align: left" name="mId" value="${param.mId}"
										type="text" size="15"> <span id="mId"></span> <script>
											var xhttp = new XMLHttpRequest();
											xhttp.onreadystatechange = function() {
												if (xhttp.readyState == 4
														&& xhttp.status == 200)
													document
															.getElementById("demo").innerHTML = this.responseText;

											}

											xhttp.open("GET", "res/info.txt",true);
													
											xhttp.send();
										</script>

										<form>
											<span id="show"></span>
										</form>
										<div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.searcherror}</div>
									</td>
								</tr>

								<tr bgcolor='tan'>
									<td height="50" colspan="2" align="center"><input
										type="submit" value="送出"> 
										<input type="button" value="修改"
										onclick="javascript:location.href='UpateCompanyForm.jsp'">
									</td>

								</tr>

							</tbody>
						</table>
						<div style="color: #FF0000; display: inline">${ErrorMsg.searcherror}</div>
					</form>

				</div>
			</div>
		</div>
		<div class="position1">
			<span style="font-family: 微軟正黑體; font-size: 1em;" id="clear">${SearchCmopanyInfo}</span>
			<input type="button" value="清除"
				style="width: 140px; height: 50px;"
				onclick="clearSetting()">
			<div style="color: #FF0000; display: inline">${ErrorMsg.exception}</div>
			<br>
		</div>
	</div>



	<script>
		// 	id
		document.addEventListener("DOMContentLoaded", function() {
			document.getElementById("num").addEventListener("blur", chkid); //事件繫結            
		});
		//  taxid
		document.addEventListener("DOMContentLoaded", function() {
			document.getElementById("tid").addEventListener("blur", chktaxid); //事件繫結            
		});
		//  companyname
		document.addEventListener("DOMContentLoaded",
				function() {
					document.getElementById("mName").addEventListener("blur",
							chkmName); //事件繫結            
				});
		//  companylocation
		document.addEventListener("DOMContentLoaded", function() {
			document.getElementById("mcompanylocation").addEventListener(
					"blur", chkmcompanylocation); //事件繫結            
		});
		//  chairman
		document.addEventListener("DOMContentLoaded", function() {
			document.getElementById("mchairman").addEventListener("blur",
					chkmchairman); //事件繫結            
		});
		//  capital
		document.addEventListener("DOMContentLoaded", function() {
			document.getElementById("mcapital").addEventListener("blur",
					chkmcapital); //事件繫結            
		});
		// 	setupdate
		document.addEventListener("DOMContentLoaded", function() {
			document.getElementById("msetupdate").addEventListener("blur",
					chkmsetupdate); //事件繫結            
		});
		// 	closedate
		document.addEventListener("DOMContentLoaded", function() {
			document.getElementById("mclosedate").addEventListener("blur",
					chkmclosedate); //事件繫結            
		});

		function chkid() {
			var str = document.getElementById("num").value;
			var pattern = new RegExp('[0-9]+');

			if (str.length === 0) {
				console.log("error");
				document.getElementById("idsp2").innerHTML = "不能為空值";

			} else if (!str.match(pattern)) {
				document.getElementById("idsp2").innerHTML = "必須為數字";
			} else {

				document.getElementById("idsp2").innerHTML = "<img src='res/pic12.png'/>";
			}
		}
		// 	}else{document.getElementById("idsp2").innerHTML =
		// 		  "正確"; 

		// 		'<img src="'+path+'" />';
		// 	}	
		// 	}else if((contain(document.form.NAME.value,   "%\(\)><")) || 
		// 			(contain(document.form.MESSAGE.value,   "%\(\)><")))
		// 		document.getElementById("idsp2").innerHTML =
		// 	          "不能是特殊符號"; 

		function chktaxid() {
			var str = document.getElementById("tid").value;
			var pattern = new RegExp('[0-9]{6}');

			if (str.length === 0) {
				console.log("error");
				document.getElementById("idsp3").innerHTML = "不能為空值";

			} else if (!str.match(pattern)) {
				document.getElementById("idsp3").innerHTML = "必須為數字";
			} else {

				document.getElementById("idsp3").innerHTML = "<img src='res/pic12.png'/>";
			}
		}

		function chkmName() {
			var str = document.getElementById("mName").value;
			var pattern = new RegExp('[A-Za-z]+');

			if (str.length === 0) {
				console.log("error");
				document.getElementById("idsp4").innerHTML = "不能為空值";

				// 				}else if(!str.match(pattern)){
				// 					document.getElementById("idsp4").innerHTML =
				// 						"必須為英文"; 
			} else {

				document.getElementById("idsp4").innerHTML = "<img src='res/pic12.png'/>";
			}
		}
		function chkmcompanylocation() {
			var str = document.getElementById("mcompanylocation").value;
			var pattern = new RegExp('[A-Za-z]+');

			if (str.length === 0) {
				console.log("error");
				document.getElementById("idsp5").innerHTML = "不能為空值";

				// 				}else if(!str.match(pattern)){
				// 					document.getElementById("idsp5").innerHTML =
				// 						"必須為英文"; 
			} else {

				document.getElementById("idsp5").innerHTML = "<img src='res/pic12.png'/>";
			}
		}
		function chkmchairman() {
			var str = document.getElementById("mchairman").value;
			var pattern = new RegExp('[A-Za-z]+');

			if (str.length === 0) {
				console.log("error");
				document.getElementById("idsp6").innerHTML = "不能為空值";

				// 				}else if(!str.match(pattern)){
				// 					document.getElementById("idsp6").innerHTML =
				// 						"必須為英文"; 
			} else {

				document.getElementById("idsp6").innerHTML = "<img src='res/pic12.png'/>";
			}
		}
		function chkmcapital() {
			var str = document.getElementById("mcapital").value;
			var pattern = new RegExp('[0-9]+');

			if (str.length === 0) {
				console.log("error");
				document.getElementById("idsp7").innerHTML = "不能為空值";

			} else if (!str.match(pattern)) {
				document.getElementById("idsp7").innerHTML = "必須為數字";
			} else {

				document.getElementById("idsp7").innerHTML = "<img src='res/pic12.png'/>";
			}
		}
		function chkmsetupdate() {
			var str = document.getElementById("msetupdate").value;
			var pattern = new RegExp('[0-9]+');
			var reg = /^[1-9]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/;
			var regExp = new RegExp(reg);

			if (str.length === 0) {
				console.log("error");
				document.getElementById("idsp8").innerHTML = "不能為空值";

			} else if (!regExp.test(str)) {
				document.getElementById("idsp8").innerHTML = "日期格式為yyyy-mm-dd";
			} else {

				document.getElementById("idsp8").innerHTML = "<img src='res/pic12.png'/>";
			}
		}
		function chkmclosedate() {
			var str = document.getElementById("mclosedate").value;
			var pattern = new RegExp('[0-9]+');
			var reg = /^[1-9]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/;
			var regExp = new RegExp(reg);

			if (str.length === 0) {
				console.log("error");
				document.getElementById("idsp9").innerHTML = "不能為空值";

			} else if (!regExp.test(str)) {
				document.getElementById("idsp9").innerHTML = "日期格式為yyyy-mm-dd";
			} else {

				document.getElementById("idsp9").innerHTML = "<img src='res/pic12.png'/>";
			}
		}
		function clearSetting(){
			document.getElementById("clear").innerHTML="";
		}
	</script>


</body>
</html>
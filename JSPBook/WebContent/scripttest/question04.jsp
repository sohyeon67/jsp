<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>쉽게 배우는 JSP 웹 프로그래밍</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
	<%@ include file="/pageModule/headPart.jsp" %>
</head>
<body>
	<%@ include file="/pageModule/header.jsp" %>

    <div class="breadcrumbs" style="padding-top:40px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">JSP 개요</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH01</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <section class="about-us section">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-12 col-md-12 col-12">
                    <div class="content-left wow fadeInLeft" data-wow-delay=".3s">
						<div class="table-responsive">
							<caption>앞(SEM PC 자리)</caption>
							<table class="table table-bordered" style="text-align:center; font-size:24px;">
								<tr width="100%" height="80px">
									<td width="10%">김지호</td>
									<td width="10%">홍창용</td>
									<td width="10%">김선욱</td>
									<td width="10%">김영진</td>
									<td width="20%"></td>
									<td width="10%">이건정</td>
									<td width="10%">최룡</td>
									<td width="10%">강민택</td>
									<td width="10%">강진석</td>
								</tr>
								<tr height="80px">
									<td>장낙훈</td>
									<td>최성동</td>
									<td>한동욱</td>
									<td>송시운</td>
									<td></td>
									<td>김민채</td>
									<td>정소현</td>
									<td>최예원</td>
									<td></td>
								</tr>
								<tr height="80px">
									<td>박상협</td>
									<td>전승표</td>
									<td>민지현</td>
									<td></td>
									<td></td>
									<td>전민균</td>
									<td>하지웅</td>
									<td></td>
									<td></td>
								</tr>
								<tr height="80px">
									<td></td>
									<td></td>
									<td>신찬섭</td>
									<td>서강민</td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</table>
							<hr/>
							<div class="progress" style="height: 40px;">
								<div class="progress-bar progress-bar-striped" id="myBar" role="progressbar" aria-valuenow="60" aria-valuemin="0"
									aria-valuemax="100" style="width: 1px; height: 40px;">
									<span class="sr-only">60% Complete</span>
								</div>
							</div>
							<br/>
							<h4 id="txt"></h4>
							<button type="button" onclick="move()" style="padding:12px;border:none;cursor:pointer;">출력</button>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %>
</body>
<script type="text/javascript">
var nameArr = [];
var tdElement = $("td");
var count = 1;
var name = "";
function move() {
	for(var i=0; i<tdElement.length; i++) {
		if(tdElement.eq(i).text() != "") {	// 이름들 배열에 담기
			nameArr.push(tdElement.eq(i).text());
		}
	}
	
	var interval = setInterval(ranName, 1000);
	
	setInterval(() => clearInterval(interval), 10000);
	setInterval(() => $("#txt").html(name), 10000);
}

function ranName() {
	var rnd = parseInt(Math.random() * nameArr.length) + 1;
	for(var i=0; i<tdElement.length; i++) {
		if(tdElement.eq(i).text() == nameArr[rnd]) {
			tdElement.eq(i).css("background-color", "yellow");
		} else {
			tdElement.eq(i).css("background-color", "");
		}
	}
	$("#myBar").css("width", count*10 + "%");
	$(".sr-only").text(count*10 + "% Complete");
	count++
	name = nameArr[rnd];
}

</script>
</html>
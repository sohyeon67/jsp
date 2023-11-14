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
						<div class="card">
							<div class="card-body">
								<p class="card-title text-info">DAEDEOK COFFEE MENU</p>
								
								<div class="row">
									<div class="col-md-4 grid-margin grid-margin-md-0 stretch-card">
										<div class="card">
											<div class="card-body">
												<h4 class="card-title">COFFEE & ESPRESSO</h4>
												<ul class="list-ticked">
													<li>
														스타벅스 돌체 라떼 <code class="text-primary">5600</code>원
													</li>
													<li>
														화이트 초콜릿 라떼 <code class="text-primary">5600</code>원
													</li>
													<li>
														카라멜 마끼아또 <code class="text-primary">5600</code>원
													</li>
													<li>
														볼론드 에스프레소 라떼 <code class="text-primary">5600</code>원
													</li>
													<li>
														카페 모카 <code class="text-primary">5100</code>원
													</li>
													<li>
														카푸 치노 <code class="text-primary">4600</code>원
													</li>
													<li>
														카페 라떼 <code class="text-primary">4600</code>원
													</li>
													<li>
														오늘의 커피 <code class="text-primary">3800</code>원
													</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="col-md-4 grid-margin grid-margin-md-0 stretch-card">
										<div class="card">
											<div class="card-body">
												<h4 class="card-title">TEAVANA</h4>
												<ul class="list-arrow">
													<li>
														제주 유기농 말차로 만든 라떼 <code class="text-primary">6100</code>원
													</li>
													<li>
														유자 민트 티 <code class="text-primary">5600</code>원
													</li>
													<li>
														라임 패션 티 <code class="text-primary">5600</code>원
													</li>
													<li>
														자몽 허니 블랙 티 <code class="text-primary">5100</code>원
													</li>
													<li>
														차이 티 라떼 <code class="text-primary">5100</code>원
													</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="col-md-4 grid-margin grid-margin-md-0 stretch-card">
										<div class="card">
											<div class="card-body">
												<h4 class="card-title">DAEDEOK FIZZIO</h4>
												<ul class="list-star">
													<li>
														요거트 주스 & 망고 젤리 피지오 <code class="text-primary">6100</code>원
													</li>
													<li>
														쿨 라임 피지오 <code class="text-primary">6600</code>원
													</li>
													<li>
														패션 망고 티 레모네이드 피지오 <code class="text-primary">7100</code>원
													</li>
													<li>
														그린 티 레모네이드 피지오 <code class="text-primary">7100</code>원
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-8 grid-margin grid-margin-md-0 stretch-card">
										<div class="card">
											<div class="card-body">
												<h4 class="card-title">주문 진행표</h4>
												<div class="table-responsive">
													<table class="table table-bordered text-center" width="100%">
														<tr height="100px">
															<td width="20%">
																<p data-menu="돌체 라떼">
																돌체 라떼<br/>
																</p>
																<code class="text-primary">5600</code>
															</td>
															<td width="20%">
																<p data-menu="화이트 초콜릿 라떼">
																화이트<br/>
																초콜릿 라떼<br/>
																</p>
																<code class="text-primary">5600</code>
															</td>
															<td width="20%">
																<p data-menu="카라멜 마끼아또">
																카라멜<br/>
																마끼아또<br/>
																</p>
																<code class="text-primary">5600</code>
															</td>
															<td width="20%">
																<p data-menu="볼론드 에스프레소 라떼">
																볼론드<br/>
																에스프레소 라떼<br/>
																</p>
																<code class="text-primary">5600</code>
															</td>
															<td width="20%">
																<p data-menu="카페모카">
																카페모카<br/>
																</p>
																<code class="text-primary">5100</code>
															</td>
														</tr>
														<tr height="100px">
															<td width="20%">
																<p data-menu="카푸치노">
																카푸치노<br/>
																</p>
																<code class="text-primary">4600</code>
															</td>
															<td width="20%">
																<p data-menu="카페 라떼">
																카페 라떼<br/>
																</p>
																<code class="text-primary">4600</code>
															</td>
															<td width="20%">
																<p data-menu="오늘의 커피">
																오늘의 커피<br/>
																</p>
																<code class="text-primary">3800</code>
															</td>
															<td width="20%">
															</td>
															<td width="20%">
															</td>
														</tr>
														<tr height="100px">
															<td width="20%">
																<p data-menu="제주 유기농 말차로 만든 라떼">
																제주 유기농<br/>
																말차로<br/>
																만든 라떼<br/>
																</p>
																<code class="text-primary">6100</code>
															</td>
															<td width="20%">
																<p data-menu="유자민트 티">
																유자<br/>
																민트 티<br/>
																</p>
																<code class="text-primary">5600</code>
															</td>
															<td width="20%">
																<p data-menu="라임 패션 티">
																라임<br/>
																패션 티<br/>
																</p>
																<code class="text-primary">5600</code>
															</td>
															<td width="20%">
																<p data-menu="자몽 허니 블랙 티">
																자몽 허니<br/>
																블랙 티<br/>
																</p>
																<code class="text-primary">5100</code>
															</td>
															<td width="20%">
																<p data-menu="차이 티 라떼">
																차이<br/>
																티 라떼<br/>
																</p>
																<code class="text-primary">5100</code>
															</td>
														</tr>
														<tr height="100px">
															<td width="20%">
																<p data-menu="망고 젤리 피지오">
																망고 젤리<br/>
																피지오<br/>
																</p>
																<code class="text-primary">6100</code>
															</td>
															<td width="20%">
																<p  data-menu="쿨 라임 피지오">
																쿨<br/>
																라임 피지오<br/>
																</p>
																<code class="text-primary">6600</code>
															</td>
															<td width="20%">
																<p data-menu="레모네이드 피지오">
																레모네이드<br/>
																피지오<br/>
																</p>
																<code class="text-primary">7100</code>
															</td>
															<td width="20%">
																<p data-menu="그린티 피지오">
																그린 티<br/>
																피지오<br/>
																</p>
																<code class="text-primary">7100</code>
															</td>
															<td width="20%">
															</td>
														</tr>
													</table>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-4 grid-margin grid-margin-md-0">
										<div class="card">
											<div class="card-body">
												<h4 class="card-title">주문 내역</h4>
												<br/>
												<h6 id="ord-id">A-001</h6>
												<div class="table-responsive">
													<table class="table table-bordered text-center" width="100%" >
														<thead>
															<tr style='font-size:9px;'>
																<th>메뉴명</th>
																<th>수량</th>
																<th>금액</th>
															</tr>
														</thead>
														<tbody id="order-table">
														
														</tbody>
													</table>
												</div>
												<div>
													<h5>총 금액 : <font id="total"></font></h5>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
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
$(function() {
	// element.data("menu") 돌체라떼 가져와짐
	// 카페 포스기기 만들어보기
	// 포스 메뉴판을 보고 메뉴를 추가하여 주문한 내역과 금액을 출력해보자
	var dataArr = new Array();		// 주문시 음료를 저장할 배열 공간
	var countArr = new Array();		// 주문시 저장한 음료의 카운트 수 배열 공간
	
	$("td").on("click", function() {
		var price = 0;
		var dataFlag = false;
		var html = "";
		var orderMenu = $(this).find("p").data("menu");	// 클릭한 주문명
		var orderPrice = $(this).find("code").text();	// 클릭한 음료의 금액
		
		if(dataArr.length == 0) {	// 음료를 저장할 공간이 0일때(첫 주문)
			dataArr.push(orderMenu + "_" + orderPrice);
			countArr.push(1);
		} else {	// 이미 저장된 데이터가 있을 때
			// 음료를 저장하기 위한 dataArr 길이 만큼 반복문을 돌린다
			// 같은 음료를 주문할 시 새로운 공간에 데이터를 추가하는게 아니라
			// 같은 음료의 카운트를 증가시킨다.
			for(var i=0; i<dataArr.length; i++) {
				if(orderMenu == dataArr[i].split("_")[0]) {
					countArr[i]++;
					dataFlag = true;	// 주문한 음료가 있을때 flag 변경(스위칭)
					break;
				} else {
					countArr.push(1);
				}
			}
		
			if(dataFlag == false) {	// 새로운 주문 시
				dataArr.push(orderMenu + "_" + orderPrice);
			}
		}
		
		// 주문표를 dataArr 길이만큼 다시 초기화해준다.
		for(var i=0; i<dataArr.length; i++) {
			html += "<tr class='menu'>";
			html += "	<td style='font-size:9px;'>";
			html += "		" + dataArr[i].split("_")[0];
			html += "	</td>";
			html += "	<td style='font-size:9px;'>";
			html += "		" + countArr[i];
			html += "	</td>";
			html += "	<td style='font-size:9px;'>";
			html += "		" + dataArr[i].split("_")[1];
			html += "	원</td>";
			html += "</tr>";
			price += parseInt(dataArr[i].split("_")[1]) * countArr[i];
			
			$("#order-table").html(html);
			$("#total").html(price);
		}
      
    });
	
});

</script>
</html>
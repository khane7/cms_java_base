<%@page language="java" contentType="text/html;charset=utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!-- s : header -->
<jsp:include page="../top.jsp"/>
<!-- e : header -->

<!-- s : contents -->
<div id="contents" class="clearfix">
	<div class="inner-layout">
		<!-- s : top nav -->
		<div class="top-sub-nav clearfix">
			<h2>생활관 전경</h2>

			<ul class="nav">
				<li><a href="#"><img src="/images/sub/icon_home.gif" alt="홈"></a></li>
				<li><a href="#">생활관 소개</a></li>
				<li class="active"><a href="#">생활관 전경</a></li>
			</ul>
		</div>
		<!-- e : top nav -->

		<!-- s : top banner -->
		<div class="sub-top-bnr">
			<img src="/images/sub/bnr_top.jpg" alt="">
		</div>
		<!-- e : top banner -->

		<!-- s : sub contents -->
		<div class="sub-contents clearfix">

			<table class="table-center dor-gallery">
				<tbody>
				<tr>
					<td>
						<img src="/images/sub/image001.jpg" alt="" data-desc="학교에서 바라본 생활관 모습이네요 바로 앞이 강이라 여름에는 무지 시원하고 겨울에는 작은 낭만을 즐길 수 있을 듯 하네요!">

						<p>생활관 전경</p>
					</td>
					<td>
						<img src="/images/sub/image003.jpg" alt="" data-desc="새롭게 단장한 생활관 모습이네요…여러분의 꿈을 키우기에 아주 좋은 공간이 아닐까요??">

						<p>생활관 전경</p>
					</td>
					<td>
						<img src="/images/sub/image005.jpg" alt="" data-desc="수 많은 여러분들이 오고 가는 바로 그 문이네요…항상 이 문을 지날 때면 행복했으면 하네요.!!!">

						<p>개나리관 전경</p>
					</td>
					<td>
						<img src="/images/sub/image007.jpg" alt="" data-desc="생활관의 정문입니다. 수많은 관생들이 이 곳을 지나갔는데, 그럴 때마다 항상 그들에게 좋은일만 있었으면 하는 생각입니다.">

						<p>생활관 정문</p>
					</td>
				</tr>

				<tr>
					<td>
						<img src="/images/sub/image009.jpg" alt="" data-desc="기숙사에서 바라본 학교의 모습입니다.">

						<p>생활관에서 바라본 학교</p>
					</td>
					<td>
						<img src="/images/sub/image011.jpg" alt="" data-desc="1층에 위치하고 있는 생활관 사무실입니다. 여러분이 힘들거나 불편한 점이 있으면, 언제나 가셔서 얘기해주세요. 작은 부분까지 세심하게 배려해주실 것 입니다.">

						<p>사무실</p>
					</td>
					<td>
						<img src="/images/sub/image013.jpg" alt="" data-desc="1층 식당과 같이 위치하고 있는 매점의 모습입니다. 항상 친절하신 아주머니가 여러분들을 자식처럼 대하여 주실 것 입니다. 깊은 밤 출출함은 이 곳에서 해결해 드릴 것 입니다.">

						<p>1층 매점</p>
					</td>
					<td>
						<img src="/images/sub/image015.jpg" alt="" data-desc="1층에 위치하고 있는 식당 내부의 모습입니다. 여러분의 맛있는 식사를 위해서 항상 깔끔한 모습으로 여러분을 맞이하고 있습니다. 1층 식당은 면회하는 장소로도 이용됩니다.">

						<p>학생 식당</p>
					</td>
				</tr>

				<tr>

					<td>
						<img src="/images/sub/image017.jpg" alt="" data-desc="각 호실 내부의 모습입니다. 기본적으로 옷장, 침대, 책상, 책꽂이가 배치되어 있습니다. 물론 인터넷도 가능합니다. 어떻게 꾸미느냐에 따라 다른 어떤 쉼터보다 편하고 안락하게 생활할 수 있습니다.">

						<p>개나리관 호실</p>
					</td>
					<td>
						<img src="/images/sub/image019.jpg" alt="" data-desc="여러분이 생활하는 호실 내부 모습입니다. 각 방에는 침대, 책상, 책꽂이, 옷장이 배치되어 있고, 각 방마다 인터넷이 가능하도록 되어있습니다.">

						<p>개나리관 호실</p>
					</td>
					<td>
						<img src="/images/sub/image021.jpg" alt="" data-desc="각 층에 중앙에 위치하고 있는 휴게실입니다. 대형 TV와 편안한 의자들이 배치되어 있습니다.<br>늦은 밤에는 다른 사람에게 방해가 되지 않도록 신경 써주세요. 여러분의 공간입니다.">

						<p>각층 휴게실 모습</p>
					</td>
					<td>
						<img src="/images/sub/image023.jpg" alt="" data-desc="각층 모습 중에서 층 복도의 모습입니다. 각 호실들이 깔끔하게 위치하고 있어, 방을 찾거나,  이용하기에 편리합니다. 복도는 항상 깨끗한 모습으로 여러분에게 비칠 것입니다.">

						<p>각층 복도 모습</p>
					</td>
				</tr>


				<tr>
					<td>
						<img src="/images/sub/image033.jpg" alt="" data-desc="지하 1층에 위치한 도서관입니다. 24시간 개방하고 있으며, 여러분들의 작은 불편까지도 항상 신경 쓰고 있습니다. 꿈을 이루기 위한 작은 공간이었으면 하네요.">

						<p>도서관</p>
					</td>
					<td>
						<img src="/images/sub/image037.jpg" alt="" data-desc="">

						<p>개나리관 화장실</p>
					</td>
					<td>
						<img src="/images/sub/image039.jpg" alt="" data-desc="">

						<p>체력단련실</p>
					</td>
				</tr>
				</tbody>
			</table>

		</div>
		<!-- e : sub contents -->

	</div>
</div>
<!-- e : contents -->

<!-- s : layer popup -->
<div class="layer dor-gallery-layer hidden">
	<h4>title</h4>

	<div><img src="" id="show-image"></div>
	<p id="image-desc"></p>

	<div class="btn-close tc">CLOSE</div>
</div>
<!-- e : layer popup -->

<!-- s : footer -->
<jsp:include page="../bottom.jsp"/>
<!-- e : footer -->


<script>
	$(function () {
		$("body").on("click", ".dor-gallery img", function () {
			var _title = $(this).next().html();
			var _desc = $(this).data('desc');
			var _img = $(this).attr("src");

			$(".dor-gallery-layer h4").html(_title);
			$(".dor-gallery-layer #show-image").attr("src", _img);
			$(".dor-gallery-layer #image-desc").html(_desc);

			$(".dor-gallery-layer").bPopup();
		});

		$(".btn-close").click(function () {
			$(".dor-gallery-layer").bPopup().close();
		});

		$(".other-site").click(function () {
			$(".link-list").toggle();
		});
	});
</script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file="../includes/header.jsp" %>

<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">심리테스트 목록</h1>
        </div>
    </div>

    <div class="row">
        <c:forEach var="test" items="${list}">
            <div class="col-md-4 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="${test.imagePath != null ? test.imagePath : '/resources/images/default-test.png'}"
                         alt="${test.title}" style="width: 100%; height: 200px; object-fit: cover;">
                    <div class="caption">
                        <h3><c:out value="${test.title}" /></h3>
                        <p><c:out value="${test.description != null ? test.description : '간단한 심리테스트 설명입니다.'}" /></p>
                        <p>
                            <a href="/test/get?testId=${test.testId}" class="btn btn-primary">테스트 시작!</a>
                        </p>
                    </div>
                </div>
            </div>
        </c:forEach>

        <c:if test="${empty list}">
            <div class="col-lg-12">
                <p>아직 등록된 심리테스트가 없습니다.</p>
            </div>
        </c:if>
        <div>빈박스</div>
    </div>
    <div class='pull-right'>
        <ul class="pagination">
            <c:if test="${pageMaker.prev}">
                <li class="paginate_button previous"><a href="${pageMaker.startPage-1}">이전</a></li>
            </c:if>
            <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                <li class="paginate_button ${pageMaker.cri.pageNum == num ? "active" : ""}"><a href="${num}">${num}</a></li>
            </c:forEach>
            <c:if test="${pageMaker.next}">
                <li class="paginate_button next"><a href="${pageMaker.endPage+1}">다음</a></li>
            </c:if>
        </ul>
    </div>

    <form id="actionForm" action="/test/list" method="get">
        <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}" />
        <input type="hidden" name="amount" value="${pageMaker.cri.amount}" />
        <input type="hidden" name="type" value="${pageMaker.cri.type}" />
        <input type="hidden" name="keyword" value="${pageMaker.cri.keyword}" />
    </form>

</div>
<%@ include file="../includes/footer.jsp" %>

<script type="text/javascript">
    $(document).ready(function(){
        let actionForm = $("#actionForm");

        // 페이징 클릭 이벤트
        $(".pagination a").on("click", function(e) {
            e.preventDefault();
            let pageNum = $(this).attr("href");
            actionForm.find("input[name='pageNum']").val(pageNum);
            actionForm.attr("action", "/test/list"); // 테스트 목록 URL로 설정
            actionForm.submit();
        });

        // (옵션) 검색 폼이 있다면 여기에 추가
        // let searchForm = $("#searchForm");
        // $("#searchForm button").on("click", function(e){ ... });
    });
</script>
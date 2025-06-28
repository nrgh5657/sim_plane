<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../includes/header.jsp" %>



<input type="hidden" id="testid" value="${testid}" />

<div class="container">

    <!-- ✅ 테스트 영역 -->
    <div id="test-section">
        <h2>심리테스트</h2>
        <div id="question-box">
            <!-- JS로 질문 삽입 -->
        </div>
        <div id="choices-box">
            <!-- JS로 선택지 삽입 -->
        </div>
    </div>

    <!-- ✅ 결과 영역 (처음에는 숨김) -->
    <div id="result-section" style="display: none;">
        <h2>테스트 결과</h2>
        <div id="result-box">
            <!-- JS로 결과 삽입 -->
        </div>
        <button onclick="restartTest()">다시 테스트하기</button>
    </div>

    <hr>

    <form action="/test/list" method="get" style="margin-bottom: 20px;">
        <button type="submit">목록</button>
    </form>

    <!-- ✅ 댓글 영역 -->
    <div id="comment-section">
        <h3>댓글</h3>
        <form id="comment-form">
            <textarea id="comment-content" rows="3" cols="50" placeholder="댓글을 입력하세요"></textarea>
            <button type="submit">작성</button>
        </form>
        <div id="comment-list">
            <!--더미 댓글-->
            <div>
                <p><strong>홍길동</strong>: 재밌네요!</p>
                <hr>
            </div>
            <div>
                <p><strong>이순신</strong>: 저랑 딱 맞는 결과가 나왔어요!</p>
                <hr>
            </div>
        </div>

    </div>

</div>


<%@ include file="../includes/footer.jsp" %>


<!-- ✅ JS 파일 연결 -->
<script src="<c:url value='/resources/js/test.js'/>"></script>
<script src="<c:url value='/resources/js/reply.js'/>"></script>

<script>
    $(document).ready(function () {
        testService.getQuestion(1, renderQuestion); // ✅ 올바른 방식
    });
</script>


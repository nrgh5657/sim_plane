<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../includes/header.jsp" %>

<h1>당신의 결과는? 🎉</h1>
<div class="result-box">
    <p>${resultText}</p> <!-- 컨트롤러에서 결과 문자열 전달 -->
</div>

<hr>

<h2>💬 댓글</h2>

<!-- 댓글 등록 폼 -->
<form id="replyForm">
    <input type="hidden" name="resultId" value="${resultId}" />
    <textarea name="content" rows="3" cols="60" placeholder="댓글을 입력하세요..."></textarea><br>
    <button type="submit">등록</button>
</form>

<!-- 댓글 리스트 -->
<div id="replyList">
    <c:forEach var="reply" items="${replyList}">
        <div class="reply-item" data-id="${reply.replyId}">
            <p><strong>${reply.writer}</strong> (${reply.regDate})</p>
            <p>${reply.content}</p>
        </div>
    </c:forEach>
</div>

<script>
    // 댓글 등록 AJAX
    $('#replyForm').submit(function(e) {
        e.preventDefault();
        $.ajax({
            type: 'POST',
            url: '/reply/add',  // 컨트롤러 매핑 주소
            data: $(this).serialize(),
            success: function(response) {
                alert('댓글 등록 완료!');
                location.reload();  // 새로고침하여 댓글 반영
            },
            error: function() {
                alert('댓글 등록 실패');
            }
        });
    });
</script>

<%@ include file="../includes/footer.jsp" %>

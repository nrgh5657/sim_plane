<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file="../includes/header.jsp" %>

<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">심리테스트: <c:out value="${test.title}" /></h1>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    테스트 상세 내용
                </div>
                <div class="panel-body">
                    <c:if test="${test.imagePath != null}">
                        <div class="text-center mb-4">
                            <img src="${test.imagePath}" alt="${test.title}" class="img-responsive" style="max-width: 600px; height: auto;">
                        </div>
                    </c:if>

                    <div class="form-group">
                        <h4><c:out value="${test.title}" /></h4>
                        <p class="text-muted"><c:out value="${test.description}" /></p>
                    </div>
                    <hr>
                    <div class="form-group">
                        <label>테스트 내용</label>
                        <div class="well">
                            <p><c:out value="${test.content}" /></p>
                        </div>
                    </div>

                    <button type="button" class="btn btn-primary" onclick="alert('테스트 시작! (실제 로직 구현 필요)')">테스트 시작</button>
                    <button type="button" class="btn btn-info"
                            onclick="location.href='/test/list?pageNum=${cri.pageNum}&amount=${cri.amount}&type=${cri.type}&keyword=${cri.keyword}'">목록으로</button>
                </div>
            </div>
        </div>
    </div>

    ---

    <h2>댓글</h2>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    댓글 등록
                </div>
                <div class="panel-body">
                    <form id="replyForm">
                        <div class="form-group">
                            <label for="replyer">작성자</label>
                            <input type="text" class="form-control" id="replyer" name="replyer" placeholder="작성자를 입력하세요">
                        </div>
                        <div class="form-group">
                            <label for="replyText">댓글 내용</label>
                            <textarea class="form-control" rows="3" id="replyText" name="replyText" placeholder="댓글을 입력하세요"></textarea>
                        </div>
                        <input type="hidden" name="testId" value="${test.testId}">
                        <button type="button" id="addReplyBtn" class="btn btn-primary">댓글 등록</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="row mt-4">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    댓글 목록
                </div>
                <div class="panel-body">
                    <ul class="chat">
                        <li class="left clearfix">
                            <span class="chat-img pull-left">
                                <img src="http://placehold.it/60/55C1E7/fff" alt="User Avatar" class="img-circle" />
                            </span>
                            <div class="chat-body clearfix">
                                <div class="header">
                                    <strong class="primary-font">테스트 댓글 작성자1</strong>
                                    <small class="pull-right text-muted">
                                        <i class="fa fa-clock-o fa-fw"></i> 2025-06-26
                                    </small>
                                </div>
                                <p>이것은 예시 댓글입니다. 여기에 실제 댓글 내용이 표시됩니다.</p>
                                <button type="button" class="btn btn-warning btn-xs float-right">수정</button>
                                <button type="button" class="btn btn-danger btn-xs float-right">삭제</button>
                            </div>
                        </li>
                        <li class="right clearfix">
                            <span class="chat-img pull-right">
                                <img src="http://placehold.it/60/FA6F57/fff" alt="User Avatar" class="img-circle" />
                            </span>
                            <div class="chat-body clearfix">
                                <div class="header">
                                    <small class="pull-right text-muted">
                                        <i class="fa fa-clock-o fa-fw"></i> 2025-06-25
                                    </small>
                                    <strong class="primary-font">테스트 댓글 작성자2</strong>
                                </div>
                                <p>두 번째 예시 댓글입니다. 이곳에 여러 댓글이 나열됩니다.</p>
                                <button type="button" class="btn btn-warning btn-xs float-right">수정</button>
                                <button type="button" class="btn btn-danger btn-xs float-right">삭제</button>
                            </div>
                        </li>
                    </ul>

                    <div class="panel-footer">
                        <div class="pagination pull-right">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<%@ include file="../includes/footer.jsp" %>

<script type="text/javascript">
    $(document).ready(function(){
        // 여기는 심리테스트 상세보기에 대한 JavaScript 코드 영역입니다.
        // 이 스크립트에서 댓글 등록, 수정, 삭제를 위한 AJAX 호출을 구현하게 됩니다.

        let testId = ${test.testId}; // 현재 테스트의 ID를 JavaScript 변수로 가져옴

        $("#addReplyBtn").on("click", function(){
            // 댓글 등록 버튼 클릭 시 동작 (아직 기능 없음)
            const replyer = $("#replyer").val();
            const replyText = $("#replyText").val();
            const currentTestId = $("input[name='testId']").val(); // hidden 필드에서 testId 가져오기

            if (!replyer || !replyText) {
                alert("작성자와 내용을 모두 입력해주세요.");
                return;
            }

            console.log("댓글 등록 요청 (아직 기능 없음):");
            console.log("테스트 ID:", currentTestId);
            console.log("작성자:", replyer);
            console.log("내용:", replyText);

            alert("댓글 등록 (아직 AJAX 호출 로직 미구현)");
            // 실제 구현 시 여기에 AJAX POST 요청을 보내 댓글을 DB에 저장하고,
            // 성공 시 댓글 목록을 새로고침하는 로직이 들어갑니다.
            // 예: replyService.add({testId: currentTestId, replyer: replyer, replyText: replyText}, function(result){ ... });
        });

        // (옵션) 댓글 목록을 로드하는 함수 (AJAX로 댓글 불러오기)
        function loadReplies(pageNum) {
            console.log("댓글 로드 요청 (아직 기능 없음): 테스트 ID", testId, "페이지:", pageNum);
            // 실제 구현 시 여기에 AJAX GET 요청을 보내 댓글 목록을 가져와서
            // "ul.chat" 내부에 동적으로 HTML을 생성하여 추가하는 로직이 들어갑니다.
            // 예: replyService.getList(testId, pageNum || 1, function(replies){ ... });
        }

        // 페이지 로드 시 댓글 목록 로드 (처음에는 1페이지 로드)
        // loadReplies(1);
    });
</script>
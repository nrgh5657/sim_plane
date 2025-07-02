<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ include file="../includes/header.jsp" %>

<style>
    .test-grid {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
    }

    .test-card {
        width: 250px;
        border: 1px solid #ddd;
        border-radius: 10px;
        overflow: hidden;
        text-align: center;
        box-shadow: 1px 1px 10px rgba(0,0,0,0.05);
        transition: transform 0.2s ease;
    }

    .test-card:hover {
        transform: scale(1.03);
    }

    .test-card img {
        width: 100%;
        height: 160px;
        object-fit: cover;
    }

    .test-card h4 {
        padding: 10px;
        margin: 0;
    }

    .test-card a {
        text-decoration: none;
        color: inherit;
    }

    .button-group {
        display: flex;
        gap: 10px;
        justify-content: center; /* 필요하면 가운데 정렬 */
    }

    .button-group button {
        cursor: pointer;
        padding: 6px 12px;
        border-radius: 4px;
        border: 1px solid #ccc;
        background-color: #f5f5f5;
        transition: background-color 0.2s ease;
    }

    .button-group button:hover {
        background-color: #e1e1e1;
    }
</style>

<div class="container" style="margin-top: 30px;">
    <h2>심리테스트 목록</h2>
    <c:forEach var="test" items="${testList}">
        <div class="test-card">
            <h3>${test.testName}</h3>
            <div class="button-group">
            <a href="/test/start?testid=${test.testid}">
                <button>테스트 시작</button>
            </a>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <form action="/test/deleteTest" method="post" onsubmit="return confirm('정말 삭제하시겠습니까?');">
                    <input type="hidden" name="testid" value="${test.testid}" />
                    <button type="submit">삭제</button>
                </form>
            </sec:authorize>
            </div>
        </div>
    </c:forEach>

</div>

<%@ include file="../includes/footer.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>별자리 목록</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container py-5 px-3">
  <h1 class="fw-bold mb-4 text-center">⭐ 별자리 목록</h1>

  <div class="mb-3 text-end">
    <a href="${pageContext.request.contextPath}/constellation/form" class="btn btn-primary">➕ 새 별자리</a>
  </div>

  <table class="table table-hover align-middle shadow-sm">
    <thead class="table-light">
      <tr><th>ID</th><th>이름</th><th>설명</th><th style="width:160px">관리</th></tr>
    </thead>
    <tbody>
      <c:forEach items="${list}" var="c">
        <tr>
          <td>${c.id}</td>
          <td>${c.name}</td>
          <td>${c.description}</td>
          <td>
            <a href="${pageContext.request.contextPath}/constellation/edit?id=${c.id}"
               class="btn btn-sm btn-outline-success me-2">수정</a>

            <!-- 간단 삭제: POST → 컨트롤러에서 @PostMapping("/delete") -->
            <form action="${pageContext.request.contextPath}/constellation/delete" method="post" class="d-inline">
              <input type="hidden" name="id" value="${c.id}">
              <button class="btn btn-sm btn-outline-danger"
                      onclick="return confirm('정말 삭제할까요?')">삭제</button>
            </form>
          </td>
        </tr>
      </c:forEach>
    </tbody>
  </table>

  <div class="text-center mt-4">
    <a href="${pageContext.request.contextPath}/constellation/index" class="link-secondary">🔙 월 선택 화면으로</a>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>내 별자리 찾기</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container py-5 px-3">
  <h1 class="text-center mb-4 fw-bold">🌌 내 별자리 찾기</h1>

  <div class="card shadow-sm mx-auto" style="max-width:480px">
    <div class="card-body">
      <form action="/result" method="post">
        <label for="month" class="form-label fw-semibold">태어난 월을 선택하세요</label>
        <select id="month" name="id" class="form-select mb-3" required>
          <option value="" selected hidden>-- 월 선택 --</option>
          <c:forEach begin="1" end="12" var="m">
            <option value="${m}">${m}월</option>
          </c:forEach>
        </select>
        <button class="btn btn-primary w-100">별자리 보기</button>
      </form>
    </div>
  </div>

  <div class="text-center mt-4">
    <a href="/list" class="link-secondary">⭐ 별자리 목록 (CRUD) 가기</a>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

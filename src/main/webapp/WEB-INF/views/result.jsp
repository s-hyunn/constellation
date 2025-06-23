<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>별자리 결과</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container py-5 px-3">
  <h1 class="text-center fw-bold mb-4">🌟 나의 별자리</h1>

  <c:choose>
    <c:when test="${not empty star}">
      <div class="card shadow-sm mx-auto" style="max-width:560px">
        <div class="card-body">
          <h2 class="h4 fw-bold mb-2 text-primary">${star.name}</h2>
          <p class="mb-0">${star.description}</p>
        </div>
      </div>
    </c:when>
    <c:otherwise>
      <p class="text-center text-danger">해당 월의 별자리를 찾을 수 없습니다.</p>
    </c:otherwise>
  </c:choose>

  <div class="text-center mt-4">
    <a href="/" class="btn btn-outline-secondary me-2">다시 선택</a>
    <a href="/list" class="btn btn-outline-primary">별자리 목록</a>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

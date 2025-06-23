<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>별자리 ${empty constellation.id ? '등록' : '수정'}</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container py-5 px-3" style="max-width:560px">
  <h1 class="fw-bold mb-4 text-center">
    ${empty constellation.id ? '➕ 새 별자리 등록' : '✏️ 별자리 수정'}
  </h1>

  <!-- action URL은 컨트롤러에서 모델로 넘겨주면 더 깔끔 -->
  <form action="${actionUrl}" method="post">
    <div class="mb-3">
      <label class="form-label">ID</label>
      <input type="number" name="id" class="form-control" value="${constellation.id}" ${empty constellation.id ? '' : 'readonly'}>
    </div>
    <div class="mb-3">
      <label class="form-label">이름</label>
      <input type="text" name="name" class="form-control" value="${constellation.name}" required>
    </div>
    <div class="mb-3">
      <label class="form-label">설명</label>
      <textarea name="description" class="form-control" rows="3" required>${constellation.description}</textarea>
    </div>

    <div class="d-flex justify-content-between">
      <a href="${pageContext.request.contextPath}/constellation/list" class="btn btn-outline-secondary">목록</a>
      <button class="btn btn-primary">${empty constellation.id ? '등록' : '저장'}</button>
    </div>
  </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

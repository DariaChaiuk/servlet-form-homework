<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="uk">
<head>
  <%@include file="../layouts/head.jsp"%>
</head>
<body>
<header class="text-center pt-5">
  <h1>Form homework demo</h1>
</header>
<main class="container">
  <div class="bg-light p-5 rounded text-center main-box">
    <div class="content-box">
      Hi, ${firstName} ${lastName}! You successfully registered with gender: ${gender} and age: ${age}.
      Your job is ${job}.
    </div>
  </div>
</main>
<footer class="container text-center">
  <%@include file="../layouts/footer.jsp"%>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

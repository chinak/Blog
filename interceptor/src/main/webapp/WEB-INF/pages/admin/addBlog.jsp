<%--
  Created by IntelliJ IDEA.
  User: nzhou026
  Date: 10/8/2016
  Time: 8:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>添加博客</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>添加博客</h1>
        <hr/>
        <form:form action="/admin/blogs/addP" method="post" commandName="blog" role="form">
            <div class="form-group">
                <label for="title">Title:</label>
                <input type="text" class="form-control" id="title" name="title" placeholder="Enter Title:"/>
            </div>
            <div class="form-group">
                <label for="userByUserId.id">Author:</label>
                <select class="form-control" id="userByUserId.id" name="userByUserId.id">
                    <c:forEach items="${userEntityList}" var="user">
                        <option value="${user.id}">${user.nickname}, ${user.firstname} ${user.lastname}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
                <label for="content">Content:</label>
                <textarea class="form-control" id="content" name="content" rows="3" placeholder="Please Input Content"></textarea>
            </div>
            <div class="form-group">
                <label for="pubDate">Publish Date:</label>
                <input type="date" class="form-control" id="pubDate" name="pubDate"/>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-sm btn-success">提交</button>
            </div>
        </form:form>
    </div>

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>

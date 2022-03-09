<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Corban_Dallas
  Date: 09.02.2022
  Time: 23:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:forEach var="comedy" items="${comedy}">
    <div class="swiper-slide slider__hover">
        <a href="/movie-page-${comedy.getId()}">
            <img class="slider__item" src="../.${comedy.getPreviewImg()}" alt="">
        </a>
    </div>
</c:forEach>
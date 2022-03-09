<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${role != 'ADMIN'}">
    <c:redirect url="/"/>
</c:if>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <c:import url="${pageContext.request.contextPath}/WEB-INF/jsp/components/head.jsp"/>
    <title>Список пользователей</title>

<body>
<div class="wrapper">
    <header class="header">
        <div class="container">
            <div class="header__inner">
                <a href="/" class="logo"><img src="${pageContext.request.contextPath}/icons/logo.svg" alt="logo"></a>
                <nav class="menu">
                    <ul class="menu__list">
                        <li class="menu__list-item">
                            <a class="menu__list-link active" href="/">Home</a>
                        </li>
                        <li class="menu__list-item">
                            <a class="menu__list-link" href="/movies">Movies</a>
                        </li>
                        <li class="menu__list-item">
                            <a class="menu__list-link" href="/actors">Actors</a>
                        </li>
                        <li class="menu__list-item">
                            <a class="menu__list-link" href="/logout">Logout</a>
                        </li>
                    </ul>
                </nav>


                <nav class="menu-account">
                    <ul class="menu-account__list">
                        <c:import url="components/search.jsp"/>
                        <li class="menu-account__list-item">
                            <a class="menu-account__list-link" href="#">
                                <svg class="icon">
                                    <use xlink:href="${pageContext.request.contextPath}/icons/sprite.svg#notification"></use>
                                </svg>
                            </a>
                        </li>
                        <li class="menu-account__list-item">
                            <a class="menu-account__list-link" href="#">
                                <svg class="icon">
                                    <use xlink:href="${pageContext.request.contextPath}/icons/sprite.svg#account"></use>
                                </svg>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
    <main class="main admin">
        <div class="container">
            <div class="admin__wrapper">
                <a class="btn btn__primary admin__btn" href="/admin/users">Список пользователей</a>
                <a class="btn btn__primary" href="/admin/films">Список фильмов</a>
                <a class="btn btn__primary" href="/admin/add-film">Добавить фильм</a>
            </div>
            <div class="users">
                <ul class="users__list">
                    <c:forEach items="${user}" var="user">
                        <li class="users__item">
                            <span>"${user.getId().substring(1, 6)}"</span>
                            <p>"${user.getUsername()}"</p>
                            <button class="btn btn__primary delete_user">Удалить пользователя</button>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </main>
</div>

<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>

</html>

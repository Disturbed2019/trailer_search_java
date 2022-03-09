<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <c:import url="./components/head.jsp"/>
    <title>Фильмы</title>
</head>
<body>
<div class="wrapper">
    <header class="header">
        <div class="container">
            <div class="header__inner">
                <a href="/" class="logo"><img src="../../icons/logo.svg" alt="logo"></a>
                <nav class="menu">
                    <ul class="menu__list">
                        <li class="menu__list-item">
                            <a class="menu__list-link " href="/">Home</a>
                        </li>
                        <li class="menu__list-item">
                            <a class="menu__list-link active" href="/movies">Movies</a>
                        </li>
                        <li class="menu__list-item">
                            <a class="menu__list-link" href="actors.jsp">Actors</a>
                        </li>
                        <c:if test="${userId == null}">
                                                  <li class="menu__list-item">
                                                      <a class="menu__list-link" href="/login">Sign in</a>
                                                  </li>
                                                      <li class="menu__list-item">
                                                          <a class="menu__list-link" href="/registration">Sign up</a>
                                                      </li>
                                                  </c:if>
                                                  <c:if test="${userId != null}">
                                                      <li class="menu__list-item">
                                                          <a class="menu__list-link" href="/logout">Logout</a>
                                                      </li>
                                                  </c:if>
                    </ul>
                </nav>


                <nav class="menu-account">
                    <ul class="menu-account__list">
                        <c:import url="components/search.jsp"/>
                        <li class="menu-account__list-item">
                            <a class="menu-account__list-link" href="#">
                                <svg class="icon">
                                    <use xlink:href="./icons/sprite.svg#notification"></use>
                                </svg>
                            </a>
                        </li>
                        <li class="menu-account__list-item">
                            <a class="menu-account__list-link" href="/registration">
                                <svg class="icon">
                                    <use xlink:href="./icons/sprite.svg#account"></use>
                                </svg>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <main class="main">
        <div class="container">
            <div class="movies__list">
                <c:forEach var="filmList" items="${filmList}">
                    <a class="movies__link" href="/movie-page-${filmList.getId()}">
                        <img src="${filmList.getPreviewImg()}" alt="">
                    </a>
                </c:forEach>
            </div>
        </div>
    </main>
    <c:import url="components/footer.jsp"/>
</div>

<script src="../../js/main.js"></script>
</body>
</html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <c:import url="./components/head.jsp"/>
    <title>Регистрация</title>
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
                            <a class="menu__list-link" href="/movies">Movies</a>
                        </li>
                        <li class="menu__list-item">
                            <a class="menu__list-link" href="/actors">Actors</a>
                        </li>
                        <li class="menu__list-item">
                            <a class="menu__list-link" href="/login">Sign in</a>
                        </li>
                        <li class="menu__list-item">
                            <a class="menu__list-link active" href="/registration">Sign up</a>
                        </li>
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
            <div class="authorization">
                <div class="authorization__form-wrapper">
                    <div class="authorization__register">
                        <form method="POST" action="/check-registration" class="form">
                            <h2 class="form__title">Sign up</h2>
                             <c:out value="${exception}" default=" "> </c:out>
                            <div class="form__content">
                                <input name="username" type="text" placeholder="Username" autofocus="true"/>
                                <input name="password" type="password" placeholder="Password"/>
                                <input name="repassword" type="password" placeholder="Repeat password"/>
                                <button class="btn btn__form" type="submit">Sign up</button>
                            </div>
                        </form>
                        </div>
                    </div>
                </div>
            </div>
    </main>
    <c:import url="components/footer.jsp"/>
</div>


<script src="../../js/main.js"></script>
</body>
</html>
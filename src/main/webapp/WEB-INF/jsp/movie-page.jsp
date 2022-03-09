<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <c:import url="./components/head.jsp"/>
    <title>title</title>
</head>
<body>
<div class="wrapper single__wrapper" style="background-image: url('../.${film.getBgImg()}')">
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

    <main class="main ">
        <section class="single">

            <div class="container">
                <div class="single__inner">
                    <div class="single__content">
                        <h1 class="single__title">${film.getTitle()}</h1>
                        <div class="single__badge">
                            <span class="single__badge-year">${film.getYear()}</span>
                            <span class="single__badge-censored"><span>18+</span></span>
                            <span class="single__badge-rating">
                        <svg width="17" height="16" viewBox="0 0 17 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M3.71654 15.443C3.32017 15.641 2.87039 15.294 2.95049 14.851L3.8028 10.121L0.185117 6.76501C-0.152725 6.45101 0.0228705 5.87701 0.475722 5.81501L5.50536 5.11901L7.74805 0.792012C7.95035 0.402012 8.49767 0.402012 8.69996 0.792012L10.9427 5.11901L15.9723 5.81501C16.4251 5.87701 16.6007 6.45101 16.2629 6.76501L12.6452 10.121L13.4975 14.851C13.5776 15.294 13.1278 15.641 12.7315 15.443L8.22247 13.187L3.71551 15.443H3.71654Z" fill="#FFB800"/>
                        </svg>
                        ${film.getRating()}</span>
                        </div>
                        <p class="single__description">${film.getDescription()}</p>
                        <div class="single__buttons">
                        <c:if test="${userId != null}">
                            <a class="button single__buttons-watch" data-fancybox href="https://www.youtube.com/watch?v=${film.getTrailerLink()}">
                        </c:if>
                        <c:if test="${userId == null}">
                            <a class="button single__buttons-watch" href="/registration">
                        </c:if>
                                <svg width="15" height="18" viewBox="0 0 15 18"  xmlns="http://www.w3.org/2000/svg">
                                    <path d="M14.2015 10.3932L2.76751 17.7762C1.79716 18.4021 0.55188 17.6442 0.55188 16.3824V1.61647C0.55188 0.356646 1.79536 -0.403248 2.76751 0.224664L14.2015 7.60763C14.4222 7.74786 14.6057 7.95055 14.7333 8.19516C14.8609 8.43977 14.9281 8.71759 14.9281 9.00043C14.9281 9.28328 14.8609 9.5611 14.7333 9.80571C14.6057 10.0503 14.4222 10.253 14.2015 10.3932Z" />
                                </svg>Watch
                            </a>
                            <button class="button single__buttons-more">More information</button>
                        </div>
                    </div>
                </div>
            </div>

        </section>

    </main>

</div>

<script src="../../js/main.js"></script>
</body>
</html>
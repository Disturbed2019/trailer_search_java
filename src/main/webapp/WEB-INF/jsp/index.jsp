<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <c:import url="${pageContext.request.contextPath}/WEB-INF/jsp/components/head.jsp"/>
  <title>Document</title>

</head>
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
                          <c:if test="${userId == null}">
                          <li class="menu__list-item">
                              <a class="menu__list-link" href="/login">Sign in</a>
                          </li>
                              <li class="menu__list-item">
                                  <a class="menu__list-link" href="/registration">Sign up</a>
                              </li>
                          </c:if>
                          <c:if test="${role.equals('ADMIN')}">
                              <li class="menu__list-item">
                                  <a class="menu__list-link" href="/admin">Admin</a>
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
<%--                          <li class="menu-account__list-item">--%>
<%--                              <a class="menu-account__list-link" href="#">--%>
<%--                                  <svg class="icon">--%>
<%--                                    <use xlink:href="${pageContext.request.contextPath}/icons/sprite.svg#search"></use>--%>
<%--                                  </svg>--%>
<%--                              </a>--%>
<%--                          </li>--%>
                          <li class="menu-account__list-item">
                              <a class="menu-account__list-link" href="#">
                                  <svg class="icon">
                                      <use xlink:href="${pageContext.request.contextPath}/icons/sprite.svg#notification"></use>
                                  </svg>
                              </a>
                          </li>
                          <li class="menu-account__list-item">
                              <a class="menu-account__list-link" href="/">
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
    <main class="main">
        <section class="top">
            <div class="container">
                <div class="top__inner">
                    <div class="top__content">
                        <h1 class="top__title">Night Watch</h1>
                        <div class="top__badge">
                            <span class="top__badge-year">2021</span>
                            <span class="top__badge-censored"><span>18+</span></span>
                            <span class="top__badge-rating">
                                <svg width="17" height="16" viewBox="0 0 17 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M3.71654 15.443C3.32017 15.641 2.87039 15.294 2.95049 14.851L3.8028 10.121L0.185117 6.76501C-0.152725 6.45101 0.0228705 5.87701 0.475722 5.81501L5.50536 5.11901L7.74805 0.792012C7.95035 0.402012 8.49767 0.402012 8.69996 0.792012L10.9427 5.11901L15.9723 5.81501C16.4251 5.87701 16.6007 6.45101 16.2629 6.76501L12.6452 10.121L13.4975 14.851C13.5776 15.294 13.1278 15.641 12.7315 15.443L8.22247 13.187L3.71551 15.443H3.71654Z" fill="#FFB800"/>
                                </svg>
                                8.8</span>
                        </div>
                        <p class="top__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab eligendi fuga
                            nesciunt omnis recusandae? Aut explicabo inventore labore officiis quasi!</p>
                        <div class="top__buttons">
                            <c:if test="${userId == null}">
                                <a class="button top__buttons-watch" href="/registration">
                            </c:if>
                            <c:if test="${userId != null}">
                                <a class="button top__buttons-watch" data-fancybox href="https://www.youtube.com/watch?v=IisU-JHj_fU">
                            </c:if>
                                <svg width="15" height="18" viewBox="0 0 15 18"  xmlns="http://www.w3.org/2000/svg">
                                    <path d="M14.2015 10.3932L2.76751 17.7762C1.79716 18.4021 0.55188 17.6442 0.55188 16.3824V1.61647C0.55188 0.356646 1.79536 -0.403248 2.76751 0.224664L14.2015 7.60763C14.4222 7.74786 14.6057 7.95055 14.7333 8.19516C14.8609 8.43977 14.9281 8.71759 14.9281 9.00043C14.9281 9.28328 14.8609 9.5611 14.7333 9.80571C14.6057 10.0503 14.4222 10.253 14.2015 10.3932Z" />
                                </svg>Watch
                            </a>

                            <button class="button top__buttons-more">More information</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="popular">
            <div class="container">
                <h3 class="slider__title"><span class="title-blue"></span>Popular Genres</h3>
                <div class="popular__list">
                    <a href="/romance" class="popular__item">
                        <svg class="popular__icon">
                            <use xlink:href="./icons/popular_sprite.svg#romance"></use>
                        </svg>
                        <p>Romance</p>
                    </a>
                    <a href="/drama" class="popular__item">
                        <svg class="popular__icon">
                            <use xlink:href="./icons/popular_sprite.svg#drama"></use>
                        </svg>
                        <p>Drama</p>
                    </a>
                    <a href="/historical" class="popular__item">
                        <svg class="popular__icon">
                            <use xlink:href="./icons/popular_sprite.svg#historical"></use>
                        </svg>
                        <p>Historical</p>
                    </a>
                    <a href="/action" class="popular__item">
                        <svg class="popular__icon">
                            <use xlink:href="./icons/popular_sprite.svg#action"></use>
                        </svg>
                        <p>Action</p>
                    </a>
                    <a href="/sci-fi" class="popular__item">
                        <svg class="popular__icon" style="transform: rotate(-45deg)">
                            <use xlink:href="./icons/popular_sprite.svg#sci-fi"></use>
                        </svg>
                        <p>Sci-fi</p>
                    </a>
                    <a href="/horror" class="popular__item">
                        <svg class="popular__icon">
                            <use xlink:href="./icons/popular_sprite.svg#horror"></use>
                        </svg>
                        <p>Horror</p>
                    </a>
                    <a href="/comedy" class="popular__item">
                        <svg class="popular__icon">
                            <use xlink:href="./icons/popular_sprite.svg#comedy"></use>
                        </svg>
                        <p>Comedy</p>
                    </a>
                    <a href="/documentary" class="popular__item">
                        <svg class="popular__icon">
                            <use xlink:href="./icons/popular_sprite.svg#documentary"></use>
                        </svg>
                        <p>Documentary</p>
                    </a>
                </div>
            </div>
        </section>
        <section class="slider">
            <div class="container">
               <div class="slider__wrapper">
                   <h3 class="slider__title"><span class="title-blue"></span>Horror</h3>
                   <div class="swiper slider__horror">
                       <div class="swiper-wrapper ">
                            <c:import url="./components/sliders/horror.jsp"/>
                       </div>

                   </div>
                   <div class="slider__control">
                       <div class="swiper-button-prev">
                           <!--                        <svg width="20" height="34" viewBox="0 0 20 34" fill="none" xmlns="http://www.w3.org/2000/svg">-->
                           <!--                            <path d="M0.332945 29L12.3569 17L0.332945 5.00005L2.73774 0.20005L19.5713 17L2.73774 33.8L0.332945 29Z" fill="white"></path>-->
                           <!--                        </svg>-->
                       </div>
                       <div class="swiper-button-next-horror">
                           <svg width="20" height="34" viewBox="0 0 20 34" fill="none" xmlns="http://www.w3.org/2000/svg">
                               <path d="M0.332945 29L12.3569 17L0.332945 5.00005L2.73774 0.20005L19.5713 17L2.73774 33.8L0.332945 29Z" fill="white"></path>
                           </svg>
                       </div>
                   </div>
               </div>

            </div>
        </section>
        <section class="slider">
            <div class="container">
                <div class="slider__wrapper">
                    <h3 class="slider__title"><span class="title-blue"></span>Drama</h3>
                    <div class="swiper slider__drama">
                        <div class="swiper-wrapper ">
                            <c:import url="./components/sliders/drama.jsp"/>
                        </div>

                    </div>
                    <div class="slider__control">
                        <div class="swiper-button-prev">
                            <!--                        <svg width="20" height="34" viewBox="0 0 20 34" fill="none" xmlns="http://www.w3.org/2000/svg">-->
                            <!--                            <path d="M0.332945 29L12.3569 17L0.332945 5.00005L2.73774 0.20005L19.5713 17L2.73774 33.8L0.332945 29Z" fill="white"></path>-->
                            <!--                        </svg>-->
                        </div>
                        <div class="swiper-button-next-drama">
                            <svg width="20" height="34" viewBox="0 0 20 34" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M0.332945 29L12.3569 17L0.332945 5.00005L2.73774 0.20005L19.5713 17L2.73774 33.8L0.332945 29Z" fill="white"></path>
                            </svg>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <section class="slider">
            <div class="container">
                <div class="slider__wrapper">
                    <h3 class="slider__title"><span class="title-blue"></span>Historical</h3>
                    <div class="swiper slider__historical">
                        <div class="swiper-wrapper ">
                            <c:import url="./components/sliders/history.jsp"/>
                        </div>

                    </div>
                    <div class="slider__control">
                        <div class="swiper-button-prev">
                            <!--                        <svg width="20" height="34" viewBox="0 0 20 34" fill="none" xmlns="http://www.w3.org/2000/svg">-->
                            <!--                            <path d="M0.332945 29L12.3569 17L0.332945 5.00005L2.73774 0.20005L19.5713 17L2.73774 33.8L0.332945 29Z" fill="white"></path>-->
                            <!--                        </svg>-->
                        </div>
                        <div class="swiper-button-next-history">
                            <svg width="20" height="34" viewBox="0 0 20 34" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M0.332945 29L12.3569 17L0.332945 5.00005L2.73774 0.20005L19.5713 17L2.73774 33.8L0.332945 29Z" fill="white"></path>
                            </svg>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <section class="slider">
            <div class="container">
                <div class="slider__wrapper">
                    <h3 class="slider__title"><span class="title-blue"></span>Action</h3>
                    <div class="swiper slider__action">
                        <div class="swiper-wrapper ">
                            <c:import url="./components/sliders/action.jsp"/>
                        </div>

                    </div>
                    <div class="slider__control">
                        <div class="swiper-button-prev">
                            <!--                        <svg width="20" height="34" viewBox="0 0 20 34" fill="none" xmlns="http://www.w3.org/2000/svg">-->
                            <!--                            <path d="M0.332945 29L12.3569 17L0.332945 5.00005L2.73774 0.20005L19.5713 17L2.73774 33.8L0.332945 29Z" fill="white"></path>-->
                            <!--                        </svg>-->
                        </div>
                        <div class="swiper-button-next-action">
                            <svg width="20" height="34" viewBox="0 0 20 34" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M0.332945 29L12.3569 17L0.332945 5.00005L2.73774 0.20005L19.5713 17L2.73774 33.8L0.332945 29Z" fill="white"></path>
                            </svg>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="slider">
            <div class="container">
                <div class="slider__wrapper">
                    <h3 class="slider__title"><span class="title-blue"></span>Sci-fi</h3>
                    <div class="swiper slider__sci-fi">
                        <div class="swiper-wrapper ">
                            <c:import url="./components/sliders/sci.jsp"/>
                        </div>

                    </div>
                    <div class="slider__control">
                        <div class="swiper-button-prev">
                            <!--                        <svg width="20" height="34" viewBox="0 0 20 34" fill="none" xmlns="http://www.w3.org/2000/svg">-->
                            <!--                            <path d="M0.332945 29L12.3569 17L0.332945 5.00005L2.73774 0.20005L19.5713 17L2.73774 33.8L0.332945 29Z" fill="white"></path>-->
                            <!--                        </svg>-->
                        </div>
                        <div class="swiper-button-next-sci">
                            <svg width="20" height="34" viewBox="0 0 20 34" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M0.332945 29L12.3569 17L0.332945 5.00005L2.73774 0.20005L19.5713 17L2.73774 33.8L0.332945 29Z" fill="white"></path>
                            </svg>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <section class="slider">
            <div class="container">
                <div class="slider__wrapper">
                    <h3 class="slider__title"><span class="title-blue"></span>Romance</h3>
                    <div class="swiper slider__romance">
                        <div class="swiper-wrapper ">
                            <c:import url="./components/sliders/romance.jsp"/>
                        </div>

                    </div>
                    <div class="slider__control">
                        <div class="swiper-button-prev">
                            <!--                        <svg width="20" height="34" viewBox="0 0 20 34" fill="none" xmlns="http://www.w3.org/2000/svg">-->
                            <!--                            <path d="M0.332945 29L12.3569 17L0.332945 5.00005L2.73774 0.20005L19.5713 17L2.73774 33.8L0.332945 29Z" fill="white"></path>-->
                            <!--                        </svg>-->
                        </div>
                        <div class="swiper-button-next-romance">
                            <svg width="20" height="34" viewBox="0 0 20 34" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M0.332945 29L12.3569 17L0.332945 5.00005L2.73774 0.20005L19.5713 17L2.73774 33.8L0.332945 29Z" fill="white"></path>
                            </svg>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <section class="slider">
            <div class="container">
                <div class="slider__wrapper">
                    <h3 class="slider__title"><span class="title-blue"></span>Comedy</h3>
                    <div class="swiper slider__comedy">
                        <div class="swiper-wrapper ">
                            <c:import url="./components/sliders/comedy.jsp"/>
                        </div>

                    </div>
                    <div class="slider__control">
                        <div class="swiper-button-prev">
                            <!--                        <svg width="20" height="34" viewBox="0 0 20 34" fill="none" xmlns="http://www.w3.org/2000/svg">-->
                            <!--                            <path d="M0.332945 29L12.3569 17L0.332945 5.00005L2.73774 0.20005L19.5713 17L2.73774 33.8L0.332945 29Z" fill="white"></path>-->
                            <!--                        </svg>-->
                        </div>
                        <div class="swiper-button-next-comedy">
                            <svg width="20" height="34" viewBox="0 0 20 34" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M0.332945 29L12.3569 17L0.332945 5.00005L2.73774 0.20005L19.5713 17L2.73774 33.8L0.332945 29Z" fill="white"></path>
                            </svg>
                        </div>
                    </div>
                </div>

            </div>
        </section>


        <section class="slider">
            <div class="container">
                <div class="slider__wrapper">
                    <h3 class="slider__title"><span class="title-blue"></span>Popular Channel</h3>
                    <div class="swiper slider__channel">
                    <div class="swiper-wrapper ">
                        <div class="swiper-slide " >
                            <a href="#" class="slider__channel-item">Lorem ipsum</a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="#" class="slider__channel-item">Lorem ipsum</a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="#" class="slider__channel-item">Lorem ipsum</a>
                        </div>
                        <div class="swiper-slide">
                            <a href="#" class="slider__channel-item">Lorem ipsum</a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="#" class="slider__channel-item">Lorem ipsum</a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="#" class="slider__channel-item">Lorem ipsum</a>
                        </div>
                        <div class="swiper-slide ">
                            <a href="#" class="slider__channel-item">Lorem ipsum</a>
                        </div>
                        <div class="swiper-slide">
                            <a href="#" class="slider__channel-item">Lorem ipsum</a>
                        </div>
                        <div class="swiper-slide">
                            <a href="#" class="slider__channel-item">Lorem ipsum</a>
                        </div>
                    </div>
                </div>
                    <div class="slider__control">
                        <div class="swiper-button-prev">
                            <!--                        <svg width="20" height="34" viewBox="0 0 20 34" fill="none" xmlns="http://www.w3.org/2000/svg">-->
                            <!--                            <path d="M0.332945 29L12.3569 17L0.332945 5.00005L2.73774 0.20005L19.5713 17L2.73774 33.8L0.332945 29Z" fill="white"></path>-->
                            <!--                        </svg>-->
                        </div>
                        <div class="swiper-button-next-channel">
                            <svg width="20" height="34" viewBox="0 0 20 34" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M0.332945 29L12.3569 17L0.332945 5.00005L2.73774 0.20005L19.5713 17L2.73774 33.8L0.332945 29Z" fill="white"></path>
                            </svg>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="slider">
            <div class="container">
                <div class="slider__wrapper">
                    <h3 class="slider__title"><span class="title-blue"></span>Popular Actors & Directors</h3>
                    <div class="swiper slider__actors">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide" >
                                <a href="#" class="slider__actors-wrapper">
                                    <div class="box">
                                        <img class="slider__actors-img" src="../../images/actors/act-1.jpg" alt="img">
                                        <p class="slider__actors-name">Samantha Bowen</p>
                                    </div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#" class="slider__actors-wrapper">
                                    <div class="box">
                                        <img class="slider__actors-img" src="../../images/actors/act-2.jpg" alt="img">
                                        <p class="slider__actors-name">Rhys Birch</p>
                                    </div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#" class="slider__actors-wrapper">
                                    <div class="box">
                                        <img class="slider__actors-img" src="../../images/actors/act-3.jpg" alt="img">
                                        <p class="slider__actors-name">James Holloway</p>
                                    </div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#" class="slider__actors-wrapper">
                                    <div class="box">
                                        <img class="slider__actors-img" src="../../images/actors/act-4.jpg" alt="img">
                                        <p class="slider__actors-name">Joshua Walton</p>
                                    </div>
                                </a>
                            </div>
                            <div class="swiper-slide ">
                                <a href="#" class="slider__actors-wrapper">
                                    <div class="box">
                                        <img class="slider__actors-img" src="../../images/actors/act-5.jpg" alt="img">
                                        <p class="slider__actors-name">Patrick Elliott</p>
                                    </div>
                                </a>
                            </div>
                            <div class="swiper-slide ">
                                <a href="#" class="slider__actors-wrapper">
                                    <div class="box">
                                        <img class="slider__actors-img" src="../../images/actors/act-6.jpg" alt="img">
                                        <p class="slider__actors-name">Morgan O'Neill</p>
                                    </div>
                                </a>
                            </div>
                            <div class="swiper-slide ">
                                <a href="#" class="slider__actors-wrapper">
                                    <div class="box">
                                        <img class="slider__actors-img" src="../../images/actors/act-1.jpg" alt="img">
                                        <p class="slider__actors-name">Samantha Bowen</p>
                                    </div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#" class="slider__actors-wrapper">
                                    <div class="box">
                                        <img class="slider__actors-img" src="../../images/actors/act-2.jpg" alt="img">
                                        <p class="slider__actors-name">Rhys Birch</p>
                                    </div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#" class="slider__actors-wrapper">
                                    <div class="box">
                                        <img class="slider__actors-img" src="../../images/actors/act-3.jpg" alt="img">
                                        <p class="slider__actors-name">James Holloway</p>
                                    </div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#" class="slider__actors-wrapper">
                                    <div class="box">
                                        <img class="slider__actors-img" src="../../images/actors/act-4.jpg" alt="img">
                                        <p class="slider__actors-name">Joshua Walton</p>
                                    </div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#" class="slider__actors-wrapper">
                                    <div class="box">
                                        <img class="slider__actors-img" src="../../images/actors/act-5.jpg" alt="img">
                                        <p class="slider__actors-name">Patrick Elliott</p>
                                    </div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#" class="slider__actors-wrapper">
                                    <div class="box">
                                        <img class="slider__actors-img" src="/images/actors/act-6.jpg" alt="img">
                                        <p class="slider__actors-name">Morgan O'Neill</p>
                                    </div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#" class="slider__actors-wrapper">
                                    <div class="box">
                                        <img class="slider__actors-img" src="../../images/actors/act-1.jpg" alt="img">
                                        <p class="slider__actors-name">Samantha Bowen</p>
                                    </div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#" class="slider__actors-wrapper">
                                    <div class="box">
                                        <img class="slider__actors-img" src="../../images/actors/act-2.jpg" alt="img">
                                        <p class="slider__actors-name">Rhys Birch</p>
                                    </div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#" class="slider__actors-wrapper">
                                    <div class="box">
                                        <img class="slider__actors-img" src="../../images/actors/act-3.jpg" alt="img">
                                        <p class="slider__actors-name">James Holloway</p>
                                    </div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#" class="slider__actors-wrapper">
                                    <div class="box">
                                        <img class="slider__actors-img" src="../../images/actors/act-4.jpg" alt="img">
                                        <p class="slider__actors-name">Joshua Walton</p>
                                    </div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#" class="slider__actors-wrapper">
                                    <div class="box">
                                        <img class="slider__actors-img" src="../../images/actors/act-5.jpg" alt="img">
                                        <p class="slider__actors-name">Patrick Elliott</p>
                                    </div>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#" class="slider__actors-wrapper">
                                    <div class="box">
                                        <img class="slider__actors-img" src="../../images/actors/act-6.jpg" alt="img">
                                        <p class="slider__actors-name">Morgan O'Neill</p>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="slider__control">
                        <div class="swiper-button-prev">
                            <!--                        <svg width="20" height="34" viewBox="0 0 20 34" fill="none" xmlns="http://www.w3.org/2000/svg">-->
                            <!--                            <path d="M0.332945 29L12.3569 17L0.332945 5.00005L2.73774 0.20005L19.5713 17L2.73774 33.8L0.332945 29Z" fill="white"></path>-->
                            <!--                        </svg>-->
                        </div>
                        <div class="swiper-button-next-actors">
                            <svg width="20" height="34" viewBox="0 0 20 34" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M0.332945 29L12.3569 17L0.332945 5.00005L2.73774 0.20005L19.5713 17L2.73774 33.8L0.332945 29Z" fill="white"></path>
                            </svg>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="new">
            <div class="container">
                <div class="new__inner">
                    <img src="../../images/bom-banner.jpg" alt="img">
                    <div class="new__coming">
                        <img src="../../images/com.png" alt="2021">
                        <p class="new__text">Coming Soon...</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="banner">
            <div class="container">
                <div class="banner__inner">
                    <p class="banner__text">Are You New Here ?
                        Don’t&nbsp;wait, Register Now. </p>
                    <button class="button top__buttons-more banner__button">Register Now</button>
                </div>
            </div>
        </section>
    </main>
    <c:import url="${pageContext.request.contextPath}/WEB-INF/jsp/components/footer.jsp"/>
</div>

  <script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>

</html>

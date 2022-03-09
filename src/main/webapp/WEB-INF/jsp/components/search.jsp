<%--
  Created by IntelliJ IDEA.
  User: dallas
  Date: 11.02.22
  Time: 13:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<li class="menu-account__list-item">
    <div class="d6">
        <form method="get" action="/search_movie">
            <input name="name" type="text" placeholder="Искать здесь...">
            <a type="submit" >
                <svg class="icon">
                    <use xlink:href="./icons/sprite.svg#search"></use>
                </svg>
            </a>
        </form>
    </div>
</li>

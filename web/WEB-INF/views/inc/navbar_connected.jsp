<%--
  Created by IntelliJ IDEA.
  User: elodie
  Date: 13/02/2019
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body id="page-top">
<!-- Navigation -->

<nav class="navbar navbar-expand-lg bg-dark navbar-dark fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="<c:out value="home.jsp" />">La montagne, ça vous gagne!</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="<c:out value="#" />" >A Propos</a>
                </li>
                <li class="nav-item"><a class="nav-link" href="<c:out value="#" />">Les Topos</a></li>
                <li class="nav-item"><a class="nav-link" href="<c:out value="#" />">Les Spots</a></li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="<c:out value="#" />">Contact</a>
                </li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="<c:out value="./user/profile/" />"><span class="glyphicon glyphicon-user"></span> Mon profil</a></li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger " href="<c:out value="./user/logout" />">
                        <span class="glyphicon glyphicon-off">Déconnexion</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Header -->

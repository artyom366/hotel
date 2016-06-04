<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid">
  <div class="row">
    <div class="col-sm-3 col-md-2 sidebar">
      <ul class="nav nav-sidebar">
        <li><a href="${pageContext.request.contextPath}/">Overview</a></li>
      </ul>
      <ul class="nav nav-sidebar">
        <li><a href="${pageContext.request.contextPath}/customer">Customers</a></li>
        <li><a href="${pageContext.request.contextPath}/check_in">Check in</a></li>
        <li><a href="${pageContext.request.contextPath}/check_out">Ckeck out</a></li>

      </ul>
      <ul class="nav nav-sidebar">
        <li><a href="${pageContext.request.contextPath}/room">Rooms</a></li>
        <li><a href="${pageContext.request.contextPath}/balance">Balances</a></li>
      </ul>
    </div>

    <tiles:insertAttribute name="tab_layout"/>

  </div>
</div>



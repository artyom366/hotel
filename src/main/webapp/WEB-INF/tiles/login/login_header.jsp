<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Hotel</a>
    </div>
    <div id="navbar" class="navbar-collapse collapse">
      <form class="navbar-form navbar-right" method="POST" action="${pageContext.request.contextPath}/login">
        <div class="form-group">
          <input type="text" name="username" placeholder="Email" class="form-control">
        </div>
        <div class="form-group">
          <input type="password" name="password" placeholder="Password" class="form-control">
        </div>
        <button type="submit" class="btn btn-success">Sign in</button>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="?lang=en">EN</a></li>
        <li><a href="?lang=lv">LV</a></li>
        <li><a href="?lang=ru">RU</a></li>
      </ul>
    </div>
  </div>
</nav>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<c:if test="${param.error != null}">
  <div class="alert alert-warning alert-dismissible user-alert" role="alert" style="text-align: center">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <strong>Warning!</strong> User name or password is incorrect.
  </div>
</c:if>

<div class="jumbotron">
    <div class="container">
        <p>Please enter login and password to authenticate.</p>
        <p>In case anu issues with logging in, please call helpdesk 123-456-789 or email at <a href="mailto:help@hotel.com">help@hotel.com</a></p>
    </div>
</div>

<div class="container">
  <footer>
    <p>&copy; 2016 Hotel, LLC.</p>
  </footer>
</div>
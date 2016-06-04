<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<div class="jumbotron">
    <div class="container">
        <h2>Check In Customer</h2>
        <h4>Fill in all the fields below and press Create</h4>
    </div>
</div>

<div class="container col-md-3 col-md-offset-4">

    <sf:form method="POST" action="${pageContext.request.contextPath}/add_customer" modelAttribute="add_customer">

        <h2>Customer information</h2>
        <div class="form-group">
            <label for="customer-name">Name</label>
            <sf:input type="text" class="form-control" id="customer-name" path="name" placeholder="Name" required=""/>
            <span class="label label-warning"><sf:errors path="name"/></span>
        </div>
        <div class="form-group">
            <label for="surname">Surname</label>
            <sf:input type="text" class="form-control" id="surname" path="surname" placeholder="Surname" required=""/>
            <span class="label label-warning"><sf:errors path="surname"/></span>
        </div>
        <div class="form-group">
            <label for="middle-name">Middle Name</label>
            <sf:input type="text" class="form-control" id="middle-name" path="middleName" placeholder="Middle Name"/>
            <span class="label label-warning"><sf:errors path="middleName"/></span>
        </div>
        <div class="form-group">
            <label for="birth-date">Birth Date</label>
            <sf:input type="text" class="form-control" id="birth-date" path="birthDate" placeholder="Birth Date"/>
            <span class="label label-warning"><sf:errors path="birthDate"/></span>
        </div>
        <div class="form-group">
            <label for="gender">Gender</label>
            <sf:input type="text" class="form-control" id="gender" path="gender" placeholder="Gender"/>
            <span class="label label-warning"><sf:errors path="gender"/></span>
        </div>
        <div class="form-group">
            <label for="accompanied">Accompanied</label>
            <sf:input type="text" class="form-control" id="accompanied" path="accompanied" placeholder="Accompanied"/>
            <span class="label label-warning"><sf:errors path="accompanied"/></span>
        </div>
        <div class="form-group">
            <label for="identification-number">Identification Number</label>
            <sf:input type="text" class="form-control" id="identification-number" path="identificationNumber" placeholder="Identification Number"/>
            <span class="label label-warning"><sf:errors path="identificationNumber"/></span>
        </div>
        <div class="form-group">
            <label for="email">Email address</label>
            <sf:input type="text" class="form-control" id="email" path="email" placeholder="Email" required=""/>
            <span class="label label-warning"><sf:errors path="email"/></span>
        </div>
        <div class="form-group">
            <label for="email">Phone</label>
            <sf:input type="text" class="form-control" id="email" path="phone" placeholder="Phone" required=""/>
            <span class="label label-warning"><sf:errors path="phone"/></span>
        </div>
        <div class="form-group">
            <label for="check_in">Check In Date</label>
            <sf:input type="text" class="form-control" id="check_in" path="checkIn" placeholder="Check In" required=""/>
            <span class="label label-warning"><sf:errors path="checkIn"/></span>
        </div>
        <div class="form-group">
            <label for="check_out">Check Out Date</label>
            <sf:input type="text" class="form-control" id="check_out" path="checkOut" placeholder="Check Out" required=""/>
            <span class="label label-warning"><sf:errors path="checkOut"/></span>
        </div>



        <h2>Additional Service</h2>




        <h2>Special Treatment</h2>





        <div class="registration-form-submit">
            <button type="submit" class="btn btn-success">Create</button>
        </div>
    </sf:form>

    <hr>

    <footer>
        <p>&copy; 2016 Proq, LLC.</p>
    </footer>

</div>


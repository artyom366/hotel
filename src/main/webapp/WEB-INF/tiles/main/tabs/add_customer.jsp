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
            <sf:input type="text" class="form-control" id="birth-date" path="birthDate" value="01/01/2015 - 01/31/2015"/>
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
            <sf:input type="text" class="form-control" id="identification-number" path="identificationNumber"
                      placeholder="Identification Number"/>
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
            <sf:input type="text" class="form-control" id="check_out" path="checkOut" placeholder="Check Out"
                      required=""/>
            <span class="label label-warning"><sf:errors path="checkOut"/></span>
        </div>

        <div class="form-group">
            <label for="service">Additional Services</label>
            <sf:textarea class="form-control" rows="5" id="service" path="service"></sf:textarea>
        </div>

        <div class="form-group">
            <label for="treatment">Special Treatments</label>
            <sf:textarea class="form-control" rows="5" id="treatment" path="treatment"></sf:textarea>
        </div>


        <input type="text" class="span2" value="" id="dpd1">
        <input type="text" class="span2" value="" id="dpd2">


        <div class="well">
            <input type="text" class="span2" value="02-16-2012" id="dp1">
        </div>


        <div class="registration-form-submit">
            <button type="submit" class="btn btn-success">Create</button>
        </div>
    </sf:form>


    <script>
        $('#dp1').datepicker({
            format: 'mm-dd-yyyy'
        });

        var nowTemp = new Date();
        var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);

        var checkin = $('#dpd1').datepicker({
            onRender: function(date) {
                return date.valueOf() < now.valueOf() ? 'disabled' : '';
            }
        }).on('changeDate', function(ev) {
            if (ev.date.valueOf() > checkout.date.valueOf()) {
                var newDate = new Date(ev.date)
                newDate.setDate(newDate.getDate() + 1);
                checkout.setValue(newDate);
            }
            checkin.hide();
            $('#dpd2')[0].focus();
        }).data('datepicker');
        var checkout = $('#dpd2').datepicker({
            onRender: function(date) {
                return date.valueOf() <= checkin.date.valueOf() ? 'disabled' : '';
            }
        }).on('changeDate', function(ev) {
            checkout.hide();
        }).data('datepicker');
    </script>

    <hr>

    <footer>
        <p>&copy; 2016 Proq, LLC.</p>
    </footer>

</div>


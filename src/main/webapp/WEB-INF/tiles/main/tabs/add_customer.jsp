<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<div class="jumbotron">
    <div class="container">
        <h2>Check In Customer</h2>
        <h4>Fill in all the fields below and press Create</h4>
    </div>
</div>

<div class="container col-md-12 col-sm-offset-2">

    <sf:form method="POST" action="${pageContext.request.contextPath}/add_customer" modelAttribute="add_customer">
        <div class="col-md-4 form-group">
            <fieldset class="form-group">
                <label for="apartment">Apartment</label>
                <sf:select class="form-control" id="gender" path="apartment" required="">
                    <option class="select-placeholder" value="" hidden>Select Apartment</option>

                    <c:forEach items="${apartments}" var="apartment">
                        <option><c:out value="${apartment.number}"/></option>
                    </c:forEach>

                </sf:select>
                <span class="label label-warning"><sf:errors path="gender"/></span>
            </fieldset>
            <div class="form-group">
                <label for="dpd1">Check In</label>
                <sf:input type="text" class="form-control span2" value="" id="dpd1" path="checkIn" placeholder="Check Out" required=""/>
                <span class="label label-warning"><sf:errors path="checkIn"/></span>
            </div>
            <div class="form-group">
                <label for="dpd2">Check Out</label>
                <sf:input type="text" class="form-control span2" value="" id="dpd2" path="checkOut" placeholder="Check Out" required=""/>
                <span class="label label-warning"><sf:errors path="checkOut"/></span>
            </div>
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
            <fieldset class="form-group">
                <label for="gender">Gender</label>
                <sf:select class="form-control" id="gender" path="gender" required="">
                    <option class="select-placeholder" value="" hidden>Select Gender</option>
                    <option>Male</option>
                    <option>Female</option>
                    <option>Other</option>
                </sf:select>
                <span class="label label-warning"><sf:errors path="gender"/></span>
            </fieldset>
        </div>

        <div class="col-md-4 form-group">
            <div class="form-group">
                <label for="dp1">Birth Date</label>
                <sf:input type="text" class="form-control span2" id="dp1" path="birthDate" placeholder="Birth Date" required=""/>
                <span class="label label-warning"><sf:errors path="birthDate"/></span>
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
            <fieldset class="form-group">
                <label for="service">Services</label>
                <sf:select multiple="true" class="form-control" id="service" path="service">

                    <c:forEach items="${services}" var="service">
                        <option><c:out value="${service.service}"/></option>
                    </c:forEach>

                </sf:select>
            </fieldset>
            <div class="form-group">
                <label for="treatment">Special Treatments</label>
                <sf:textarea class="form-control" rows="5" id="treatment" path="treatment"></sf:textarea>
            </div>
        </div>

        <div class="col-md-6 col-sm-offset-1 form-group">
            <div class="registration-form-submit">
                <button type="submit" class="btn btn-success">Create</button>
            </div>
        </div>
    </sf:form>


    <script>
        var birthDate = $('#dp1').datepicker({
            format: 'mm-dd-yyyy'
        }).on('changeDate', function(ev) {
            birthDate.hide();
        }).data('datepicker');

        var nowTemp = new Date();
        var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);

        var checkin = $('#dpd1').datepicker({
            format: 'mm-dd-yyyy',
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
            format: 'mm-dd-yyyy',
            onRender: function(date) {
                return date.valueOf() <= checkin.date.valueOf() ? 'disabled' : '';
            }
        }).on('changeDate', function(ev) {
            checkout.hide();
        }).data('datepicker');
    </script>


    <div class="col-md-12 form-group">
        <hr>
        <footer>
            <p>&copy; 2016 Proq, LLC.</p>
        </footer>
    </div>

</div>


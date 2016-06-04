<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<h2 class="sub-header">Active Customes</h2>

<div class="container">
    <div id="toolbar">
        <a id="add" class="btn btn-info" href="${pageContext.request.contextPath}/add_customer">Add</a>
        <button id="remove" class="btn btn-danger" data-toggle="modal" data-target=".modal-confirmation" disabled>Delete</button>
    </div>

    <table id="table"
           data-toggle="table"
           data-toolbar="#toolbar"
           data-search="true"
           data-show-refresh="true"
           data-show-toggle="true"
           data-show-columns="true"
           data-show-export="true"
           data-minimum-count-columns="2"
           data-show-pagination-switch="true"
           data-pagination="true"
           data-id-field="id"
           data-page-list="[10, 25, 50, 100, ALL]"
           data-show-footer="false"
           data-response-handler="responseHandler">
        <thead>
        <tr>
            <th data-field="state" data-checkbox="true"></th>
            <th>#</th>
            <th>Id</th>
            <th>Name</th>
            <th>Surname</th>
            <th>BD</th>
            <th>Gender</th>
            <th>Accompanied</th>
            <th>Identification</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Check In</th>
            <th>Check Out</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${customers}" var="customer" varStatus="loop">
            <tr>
                <td></td>
                <td>${loop.index + 1}</td>
                <td id="customer-id">${customer.id}</td>
                <td id="customer-name">${customer.name}</td>
                <td id="customer-surname">${customer.surname}</td>
                <td>${customer.birthDate}</td>
                <td>${customer.gender}</td>
                <td>${customer.accompanied}</td>
                <td>${customer.identificationNumber}</td>
                <td>${customer.email}</td>
                <td>${customer.phone}</td>
                <td>${customer.checkIn}</td>
                <td>${customer.checkOut}</td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>

<div id="confirm" class="modal fade modal-confirmation" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Are toy sure to delete the following user(s)?</h4>
            </div>

            <!--todo pass a list of user isd to method on bacj end-->
            <sf:form method="POST" action="${pageContext.request.contextPath}/users_delete">
                <div class="modal-body">
                    <div>
                        <ul id="userIds"></ul>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-danger">Delete</button>
                </div>
            </sf:form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script>
    var $table = $('#table'),
            $remove = $('#remove');

    $(function () {
        $table.on('check.bs.table uncheck.bs.table check-all.bs.table uncheck-all.bs.table', function () {
            $remove.prop('disabled', !$table.bootstrapTable('getSelections').length);
        });

        $remove.click(function () {

            var $users = [];
            var $modalBody = $(".modal-body #userIds").text($users);

            $('tr.selected').each(function(i, row){
                var $row = $(row);

                var $userId = $row.find('#user-id').text();
                var $userName = $row.find('#user-name').text();
                var $userSurname = $row.find('#user-surname').text();

                var $hiddenInput = '<input type="hidden" value="'+ $userId + '" name="userId">';

                $users.push('<li>' + $hiddenInput + $userId + ' ' + $userName + ' ' + $userSurname + '</li>');
            });

            $('#confirm').modal({
                keyboard: true
            });

            $modalBody.append($users);

            $remove.prop('disabled', true);
        });
    });
</script>

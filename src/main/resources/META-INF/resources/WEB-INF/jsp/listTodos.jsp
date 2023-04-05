<%@ include file="common/header.jspf" %>
<%@ include file="common/navbar.jspf" %>
<div class="container">
    <table class="table">
        <thead>
        <tr>
            <th>
                Username
            </th>
            <th>
                Description
            </th>
            <th>
                Done?
            </th>
            <th>
            </th>
            <th>
            </th>
        </tr>
        </thead>
        <tbody>

        <c:forEach items="${todos}" var="todo">
            <tr>
                <td>
                        ${todo.description}
                </td>
                <td>
                        ${todo.targetDate}
                </td>
                <td>
                        ${todo.done}
                </td>
                <td>
                    <a href="delete-todo?id=${todo.id}" class="btn btn-danger">DELETE</a>
                </td>
                <td>
                    <a href="update-todo?id=${todo.id}" class="btn btn-warning">UPDATE</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="add-todo" class="btn btn-success">Add Todo</a>
</div>
<%@ include file="common/footer.jspf" %>
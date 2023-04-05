<%@ include file="common/header.jspf" %>
<%@ include file="common/navbar.jspf" %>
<div class="container">
    <h1>
        Add Todo
    </h1>
    <form:form method="post" modelAttribute="todo">
        <pre>${error}</pre>
        <fieldset>
            <form:label path="description">
                Description
            </form:label>
            <form:input required="required" path="description"/>
            <form:errors path="description" cssClass="text-bg-warning"/>
        </fieldset>

        <fieldset>
            <form:label path="targetDate">
                Target Date
            </form:label>
            <form:input required="required" path="targetDate"/>
            <form:errors path="targetDate" cssClass="text-bg-warning"/>
        </fieldset>

        <form:input hidden="true" path="done"/>
        <form:input hidden="true" path="id"/>

        <input type="submit" value="Add" class="btn btn-success">
    </form:form>
</div>
<script src="webjars\bootstrap-datepicker\1.9.0\js\bootstrap-datepicker.min.js"></script>
<script type="text/javascript">
    $("#targetDate").datepicker({
        format: "yyyy-mm-dd"
    })
</script>
<%@ include file="common/footer.jspf" %>

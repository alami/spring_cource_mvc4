<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>enter your details</title>
</head>
<body>
<h2>Dear Employee, Please enter your details</h2><br><br>
<form:form  action="showDetails" modelAttribute="employee">
    Name: <form:input path="name"/><br><br>
    Surname: <form:input path="surname"/><br><br>
    Salary: <form:input path="salary"/><br><br>
    Department: <form:select path="department"><br><br>
    <form:options items="${employee.departments}" />
<%--    <form:option value="Human Resources" label="HR" />--%>
    </form:select><br><br>
    What car to your want:
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/><br><br>
<%--    BMV <form:radiobutton path="carBrand" value="BMV"></form:radiobutton>--%>
    Foriegn language(s):
    EN: <form:checkboxes path="languages" items="${employee.languageList}" />
<%--    EN: <form:checkbox path="languages" value="English"/>--%>
    <br><br>
    <input type="submit" value="OK">
</form:form>
</body>
</html>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>Form Book</title>
	<style>
		.error {
			color: #ee0d25;
		}
	</style>
</head>
<body>
<c:url var="actionUrl" value="save" />
<form:form id="bookForm" commandName="book" method="post"
	action="${actionUrl }" class="form-horizontal">

	<div class="form-group">
		<label for="name" class="col-xs-4 control-label">Name</label>
		<div class="col-xs-8">
			<form:input id="BookName" name="customerId" path="name" placeholder="Book Name"
				class="form-control" />
		</div>
		<form:errors path="name" cssClass="error"/>
	</div>

	<div class="form-group">
		<label for="name" class="col-xs-4 control-label">Name</label>
		<div class="col-xs-8">
			<form:input name="customerId" path="email" placeholder="Email"
						class="form-control" />
		</div>
		<form:errors path="email" cssClass="error"/>
	</div>

	<div class="form-group">
		<label for="code" class="col-xs-4 control-label">Code</label>
		<div class="col-xs-8">
			<form:input name="merocode" id="merocode" path="code"
				placeholder="Code" maxlength="15" class="form-control" />
		</div>
		<%--<form:errors path="code" cssClass="error"/>--%>
	</div>

	<div class="form-group">
		<label for="price" class="col-xs-4 control-label">Price</label>
		<div class="col-xs-8">
			<form:input path="price" placeholder="Price" maxlength="10"
				class="form-control" />
		</div>
		<form:errors path="price" cssClass="error"/>
	</div>

	<div class="form-group">
		<label for="authors" class="col-xs-4 control-label">Author(s)</label>
		<div class="col-xs-8">
			<form:input path="authors" placeholder="Authors" class="form-control" />
		</div>
		<form:errors path="authors" cssClass="error"/>
	</div>

	<div class="form-group">
		<label for="isbn" class="col-xs-4 control-label">ISBN</label>
		<div class="col-xs-8">
			<form:input path="isbn" placeholder="ISBN" class="form-control" />
		</div>
		<%--<form:errors path="authors" cssClass="error"/>--%>
	</div>

	<div class="form-group">
		<label for="publisher" class="col-xs-4 control-label">Publisher</label>
		<div class="col-xs-8">
			<form:input path="publisher" placeholder="Publisher"
				class="form-control" />
		</div>
	</div>

	<div class="form-group">
		<label for="publishedOn" class="col-xs-4 control-label">Published
			On</label>
		<div class="col-xs-8">
			<form:input path="publishedOn" placeholder="YYYY-MM-DD"
				class="datepicker form-control" />
		</div>
	</div>

	<form:input path="id" type="hidden" />
</form:form>
</body>
</html>
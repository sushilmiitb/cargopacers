<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<tiles:insertDefinition name="shipperHome">
	<tiles:putAttribute name="body">
		<form:form modelAttribute="order" method="POST" id="addNewTruckOrder">
			<label>Name</label>
			<form:input path="fromAddress.toName"/>
			<label>Address 1</label>
			<form:input path="fromAddress.address1"/>
			<label>Address 2</label>
			<form:input path="fromAddress.address2"/>
			<label>Landmark</label>
			<form:input path="fromAddress.landmark"/>
			<label>City</label>
			<form:input path="fromAddress.city"/>
			<label>Postal Code</label>
			<form:input path="fromAddress.postalCode"/>
			<label>Phone Number</label>
			<form:input path="fromAddress.phoneNumber"/>
			
			<p>Pickup Address</p>
			<label>Name</label>
			<form:input path="toAddress.toName"/>
			<label>Address 1</label>
			<form:input path="toAddress.address1"/>
			<label>Address 2</label>
			<form:input path="toAddress.address2"/>
			<label>Landmark</label>
			<form:input path="toAddress.landmark"/>
			<label>City</label>
			<form:input path="toAddress.city"/>
			<label>Postal Code</label>
			<form:input path="toAddress.postalCode"/>
			<label>Phone Number</label>
			<form:input path="toAddress.phoneNumber"/>
			
			<input type="submit" value="Book Now"/>
		</form:form>		
	</tiles:putAttribute>
</tiles:insertDefinition>
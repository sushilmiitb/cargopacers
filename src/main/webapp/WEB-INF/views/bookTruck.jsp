<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="shipperHome">
	<tiles:putAttribute name="body">
		<form:form modelAttribute="order" method="POST" id="addNewTruckOrder">
			<label>Pick Up Address</label>
			<label>Name</label>
			<form:input path="fromAddress.toName"/>
			<label>Address</label>
			<label>Line 1</label>
			<form:input path="fromAddress.address1"/>
			<label>Line 2</label>
			<form:input path="fromAddress.address2"/>
			<label>Landmark</label>
			<form:input path="fromAddress.landmark"/>
			<label>City</label>
			<form:input path="fromAddress.city"/>
			<label>Postal Code</label>
			<form:input path="fromAddress.postalCode"/>
			<label>Phone Number</label>
			<form:input path="fromAddress.phoneNumber"/>
			
			<label>Pick Up Date</label>
			<label>Pick Up Time</label>
			
			<p>Pickup Address</p>
			<label>Name</label>
			<form:input path="toAddress.toName"/>
			<label></label>
			<label>Line 1</label>
			<form:input path="toAddress.address1"/>
			<label>Line 2</label>
			<form:input path="toAddress.address2"/>
			<label>Landmark</label>
			<form:input path="toAddress.landmark"/>
			<label>City</label>
			<form:input path="toAddress.city"/>
			<label>Postal Code</label>
			<form:input path="toAddress.postalCode"/>
			<label>Phone Number</label>
			<form:input path="toAddress.phoneNumber"/>
			
			<label>Type of Truck</label>
			<form:select path="genericType">
				<form:option value="--">--Type of Truck--</form:option>
				<c:forEach var="item" items="${genericTruckTypeList}">
					<form:option value="${item}">${item}</form:option>
				</c:forEach>
			</form:select>
			
			<label>Select Goods Type</label>
			<form:select path="goodsTypeSpecificName">
				<form:option value="--">--Type of Good--</form:option>
				<c:forEach var="item" items="${goodsTypeSpecificNameList}">
					<form:option value="${item}">${item}</form:option>
				</c:forEach>
			</form:select>
			
			<label>Insurance Type</label>
			<form:select path="insuranceType">
				<form:option value="--">--Type of Insurance--</form:option>
				<c:forEach var="item" items="${insuranceTypeList}">
					<form:option value="${item}">${item}</form:option>
				</c:forEach>
			</form:select>			
			
			<input type="submit" value="Book Now"/>
		</form:form>
	</tiles:putAttribute>
</tiles:insertDefinition>
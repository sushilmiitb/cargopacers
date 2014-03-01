<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><tiles:getAsString name="title" /></title>
<tiles:insertAttribute name="head" defaultValue="" />
</head>
<body>
  <tiles:insertAttribute name="header" defaultValue="header.jsp" />
  <tiles:insertAttribute name="body" />
  <tiles:insertAttribute name="footer" defaultValue="footer.jsp" />
</body>
</html>

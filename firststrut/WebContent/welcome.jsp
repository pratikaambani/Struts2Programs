<%@ taglib uri="/struts-tags" prefix="s" %>
<head>
<s:head theme="ajax" />
</head>


<s:if test="hasActionMessages()">
	<s:actionmessage/>
</s:if>




<s:form action="next1">
Welcome <s:property value="user"/><br/>, 
Password is : <s:property value="pass"/><br/>
Roll No is : <s:property value="roll"/><br/>
Address is : <s:property value="address"/><br/>
Marks is : <s:property value="marks"/><br/>
<s:submit value = "next" />
</s:form>

Name is : <s:property value="user"/><br/>
<%-- <s:autocompleter theme = "simple" list= "states"> --%>

<a href="http://localhost:8080/firststruts"><% session.invalidate(); %></a>


<a href="http://localhost:8080/firststruts">Back to login page</a>


<s:submit value = "button.logout" name="button.logout"></s:submit>
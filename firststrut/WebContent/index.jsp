<%@ taglib uri="/struts-tags" prefix="s" %>

<title> Struts 2</title>



<s:form action="product" validate="true">
	<s:textfield name="user" key="Label.ID" ></s:textfield>
	<br>
	<s:password name="pass" key="label.pw"></s:password>	
	<br>
	<s:textfield name="roll" key="Roll No."></s:textfield>
	<br>
	<s:textfield name="marks" key="Marks"></s:textfield>
	<br>
	<s:textfield name="address" key="Address"></s:textfield>
	<br>
	<s:submit value="save"></s:submit>

</s:form>






<s:form action="tester">
	<s:textfield name="user" label="User Id"></s:textfield>
	<br>
	<s:password name="pass" label="Password"></s:password>	
	<s:submit value="save"></s:submit>

</s:form>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function displayProject()
{
    var xmlhttp;
    if (window.XMLHttpRequest)
      {// code for IE7+, Firefox, Chrome, Opera, Safari
      xmlhttp=new XMLHttpRequest();
      }
    else
      {// code for IE6, IE5
      xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
      }

    xmlhttp.open("GET","ReadProjectsInfo",true);
    xmlhttp.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    xmlhttp.onreadystatechange= function ()
    {
        if (xmlhttp.readyState==4)
        {
        if (xmlhttp.status == 200)
        {
        var time = xmlhttp.responseText;
        //alert(time);
        document.getElementById("center").innerHTML=xmlhttp.responseText;
        }
        }
    }
    xmlhttp.send(); 

//document.getElementById("center").innerHTML=Date();
}

</script>


<link rel="stylesheet" type="text/css" href="css/start.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Learning CSS</title>
</head>
    <body>
    <div id ="headerLink" class="HeaderLink" >
        <button id="adminLink" class="AdminLink" href='DNE.jsp'>Home</button></div>
        <button id="projectButton" class="ProjectButton"  onclick="displayProject()" >Projects</button>
    </div>

        <div id="center" class ="Center"><p>Click Project</p></div>
    </body>
</html>
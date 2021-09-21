var request;
   function senddata()
   {
    alert("Control is in senddata");
				   var name=document.getElementById("login").value;
				   var admin_username=document.getElementById("email").value;
				   var admin_password=document.getElementById("pwd").value;
				   var url="/ftb/controller/CustomerLoginServlet?name="+name+"&admin_username="+admin_username+"&admin_password="+admin_password;
				   if(window.XMLHttpRequest)
					   {
					   request=new XMLHttpRequest();
					   }else if(window.ActiveXObject)
						   {
						   request=new ActiveXObject("Microsoft.XMLHTTP");
						   }
				   try
				   {
					   request.open("POST",url,true);
					   request.send();
					   request.onreadystatechange=getInfo;
				   }catch(e)
				   {
					   alert("Unable to connect");
				   }
			   }

   function getInfo()
	   {
		   if(request.readyState==4)
			   {
                alert("Control is in readstate");
			   document.getElementById("op").style.display='';
			   var val=request.responseText;
			   $("#op").text(val);
			   
			   }
	   }

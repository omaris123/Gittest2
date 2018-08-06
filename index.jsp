<%@page import="com.chilyfacts.com.Etudiants"%>
<%@page import="java.io.IOException" %>
<%@page import="java.nio.file.Files" %>
<%@page import="java.nio.file.LinkOption" %>
<%@page import="java.nio.file.Path" %>
<%@page import="java.nio.file.Paths" %>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<form action="FileUploadHandler" enctype="multipart/form-data" method="post">
  <input type="text" name="file_name"><br>
  Select <input type="file" name="file2" /><br>
  <input type="submit" value="upload"/>

</form>
</center>
   <%
   Etudiants e=new Etudiants();
   out.println(e.selectEtudiant());
   
   %>
   <form>
   <input type="submit" name="mm">
   <%
     if(request.getParameter("mm")!=null){
    	 
    	 
    	 Path path = Paths.get("/Users/omar/eclipse-workspace/JSP_File_Upload/test_fichier.txt");
    	 String tab[] =new String[3];

    	 for(String ligne : Files.readAllLines(path)) {    	 	     	 			   	 	
    	    	 int i=0;
    	         int j=0;
    	         int k=0;
    	        while(i<ligne.length())    	     	   
    	        {
    	         if(ligne.substring(i,i+1).equals("|"))  
    	        {
    	         	tab[k]=(ligne.substring(j,i));  
    	         	k++;                
    	         	i++;                     
    	         	j=i;        	
    	        }
    	         else
    	         {    	         	
    	         	i++;    	         	    	         		   	         	
    	         }
    	        
    	        }
    	        tab[k]=(ligne.substring(j,i));
    	 	
    	 	
    	 		Etudiants etds=new Etudiants();
    	 		etds.insertEtudiant(tab[0], tab[1], tab[2]);
    	 
     }}
   
   
   %>
   
   </form>

</body>
</html>
<%-- 
    Document   : OWNER
    Created on : Feb 18, 2020, 10:49:57 PM
    Author     : Acer
--%>

<%@page import="com.connection.Queries"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Enhancing Data Security</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="css/clean-blog.min.css" rel="stylesheet">
<link href="table.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="index.html">Fog Computing</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="FogNode_Home.jsp">Home</a>
                    </li>
                    <li>
                        <a href="FN_View_Files.jsp">View Files</a>
                    </li>
                    <li>
                        <a href="FN_UploadedFiles.jsp">View Uploaded Files</a>
                    </li>
                    <li>
                        <a href="FogNode.jsp">Log out</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('img/home-bg.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="site-heading">
                        <h2>Enhancing Data Security</h2>
                        <hr class="small">
                        <span class="subheading">In IoT Health care Services Using Fog Computing</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="post-preview">
                    <h2>View All Files </h2>
                     <%
                                            String msg=request.getParameter("msg");
                                            if(msg!=null){
                                              if(msg.equals("Success")){
                                                 %>
                                                 <font color="green"><h2>Uploaded Successfully...!!</h2></font>      
                                                 <%
                                              }else if(msg.equals("Failed")){
%>
                                                 <font color="red"><h2>Uploading Failed...!!</h2></font>      
                                                 <%
} 
                                            }
                                            
                                            
                                            %>
                </div>
                <hr>
                <div class="post-preview">
                   <table border="1">
                        <tr>
                            <th>FILE ID</th>
                            <th>FILE NAME</th>
                            <th>DATA</th>
                            <th>UPLOAD DATE</th>
                              <th>ACTION</th>
                        </tr>
                        <%try{
                            String query="select * from file where status='fognode' and status2='waiting'";
                            
                            ResultSet r=Queries.getExecuteQuery(query);
                            while(r.next()){
                               String fid=r.getString("fid");
                               String data=r.getString("data");
                              %>
                             <tr> 
                                 <td><%=fid%></td>
                                 <td><%=r.getString("fname")%></td>
                                 <td><textarea cols="30" rows="5"><%=data%></textarea></td>
                                 <td><%=r.getString("fdate")%></td>
                                 <td><a href="Encryption.jsp?id=<%=fid%>"><font color="red">Encrypt</a></font></td>
                                
                             </tr>
                              
                              <%
                            }
                            
                            
                            
                            
                            
                        }catch(Exception e){
                            out.println(e);
                            
}%>
                    </table>
                       
                    
                    
                           </div>
               
                <div class="post-preview">
                   
                    
                </div>
              
                <div class="post-preview">
                   
                  
                    
                </div>
                <hr>
               
            </div>
        </div>
    </div>

    <hr>

   

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/clean-blog.min.js"></script>

</body>

</html>

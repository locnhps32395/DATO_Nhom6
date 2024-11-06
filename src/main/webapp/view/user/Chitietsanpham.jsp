<%@ page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Thái Công Online Store</title>
    <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <!-- Font Awesome for Icons -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
    />
    
  
    <script></script>
  </head> 
  <body>
    <!-- Responsive Navbar -->
<jsp:include page="menu.jsp"/>

    <!-- Main Content with 2 images side by side -->
<jsp:include page="chitiet.jsp"/>
   
     <jsp:include page="sanphamtuongtu.jsp"/>


  <jsp:include page="bannericon.jsp"/>
   <jsp:include page="footer.jsp"/>
    


    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>

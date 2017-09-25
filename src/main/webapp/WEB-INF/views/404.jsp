<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html lang="en">
<body>
    
    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">404
        <small>Page Not Found</small>
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.jsp">Home</a>
        </li>
        <li class="breadcrumb-item active">404</li>
      </ol>

      <div class="jumbotron">
        <h1 class="display-1">404</h1>
        <p>The page you're looking for could not be found. Here are some helpful links to get you back on track:</p>
        <ul>
          <li>
            <a href="index.jsp">Home</a>
          </li>
          <li>
            <a href="about.jsp">About</a>
          </li>
          <li>
            <a href="services.jsp">Services</a>
          </li>
          <li>
            <a href="contact.jsp">Contact</a>
          </li>
          <li>
            Portfolio
            <ul>
              <li>
                <a href="portfolio-1-col.jsp">1 Column Portfolio</a>
              </li>
              <li>
                <a href="portfolio-2-col.jsp">2 Column Portfolio</a>
              </li>
              <li>
                <a href="portfolio-3-col.jsp">3 Column Portfolio</a>
              </li>
              <li>
                <a href="portfolio-4-col.jsp">4 Column Portfolio</a>
              </li>
            </ul>
          </li>
          <li>
            Blog
            <ul>
              <li>
                <a href="blog-home-1.jsp">Blog Home 1</a>
              </li>
              <li>
                <a href="blog-home-2.jsp">Blog Home 2</a>
              </li>
              <li>
                <a href="blog-post.jsp">Blog Post</a>
              </li>
            </ul>
          </li>
          <li>
            Other Pages
            <ul>
              <li>
                <a href="full-width-page.jsp">Full Width Page</a>
              </li>
              <li>
                <a href="sidebar.jsp">Sidebar Page</a>
              </li>
              <li>
                <a href="faq.jsp">FAQ</a>
              </li>
              <li>
                <a href="404.jsp">404 Page</a>
              </li>
              <li>
                <a href="pricing-table.jsp">Pricing Table</a>
              </li>
            </ul>
          </li>
        </ul>
      </div>
      <!-- /.jumbotron -->

    </div>
    <!-- /.container -->

 <!-- footer -->
<%@ include file="footer.jsp" %>
<!-- /.footer -->
</html>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Note Taker</title>
    <%@include file="all_js_css.jsp"%>
  </head>
  <body>
    <div class="container">
        <%@include file="navbar.jsp"%>
        <br/>
        <div class="card my-4 py-3">
            <img src="img/notes.png" class="img-fluid mx-auto mt-3" style="max-width:400px" alt=""/>
            <h1 class="text-primary text-uppercase text-center mt-5">Start taking your Notes</h1>
        </div>
        <a href="add_note.jsp" class="btn btn-outline-primary btn-lg my-1 py-1 container">Start Here</a>
    </div>
  </body>
</html>




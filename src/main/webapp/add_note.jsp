<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Add Notes</title>
    <%@include file="all_js_css.jsp"%>
  </head>
  <body>
     <div class="container">
        <%@include file="navbar.jsp"%>
        <br/>
        <h1>Please fill your note details</h1>
        <br/>

        <!-- form -->
            <form action="SaveNoteServlet" method="post">
                <div class="form-group">
                    <label for="noteTitle">Note Title</label>
                    <input name="title" type="text" class="form-control" id="noteTitle" placeholder="Enter Note Title" required>
                </div>
                <div class="form-group">
                    <label for="noteContent">Note Content</label>
                    <textarea name="content" style="height:300px;" class="form-control" id="noteContent" placeholder="Enter Here..." required></textarea>
                </div>
                <br/>
                <div class="container text-center">
                    <button type="submit" class="btn btn-primary">Add</button>
                </div>
                </form>

     </div>
  </body>
</html>
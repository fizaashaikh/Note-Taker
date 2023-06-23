<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Update Note</title>
    <%@include file="all_js_css.jsp"%>
  </head>
  <body>
    <div class="container">
        <%@include file="navbar.jsp"%>
        <br/>
        <h1>This is update page</h1>
        <%
            int noteId = Integer.parseInt(request.getParameter("note_id").trim());
            Session s= FactoryProvider.getSessionFactory().openSession();
            Note note = s.get(Note.class, noteId);
        %>

        <!-- form -->
        <form action="UpdateNoteServlet" method="post">
            <input value="<%= note.getNodeId()%>" name="noteId" type="hidden"/>
            <div class="form-group">
                <label for="noteTitle">Note Title</label>
                <input name="title" type="text" class="form-control" id="noteTitle" placeholder="Enter Note Title" value="<%= note.getTitle()%>" required>
            </div>
            <div class="form-group">
                 <label for="noteContent">Note Content</label>
                 <textarea name="content" style="height:300px;" class="form-control" id="noteContent" placeholder="Enter Here..." required><%= note.getContent()%></textarea>
            </div>
            <br/>
            <div class="container text-center">
                <button type="submit" class="btn btn-success">Save</button>
            </div>
        </form>
    </div>
  </body>
</html>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="java.util.List"%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>All Notes</title>
    <%@include file="all_js_css.jsp"%>
  </head>
  <body>
    <div class="container">
        <%@include file="navbar.jsp"%>
        <br/>
        <h1 class="text-uppercase">All Notes </h1>

        <div class="row">
            <div class="col-12">
                <%
                    Session s = FactoryProvider.getSessionFactory().openSession();

                    Query query = s.createQuery("from Note");
                    List<Note> notes = query.list();

                    for(Note note: notes) {
                %>
                    <div class="card mt-3">
                        <img class="card-img-top ml-5 mt-3" style="max-width:55px;" src="img/notes.png" alt="Card image cap">
                        <div class="card-body px-5">
                            <h5 class="card-title"><%= note.getTitle() %></h5>
                            <p class="card-text">
                                <%= note.getContent() %>
                            </p>
                            <div class="mt-4">
                                <a href="DeleteNoteServlet?note_id=<%= note.getNodeId()%>" class="btn btn-danger mr-4">Delete</a>
                                <a href="#" class="btn btn-primary">Update</a>
                            </div>
                        </div>
                    </div>
                <%
                    }

                    s.close();
                %>
            </div>
        </div>

    </div>
  </body>
</html>
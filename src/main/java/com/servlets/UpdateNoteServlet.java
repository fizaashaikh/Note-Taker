package com.servlets;

import com.entities.Note;
import com.helper.FactoryProvider;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

public class UpdateNoteServlet extends HttpServlet {
    public UpdateNoteServlet() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            // id
            int noteId = Integer.parseInt(req.getParameter("noteId").trim());

            // title
            String noteTitle = req.getParameter("title");

            // content
            String noteContent = req.getParameter("content");

            // hibernate: update
            Session session = FactoryProvider.getSessionFactory().openSession();
            Transaction transaction = session.beginTransaction();
            Note note = session.get(Note.class, noteId);

            note.setTitle(noteTitle);
            note.setContent(noteContent);
            note.setAddedDate(new Date());

            transaction.commit();
            session.close();

            resp.sendRedirect("all_notes.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

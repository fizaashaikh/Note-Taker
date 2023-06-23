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

public class DeleteNoteServlet extends HttpServlet {
    public DeleteNoteServlet() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int noteId = Integer.parseInt(req.getParameter("note_id").trim());
            Session session = FactoryProvider.getSessionFactory().openSession();
            Transaction transaction = session.beginTransaction();
            Note note = session.get(Note.class, noteId);
            session.delete(note);
            transaction.commit();
            session.close();

            resp.sendRedirect("all_notes.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

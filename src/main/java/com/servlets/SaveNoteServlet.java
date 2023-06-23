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
import java.io.PrintWriter;
import java.util.Date;

public class SaveNoteServlet extends HttpServlet {

    public SaveNoteServlet() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            // title
            String noteTitle = req.getParameter("title");

            // content
            String noteContent = req.getParameter("content");

            Note note = new Note(noteTitle, noteContent, new Date());

            // hibernate: save
            Session session = FactoryProvider.getSessionFactory().openSession();
            Transaction transaction = session.beginTransaction();
            session.save(note);
            transaction.commit();
            session.close();

            resp.setContentType("text/html");
            PrintWriter writer = resp.getWriter();
            writer.println("<h1 style='text-align:center'>Note added successfully!</h1>");
            writer.println("<h1 style='text-align:center'><a href='all_notes.jsp'>View all notes</a></h1>");
//            FactoryProvider.closeFactory();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

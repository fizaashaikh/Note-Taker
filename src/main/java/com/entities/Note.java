package com.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;
import java.util.Random;

@Entity
@Table(name = "notes")
public class Note {
    @Id
    @Column(name = "note_id")
    private int nodeId;
    private String title;
    private String content;
    @Column(name = "added_date")
    private Date addedDate;

    public Note() {
        super();
    }

    public Note(String title, String content, Date addedDate) {
        super();
        this.nodeId = new Random().nextInt(10000);
        this.title = title;
        this.content = content;
        this.addedDate = addedDate;
    }

    public int getNodeId() {
        return nodeId;
    }

    public void setNodeId(int nodeId) {
        this.nodeId = nodeId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(Date addedDate) {
        this.addedDate = addedDate;
    }
}

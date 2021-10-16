package model;

import java.util.ArrayList;
import java.util.List;


public class Playlist{
    private int listID;
    private String username;
    private String listName;
    private List<Song> songs = new ArrayList<>();

    public Playlist() {
    }

    public Playlist(int listID, String username, String listName) {
        this.listID = listID;
        this.username = username;
        this.listName = listName;
    }

    public int getListID() {
        return listID;
    }

    public void setListID(int listID) {
        this.listID = listID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getListName() {
        return listName;
    }

    public void setListName(String listName) {
        this.listName = listName;
    }

    public List<Song> getSongs() {
        return songs;
    }

    public void setSongs(List<Song> songs) {
        this.songs = songs;
    }

    @Override
    public String toString() {
        return "Playlist{" + "listID=" + listID + ", username=" + username + ", listName=" + listName + ", songs=" + songs.size() + '}';
    }
    
    
}

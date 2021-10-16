/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nvlon
 */
public class Song {
    private int songID, likeCount;
    private String name, genre, img, uri;
    private List<Singer> artist = new ArrayList<>();

    public Song() {
    }

    public Song(int songID, int likeCount, String name, String genre, String img, String uri) {
        this.songID = songID;
        this.likeCount = likeCount;
        this.name = name;
        this.genre = genre;
        this.img = img;
        this.uri = uri;
    }

    public int getSongID() {
        return songID;
    }

    public void setSongID(int songID) {
        this.songID = songID;
    }

    public int getlikeCount() {
        return likeCount;
    }

    public void setlikeCount(int likeCount) {
        this.likeCount = likeCount;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getUri() {
        return uri;
    }

    public void setUri(String uri) {
        this.uri = uri;
    }

    public List<Singer> getArtist() {
        return artist;
    }

    public void setArtist(List<Singer> artist) {
        this.artist = artist;
    }

    @Override
    public String toString() {
        return "Song{" + "songID=" + songID + ", likeCount=" + likeCount + ", name=" + name + ", genre=" + genre + ", img=" + img + ", uri=" + uri + ", artist=" + artist + '}';
    }

}

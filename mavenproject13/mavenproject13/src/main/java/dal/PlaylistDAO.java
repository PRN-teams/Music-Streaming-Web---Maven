package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Playlist;
import model.Song;

/**
 *
 * @author admin
 */
public class PlaylistDAO extends DBContext {

    public List<Playlist> getAllList(String username) {
        List<Playlist> list = new ArrayList<>();
        String sql = "SELECT [playlistID]\n"
                + "      ,[username]\n"
                + "      ,[playlistName]\n"
                + "  FROM [SWPDB].[dbo].[playlist] where username = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Playlist p = new Playlist();
                p.setListID(rs.getInt("playlistID"));
                p.setUsername(rs.getString("username"));
                p.setListName(rs.getString("playlistName"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public Playlist getListById(int listID) {
        Playlist list = new Playlist();
        String sql = "select * from playlist p where playlistID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, listID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.setListID(rs.getInt("playlistID"));
                list.setUsername(rs.getString("username"));
                list.setListName(rs.getString("playlistName"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        
        List<Song> listS = new ArrayList<>();
        SongDAO sDAO = new SongDAO();
        String sql2 = " select songID from listDetail where playlistID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql2);
            st.setInt(1, listID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                listS.add(sDAO.getSongByID(rs.getInt("songID")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        list.setSongs(listS);
        return list;
    }

    public void createList(String username, String name) {
        String sql = "insert into playlist values(?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, name);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public boolean checkExistList(String username, String name){
        List<Playlist> list = getAllList(username);
        for (Playlist playlist : list) {
            if(name.matches(playlist.getListName())){
                return true;
            }
        }
        return false;
    }

    public void deleteSong(int listId, int songID) {
        String sql = "delete from listDetail where playlistID = ?";
        
        if (songID != 0){
            sql += " and songID = ?";
        }
        
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, listId);
            if(songID != 0) st.setInt(2, songID);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteList(int id) {
        String sql = "delete from playlist where playlistID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public void AddtoList(int listId, int songId) {
        String sql = "insert into listDetail values(?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, listId);
            st.setInt(2, songId);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public void like(int songID){
        String sql = "UPDATE song SET likeCount += 1 WHERE songID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, songID);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public void dislike(int songID){
        String sql = "UPDATE song SET likeCount -= 1 WHERE songID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, songID);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public boolean checkSong(int listID, int songID){
        Playlist p = getListById(listID);
        for (Song s : p.getSongs()) {
            if(songID == s.getSongID()){
                return true;
            }
        }
        return false;
    }

    public static void main(String[] args) {
        PlaylistDAO p = new PlaylistDAO();
        p.like(18);
       
    }
}

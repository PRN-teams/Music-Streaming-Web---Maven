/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Singer;

/**
 *
 * @author nvlon
 */
public class ArtistDAO extends DBContext{
    
    public Singer getSingerByID(int aid){
        
        Singer s = new Singer();
        
        String sql = "select * from singer where singerID = ?";
        
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, aid);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                s.setSingerID(aid);
                s.setName(rs.getString(2));
                s.setInfo(rs.getString(3));
                s.setImg(rs.getString(4));
                return s;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        
        return null;
    }
    
}

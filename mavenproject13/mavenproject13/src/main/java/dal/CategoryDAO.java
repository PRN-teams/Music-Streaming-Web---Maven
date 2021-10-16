/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Category;

/**
 *
 * @author nvlon
 */
public class CategoryDAO extends DBContext{
    public List<Category> getAllCategory(){
        List<Category> c = new ArrayList<>();
        String sql = "select * from category";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category cate = new Category();
                cate.setCategoryID(rs.getInt(1));
                cate.setCategoryName(rs.getString(2));
                cate.setImg(rs.getString(3));
                c.add(cate);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return c;
    }
}

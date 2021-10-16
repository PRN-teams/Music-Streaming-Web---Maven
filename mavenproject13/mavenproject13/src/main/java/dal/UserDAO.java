package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account;
import model.User;

/**
 *
 * @author admin
 */
public class UserDAO extends DBContext {

    public int addUserInfo(User a) {
        String sql = "insert into dbo.[user] values(?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, a.getUsername());
            st.setString(2, a.getFullname());
            st.setString(3, a.getEmail());
            st.setString(4, a.getStatus());
            return st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public User getCustomerInfo(Account a) {
        String sql = "  select username, fullname, email, status \n"
                + "from dbo.[user] where username = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, a.getUsername());
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new User(a.getUsername(), rs.getString(2), rs.getString(3), rs.getString(4));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }
    
    public void updateUser(String fullname, String newmail, String username) {
        String sql = "UPDATE dbo.[user] SET fullname = ? , email = ? WHERE username = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, fullname);
            st.setString(2, newmail);
            st.setString(3, username);
            st.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        UserDAO u = new UserDAO();
        u.addUserInfo(new User("tung", "Phan Tung", "tung@gmail.com", "normal"));
    }

}

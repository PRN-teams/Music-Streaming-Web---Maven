package model;

/**
 *
 * @author admin
 */
public class User {
    private String username;
    private String fullname;
    private String email;
    private String status;

    public User() {
    }

    public User(String username, String fullname, String email, String status) {
        this.username = username;
        this.fullname = fullname;
        this.email = email;
        this.status = status;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    

    @Override
    public String toString() {
        return "User{" + "username=" + username + ", fullname=" + fullname + ", email=" + email + ", status=" + status + '}';
    }
    
    
    
}

package classes.model.dbService;

import java.sql.DriverManager;

import java.sql.*;
import com.google.gson.Gson;
import classes.model.entity.EUser;

public class DBservice {
    private Statement stmt;
    private ResultSet rs;
    private PreparedStatement statement;
    private Connection con;

    public DBservice(){
        try
        {
            String url = "jdbc:mysql://localhost/kardio?serverTimezone=Europe/Moscow&useSSL=false";
            String username = "root";
            String password = "3572";
            Class.forName("com.mysql.cj.jdbc.Driver").getDeclaredConstructor().newInstance();
            con = DriverManager.getConnection(url, username, password);
        } catch (Exception ex) { System.out.println(ex); }
    }
    public Boolean reqDoReg(String login, String password){
        try {
            Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = stmt.executeQuery("SELECT * FROM users");

            String query = "INSERT INTO users(login, password) VALUES (?,?)";
            PreparedStatement statement = con.prepareStatement(query);
            statement.setString(1, login);
            statement.setString(2, password);
            statement.execute();

            rs.close();
            stmt.close();
        } catch (Exception ex) {
            System.out.println("Exception in MODEL.reqDoReg(): " + ex.getMessage());
            return false;
        }

        return true;
    }

    public Boolean reqDoLog(String login, String password){
        try
        {
            Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = stmt.executeQuery("SELECT * FROM users");

            while(rs.next())
            {
                if (rs.getString("login").equals(login) && rs.getString("password").equals(password))
                    return true;
            }

            rs.close();
            stmt.close();
        }
        catch (Exception e) {
            System.out.println("Exception in DBSERVICE.reqDoLog(): " + e.getMessage());
            return false;
        }
        return false;
    }
}
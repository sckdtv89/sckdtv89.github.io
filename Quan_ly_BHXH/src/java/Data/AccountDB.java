package Data;

import Model.Account;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class AccountDB {
    ConnectDB db = new ConnectDB();
    Connection connection = null;
    Statement stmt = null;
    ResultSet rs = null;

    //Kiểm tra tài khoản đăng nhập.
    public boolean Login(String userName, String passWord) throws Exception {
        String sql = "SELECT * FROM USER WHERE USERNAME=? AND PASSWORD=?";
        connection = db.getConnection();
        PreparedStatement pst = connection.prepareStatement(sql);
        pst.setString(1, userName);
        pst.setString(2, passWord);
        ResultSet rs = pst.executeQuery();
        Account account = null;
        if (rs.next()) {
            String u = rs.getString("username");
            String p = rs.getString("password");
            account = new Account(u, p);
        }
        return account != null;
    }

    public static void main(String[] args) throws Exception {
        System.out.println("Login:" + new AccountDB().Login("trantuananh", "12345678"));
    }
}

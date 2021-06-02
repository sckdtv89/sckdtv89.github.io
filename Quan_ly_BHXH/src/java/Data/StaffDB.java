package Data;

import Model.Staff;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class StaffDB {

    ConnectDB db = new ConnectDB();
    Connection connection = null;
    Statement stmt = null;
    ResultSet rs = null;

    public Staff getStaff(String userName, String passWord) throws Exception {
        Staff staff = new Staff();
        if (new AccountDB().Login(userName, passWord)) {
            String strSQL = "SELECT * FROM STAFF_LIST where userName =?";
            connection = db.getConnection();
            PreparedStatement pst = connection.prepareStatement(strSQL);
            pst.setString(1, userName);
            try {
                rs = pst.executeQuery();
                if (rs.next()) {
                    String user = rs.getString("username");
                    String department = rs.getString("department");
                    String fullName = rs.getString("fullName");
                    int birthYear = rs.getInt("birthYear");
                    String hometown = rs.getString("hometown");
                    staff = new Staff(userName, department, fullName, birthYear, hometown);
                    System.out.println(staff);
                }
            } catch (Exception e) {
                throw new Exception(e.getMessage());
            }
            connection.close();
        }
        return staff;
    }

    public static void main(String[] args) {
        try {
            new StaffDB().getStaff("leducanh", "12345678");
        } catch (Exception ex) {
            Logger.getLogger(StaffDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}

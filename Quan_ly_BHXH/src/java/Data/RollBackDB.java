/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Admin
 */
public class RollBackDB {

    ConnectDB db = new ConnectDB();
    Connection connection = null;
    Statement stmt = null;
    ResultSet rs = null;
    public String rb1 = "Truncate Table fund_percent;\n"
            + "INSERT INTO fund_percent VALUES(1,N'Hưu trí, tử tuất',2.5);\n"
            + "INSERT INTO fund_percent VALUES(2,N'Thai sản, Đau ốm',3);\n"
            + "INSERT INTO fund_percent VALUES(3,N'Tai nạn lao động, bệnh nghề nghiệp',0.5);\n"
            + "INSERT INTO fund_percent VALUES(4,N'Thất nghiệp',1);\n"
            + "INSERT INTO fund_percent VALUES(5,N'Y tế',5);";

    public void RollBackFund() {
        try {
            connection = db.getConnection();
            PreparedStatement pst = connection.prepareStatement(rb1);
            pst.executeUpdate();
        } catch (Exception e) {
        }
    }
    public String rb2 = "Truncate Table limit_salary;\n"
            + "	INSERT INTO limit_salary VALUES(1,\"max\",22.0);\n"
            + "	INSERT INTO limit_salary VALUES(2,\"min\",3710000);";

    public void RollBackLimit() {
        try {
            connection = db.getConnection();
            PreparedStatement pst = connection.prepareStatement(rb2);
            pst.executeUpdate();
        } catch (Exception e) {
        }
    }
    public String rb3 = "Truncate Table salary_region;\n"
            + "	INSERT INTO salary_region VALUES(1,300000);\n"
            + "	INSERT INTO salary_region VALUES(2,3710000);\n"
            + "    INSERT INTO salary_region VALUES(3,3250000);\n"
            + "    INSERT INTO salary_region VALUES(4,2920000);";

    public void RollBackSR() {
        try {
            connection = db.getConnection();
            PreparedStatement pst = connection.prepareStatement(rb3);
            pst.executeUpdate();
        } catch (Exception e) {
        }
    }
}

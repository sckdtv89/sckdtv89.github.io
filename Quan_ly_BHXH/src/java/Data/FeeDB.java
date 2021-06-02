package Data;

import Model.Fee;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class FeeDB {

    ConnectDB db = new ConnectDB();
    Connection connection = null;
    Statement stmt = null;
    ResultSet rs = null;

    public ArrayList<Fee> getMemberList() throws Exception {
        int status = 1;
        String sql = "";
        if (status == 1 || status == 2) {
            // Đã nhận nộp tiền bhxh
            sql = "AND BHXH.FEE_LIST.INSURANCEFEE<>0 "
                    + "AND BHXH.FEE_LIST.PAYMENT=?";
        } else if (status == 3 || status == 4) {
            //Nhận tiền hỗ trợ
            sql = "AND BHXH.FEE_LIST.SUBSIDY<>0 "
                    + "AND BHXH.FEE_LIST.RECEIVE=?";
        }
        ArrayList< Fee> list = new ArrayList<Fee>();
        String strSQL = "SELECT * FROM BHXH.FEE_LIST, BHXH.MEMBER_LIST "
                + "WHERE BHXH.FEE_LIST.ID=BHXH.MEMBER_LIST.ID "
                + "AND BHXH.FEE_LIST.TIME=? "
                + "AND BHXH.MEMBER_LIST.HOMETOWN=? "
                + sql;
        connection = db.getConnection();

        PreparedStatement pst = connection.prepareStatement(strSQL);
        pst.setString(1, "1-2021");
        pst.setString(2, "Nam định");
        if (status == 1) {
            pst.setString(3, "1");
        } else if (status == 2) {
            pst.setString(3, "0");
        } else if (status == 3) {
            pst.setString(3, "1");
        } else if (status == 4) {
            pst.setString(3, "0");
        }
        try {
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                String id = rs.getString("FEE_LIST.id");
                String time = rs.getString("FEE_LIST.time");
                String hometown = rs.getString("MEMBER_LIST.hometown");
                //int payment = rs.getInt("FEE_LIST.PAYMENT");
                System.out.println(id + " " + time + " " + hometown);
            }
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
        connection.close();
        return list;
    }

    public static void main(String[] args) {
        try {
            new FeeDB().getMemberList();
        } catch (Exception ex) {
            Logger.getLogger(FeeDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

package Data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


public class MemberDB {

    ConnectDB db = new ConnectDB();
    Connection connection = null;
    Statement stmt = null;
    ResultSet rs = null;

    

    //type 1: thành viên mới tham gia
    //type 2: thành viên bỏ tham gia
    //type 3: tổng tất cả thành vien tham gia
    public int countMember(int type, String time, String hometown) throws Exception {
        String sql = "";
        int count = 0;
        if (type == 1) {
            // số người mới tham gia
            sql = "SELECT * FROM BHXH.MEMBER_LIST, BHXH.TIME_JOIN "
                    + "WHERE BHXH.MEMBER_LIST.ID=BHXH.TIME_JOIN.ID "
                    + "AND BHXH.MEMBER_LIST.HOMETOWN=? "
                    + "AND BHXH.TIME_JOIN.JOINTIME LIKE ?";
        } else if (type == 2) {
            //số người bỏ tham gia
            sql = "SELECT * FROM BHXH.MEMBER_LIST, BHXH.TIME_OUT "
                    + "WHERE BHXH.MEMBER_LIST.ID=BHXH.TIME_OUT.ID "
                    + "AND BHXH.MEMBER_LIST.HOMETOWN=? "
                    + "AND BHXH.TIME_OUT.TIMEOUT LIKE ?";
        } else if (type == 3) {
            // số người tham gia
            sql = "SELECT * FROM BHXH.FEE_LIST,BHXH.MEMBER_LIST "
                    + "WHERE BHXH.MEMBER_LIST.HOMETOWN=? "
                    + "AND BHXH.MEMBER_LIST.ID=BHXH.FEE_LIST.ID "
                    + "AND BHXH.FEE_LIST.TIME=?";
        }
         connection = db.getConnection();
        PreparedStatement pst = connection.prepareStatement(sql);
        pst.setString(1, hometown);
        pst.setString(2, time);
        try {
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                // System.out.println(rs.getString("ID"));
                count++;
            }
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
        return count;
    }

    public static void main(String[] args) {
        try {
            String time3 = "1-2021";
            String time1 = "2021-01___";
            String province = "Nam Định";
            //
            int newMember, allMember, outMember;
            MemberDB memberDB = new MemberDB();
            newMember = memberDB.countMember(1, time1, province);
            allMember = memberDB.countMember(2, time1, province);
            outMember = memberDB.countMember(3, time3, province);
            System.out.println(newMember);
            System.out.println(allMember);
            System.out.println(outMember);
        } catch (Exception ex) {
            Logger.getLogger(MemberDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

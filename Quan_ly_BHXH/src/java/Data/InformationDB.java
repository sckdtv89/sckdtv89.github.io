
package Data;

import Model.Fee;
import Model.Information;
import Model.Member;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public class InformationDB {

    ConnectDB db = new ConnectDB();
    Connection connection = null;
    Statement stmt = null;
    ResultSet rs = null;
    //statust=1 phai dong bao hiem va da nop
    //statust=2 phai dong bao hiem va chua nop
    //statust=3 duoc huong tro cap va da nhan
    //statust=4 duoc huong tro cap va chua nhan
    public ArrayList<Information> getImformationList(String t, int status, String province) throws Exception {
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
        ArrayList< Information> list = new ArrayList<Information>();
        String strSQL = "SELECT * FROM BHXH.FEE_LIST, BHXH.MEMBER_LIST "
                + "WHERE BHXH.FEE_LIST.ID=BHXH.MEMBER_LIST.ID "
                + "AND BHXH.FEE_LIST.TIME=? "
                + "AND BHXH.MEMBER_LIST.HOMETOWN=? "
                + sql;
                
        connection = db.getConnection();
        PreparedStatement pst = connection.prepareStatement(strSQL);
        pst.setString(1, t);
        pst.setString(2, province);
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
                String id = rs.getString("FEE_LIST.ID");
                String fullName = rs.getString("MEMBER_LIST.FULLNAME");
                int birthYear = rs.getInt("MEMBER_LIST.BIRTHYEAR");
                String hometown = rs.getString("MEMBER_LIST.HOMETOWN");
                String time = rs.getString("FEE_LIST.TIME");
                long salary = rs.getLong("FEE_LIST.SALARY");
                long insuarance = rs.getLong("FEE_LIST.SALARY");
                int payment = rs.getInt("FEE_LIST.PAYMENT");
                long subsidy = rs.getLong("FEE_LIST.SUBSIDY");
                int receive = rs.getInt("FEE_LIST.RECEIVE");
                Member member = new Member(id, fullName, birthYear, hometown);
                Fee fee = new Fee(id, time, salary, insuarance, payment, subsidy, receive);
                Information imformation = new Information(member, fee);
                list.add(imformation);
            }

        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
        connection.close();
        return list;
    }

    //statust=1 phai dong bao hiem va da nop
    //statust=2 phai dong bao hiem va chua nop
    //statust=3 duoc huong tro cap va da nhan
    //statust=4 duoc huong tro cap va chua nhan
    public long CountFee(String t, int status, String province) throws Exception {
        long count = 0;
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
        ArrayList< Information> list = new ArrayList<Information>();
        String strSQL = "SELECT * FROM BHXH.FEE_LIST, BHXH.MEMBER_LIST "
                + "WHERE BHXH.FEE_LIST.ID=BHXH.MEMBER_LIST.ID "
                + "AND BHXH.FEE_LIST.TIME=? "
                + "AND BHXH.MEMBER_LIST.HOMETOWN=? "
                + sql;
                
        connection = db.getConnection();
        PreparedStatement pst = connection.prepareStatement(strSQL);
        pst.setString(1, t);
        pst.setString(2, province);
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
                if (status == 1 || status == 2) {
                    long insuarance = rs.getLong("FEE_LIST.SALARY");
                    count = count + insuarance;
                } else if (status == 1 || status == 2) {
                    long subsidy = rs.getLong("FEE_LIST.SUBSIDY");
                    count = count + subsidy;
                }
            }
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
        connection.close();
        return count;
    }

    public static void main(String[] args) {
        try {
            ArrayList<Information> list = new InformationDB().getImformationList("1-2021", 1, "Hà Nội");

            for (Information imformation : list) {
                System.out.println(imformation.getMember().getFullName());
                System.out.println(imformation.getMember().getId());
            }
        } catch (Exception ex) {
            Logger.getLogger(InformationDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

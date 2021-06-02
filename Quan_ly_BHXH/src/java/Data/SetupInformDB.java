package Data;

import Model.FundPercent;
import Model.SalaryLimit;
import Model.SalaryRegion;
import Model.SetupInform;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SetupInformDB {

    ConnectDB db = new ConnectDB();
    Connection connection = null;
    Statement stmt = null;
    ResultSet rs = null;

    public SalaryLimit getSalaryLimit() throws Exception {
        SalaryLimit salaryLimit = new SalaryLimit();
        String strSQL = "SELECT * FROM LIMIT_SALARY";
        double maxSalary = 0, minSalary = 0;
        try {
            connection = db.getConnection();
            PreparedStatement pst = connection.prepareStatement(strSQL);
            rs = pst.executeQuery();
            rs.next();
            maxSalary = Double.parseDouble(rs.getString("valueLimit"));
            rs.next();
            minSalary = Double.parseDouble(rs.getString("valueLimit"));
            System.out.println(maxSalary + " " + minSalary);
            if (maxSalary > minSalary) {
                salaryLimit = new SalaryLimit(maxSalary, minSalary);
            } else {
                salaryLimit = new SalaryLimit(minSalary, maxSalary);
            }
        } catch (Exception e) {
        }
        connection.close();
        return salaryLimit;
    }

    public long getSalaryRegion(int i) throws Exception {
        String strSQL = "SELECT * FROM SALARY_REGION "
                + "WHERE SALARY_REGION.IDREGION=?";
        long fund = 0;
         connection = db.getConnection();
        PreparedStatement pst = connection.prepareStatement(strSQL);
        pst.setInt(1, i);
        ResultSet rs = pst.executeQuery();
        if (rs.next()) {
            fund = rs.getLong("saraly");

        }
        return fund;
    }

    public double getFundPercent(int i) throws Exception {
        String strSQL = "SELECT * FROM FUND_PERCENT "
                + "WHERE FUND_PERCENT.IDFUND=?";
        double percent = 0;
        connection = db.getConnection();
        PreparedStatement pst = connection.prepareStatement(strSQL);
        pst.setInt(1, i);
        ResultSet rs = pst.executeQuery();
        if (rs.next()) {
            percent = rs.getDouble("PERCENT");

        }
        return percent;
    }

    public SetupInform getSetupImformation() throws Exception {
        SetupInform setupInform = new SetupInform();
        SalaryLimit SalaryLimit = new SetupInformDB().getSalaryLimit();
        double fund1 = new SetupInformDB().getFundPercent(1);
        double fund2 = new SetupInformDB().getFundPercent(2);
        double fund3 = new SetupInformDB().getFundPercent(3);
        double fund4 = new SetupInformDB().getFundPercent(4);
        double fund5 = new SetupInformDB().getFundPercent(5);
        FundPercent percent = new FundPercent(fund1, fund2, fund3, fund4, fund5);
        long region1 = new SetupInformDB().getSalaryRegion(1);
        long region2 = new SetupInformDB().getSalaryRegion(2);
        long region3 = new SetupInformDB().getSalaryRegion(3);
        long region4 = new SetupInformDB().getSalaryRegion(4);
        SalaryRegion salaryRegion = new SalaryRegion(region1, region2, region3, region4);
        setupInform = new SetupInform(percent, SalaryLimit, salaryRegion);
        return setupInform;
    }

    //sửa lại mức đóng quỹ
    public boolean setFundPercent(int i, double p) throws Exception {
        String strSQL = "UPDATE FUND_PERCENT "
                + "SET FUND_PERCENT.PERCENT=? "
                + "WHERE FUND_PERCENT.IDFUND=?";
         connection = db.getConnection();
        PreparedStatement pst = connection.prepareStatement(strSQL);
        pst.setDouble(1, p);
        pst.setInt(2, i);
        int count = pst.executeUpdate();
        if (count > 0) {
            return true;
        } else {
            return false;
        }
    }

    public boolean setSalaryRegion(int i, long p) throws Exception {
        String strSQL = "UPDATE salary_region "
                + "SET salary_region.saraly=? "
                + "WHERE salary_region.idRegion=?";
         connection = db.getConnection();
        PreparedStatement pst = connection.prepareStatement(strSQL);
        pst.setLong(1, p);
        pst.setInt(2, i);
        int count = pst.executeUpdate();
        if (count > 0) {
            return true;
        } else {
            return false;
        }
    }

    public boolean setSalaryLimit(String type, double v) throws Exception {
        String strSQL = "UPDATE limit_salary "
                + "SET limit_salary.valueLimit=? "
                + "WHERE limit_salary.type=?";
         connection = db.getConnection();
        PreparedStatement pst = connection.prepareStatement(strSQL);
        pst.setDouble(1, v);
        pst.setString(2, type);
        int count = pst.executeUpdate();
        if (count > 0) {
            return true;
        } else {
            return false;
        }
    }

    public static void main(String[] args) throws Exception {
        SetupInformDB setupInformDB = new SetupInformDB();
        SetupInform setupInform = setupInformDB.getSetupImformation();
        System.out.println(setupInform.getFundPercent().getFund1());
        System.out.println(setupInform.getSalaryLimit().getMaxSalary());
        System.out.println(setupInform.getSalaryRegion().getSalaryRegion1());
    }

}

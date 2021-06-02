/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;

import Model.FundPercent;
import Model.SalaryLimit;
import Model.SalaryRegion;
import Model.SetupInform;
import java.sql.Connection;
import java.sql.Statement;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.Before;
import org.junit.BeforeClass;

/**
 *
 * @author Admin
 */
public class SetupInformDBTest {

    public SetupInformDBTest() {
    }
    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
        RollBackDB rb = new RollBackDB();
        rb.RollBackFund();
    }
    
    @Test
    public void testGetSalaryLimit() throws Exception {
        System.out.println("getSalaryLimit");
        SetupInformDB instance = new SetupInformDB();
        SalaryLimit expResult = new SalaryLimit(22, 21);
        SalaryLimit result = instance.getSalaryLimit();
        assertEquals(expResult, result);
    }

    @Test
    public void testGetSalaryRegion() throws Exception {
        System.out.println("getSalaryRegionDungID");
        int i = 1;
        SetupInformDB instance = new SetupInformDB();
        long expResult = 300000;
        long result = instance.getSalaryRegion(i);
        assertEquals(expResult, result);
    }

    @Test
    public void testGetSalaryRegionSaiID() throws Exception {
        System.out.println("getSalaryRegionSaiID");
        int i = 10;
        SetupInformDB instance = new SetupInformDB();
        long expResult = 0L;
        long result = instance.getSalaryRegion(i);
        assertEquals(expResult, result);
    }

    @Test
    public void testGetFundPercent() throws Exception {
        System.out.println("getFundPercent");
        int i = 5;
        SetupInformDB instance = new SetupInformDB();
        double expResult = 5;
        double result = instance.getFundPercent(i);
        assertEquals(expResult, result, 0.0);
    }

    @Test
    public void testGetFundPercentSaiID() throws Exception {
        System.out.println("getFundPercentSaiID");
        int i = 6;
        SetupInformDB instance = new SetupInformDB();
        double expResult = 0;
        double result = instance.getFundPercent(i);
        assertEquals(expResult, result, 0.0);
    }

    @Test
    public void testGetSetupImformation() throws Exception {
        System.out.println("getSetupImformation");
        SetupInform expResult = null;
        SalaryLimit SalaryLimit = new SetupInformDB().getSalaryLimit();
        FundPercent percent = new FundPercent(2.4, 3, 0.5, 1, 4);
        SalaryRegion salaryRegion = new SalaryRegion(300000, 3710000, 3250000, 2920000);
        expResult = new SetupInform(percent, SalaryLimit, salaryRegion);
        SetupInformDB instance = new SetupInformDB();
        SetupInform result = instance.getSetupImformation();
        assertEquals(expResult, result);
    }

    @Test
    public void testSetFundPercent() throws Exception {
        System.out.println("setFundPercent");
        
        int i = 1;
        double p = 2.5;
        SetupInformDB instance = new SetupInformDB();
        boolean expResult = true;
        boolean result = instance.setFundPercent(i, p);
        assertEquals(expResult, result);
    }

    @Test
    public void testSetFundPercentFail() throws Exception {
        System.out.println("setFundPercentFail");
        int i = 6;
        double p = 2.5;
        SetupInformDB instance = new SetupInformDB();
        boolean expResult = false;
        boolean result = instance.setFundPercent(i, p);
        assertEquals(expResult, result);
    }
    
    @Test
    public void testSetSalaryRegion() throws Exception {
        System.out.println("setSalaryRegion");
        int i = 1;
        long p = 300000;
        SetupInformDB instance = new SetupInformDB();
        boolean expResult = true;
        boolean result = instance.setSalaryRegion(i, p);
        assertEquals(expResult, result);
    }
    @Test
    public void testSetSalaryRegionSaiID() throws Exception {
        System.out.println("setSalaryRegionSaiID");
        int i = 5;
        long p = 300000;
        SetupInformDB instance = new SetupInformDB();
        boolean expResult = false;
        boolean result = instance.setSalaryRegion(i, p);
        assertEquals(expResult, result);
    }
    

    @Test
    public void testSetSalaryLimit() throws Exception {
        System.out.println("setSalaryLimit");
        String type = "max";
        double v = 22.0;
        SetupInformDB instance = new SetupInformDB();
        boolean expResult = true;
        boolean result = instance.setSalaryLimit(type, v);
        assertEquals(expResult, result);
    }

    @Test
    public void testSetSalaryLimitSaiMax() throws Exception {
        System.out.println("setSalaryLimitSaiMax");
        String type = "max";
        double v = 19.0;
        SetupInformDB instance = new SetupInformDB();
        boolean expResult = true;
        boolean result = instance.setSalaryLimit(type, v);
        assertEquals(expResult, result);
    }
    
     @Test
    public void testSetSalaryLimitSaiMin() throws Exception {
        System.out.println("setSalaryLimitSaiMin");
        String type = "min";
        double v = 21.0;
        SetupInformDB instance = new SetupInformDB();
        boolean expResult = true;
        boolean result = instance.setSalaryLimit(type, v);
        assertEquals(expResult, result);
    }
    
    @Test
    public void testMain() throws Exception {
        System.out.println("main");
        String[] args = null;
        SetupInformDB.main(args);
    }

}

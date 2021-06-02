/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;

import Model.Information;
import java.util.ArrayList;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Admin
 */
public class InformationDBTest {
    
    public InformationDBTest() {
    }

    @Test
    public void testGetImformationList() throws Exception {
        System.out.println("getImformationList");
        String t = "1-2021";
        int status = 1;
        String province = "Nam Định";
        InformationDB instance = new InformationDB();
        int expResult = 7;
        ArrayList<Information> result = instance.getImformationList(t, status, province);
        assertEquals(expResult, result.size());
    }
    
    @Test
    public void testGetImformationList2() throws Exception {
        System.out.println("getImformationList2");
        String t = "1-2021";
        int status = 1;
        String province = "Bình Định";
        InformationDB instance = new InformationDB();
        int expResult = 0;
        ArrayList<Information> result = instance.getImformationList(t, status, province);
        assertEquals(expResult, result.size());
    }

    @Test
    public void testCountFee() throws Exception {
        System.out.println("CountFee");
        String t = "1-2021";
        int status = 0;
        String province = "Nam Định";
        InformationDB instance = new InformationDB();
        int expResult = 0;
        long result = instance.CountFee(t, status, province);
        assertEquals(expResult, result);
    }

    @Test
    public void testCountFee2() throws Exception {
        System.out.println("CountFee2");
        String t = "5-2021";
        int status = 1;
        String province = "Nam Định";
        InformationDB instance = new InformationDB();
        int expResult = 43000000;
        long result = instance.CountFee(t, status, province);
        assertEquals(expResult, result);
    }
    @Test
    public void testMain() {
        System.out.println("main");
        String[] args = null;
        InformationDB.main(args);
    }
    
}

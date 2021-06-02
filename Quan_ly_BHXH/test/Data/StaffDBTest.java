/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;

import Model.Staff;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Admin
 */
public class StaffDBTest {

    public StaffDBTest() {
    }

    @Test
    public void testGetStaff() throws Exception {
        System.out.println("getStaff");
        String userName = "leducanh";
        String passWord = "12345678";
        StaffDB instance = new StaffDB();
        Staff expResult = new Staff("leducanh","Kế toán","Lê Đức Anh",1999,"Thanh Hóa");
        Staff result = instance.getStaff(userName, passWord);
        assertEquals(expResult, result);
    }

    @Test
    public void testMain() {
        System.out.println("main");
        String[] args = null;
        StaffDB.main(args);
    }
}

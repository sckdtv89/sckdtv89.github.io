/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;

import Model.Fee;
import java.util.ArrayList;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Admin
 */
public class FeeDBTest {
    
    public FeeDBTest() {
    }

    @Test
    public void testGetMemberList() throws Exception {
        System.out.println("getMemberList");
        FeeDB instance = new FeeDB();
        ArrayList<Fee> expResult = null;
        ArrayList<Fee> result = instance.getMemberList();
        assertEquals(expResult, result);
    }

    @Test
    public void testMain() {
        System.out.println("main");
        String[] args = null;
        FeeDB.main(args);
    }
    
}

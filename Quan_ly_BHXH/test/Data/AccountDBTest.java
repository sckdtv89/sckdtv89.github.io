/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;

import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Admin
 */
public class AccountDBTest {
    
    public AccountDBTest() {
    }

    @Test
    public void testLogin() throws Exception {
        System.out.println("Login");
        String userName = "leducanh";
        String passWord = "12345678";
        AccountDB instance = new AccountDB();
        boolean expResult = true;
        boolean result = instance.Login(userName, passWord);
        assertEquals(expResult, result);
    }
    
    @Test
    public void testLoginNoUsename() throws Exception {
        System.out.println("LoginNoUsename");
        String userName = "";
        String passWord = "12345678";
        AccountDB instance = new AccountDB();
        boolean expResult = false;
        boolean result = instance.Login(userName, passWord);
        assertEquals(expResult, result);
    }
    
    @Test
    public void testLoginNoPassword() throws Exception {
        System.out.println("LoginNoPassword");
        String userName = "leducanh";
        String passWord = "";
        AccountDB instance = new AccountDB();
        boolean expResult = false;
        boolean result = instance.Login(userName, passWord);
        assertEquals(expResult, result);
    }
    
    @Test
    public void testLoginUsenameFail() throws Exception {
        System.out.println("LoginUsenameFail");
        String userName = "leducanh1";
        String passWord = "12345678";
        AccountDB instance = new AccountDB();
        boolean expResult = false;
        boolean result = instance.Login(userName, passWord);
        assertEquals(expResult, result);
    }

    @Test
    public void testLoginPasswordFail() throws Exception {
        System.out.println("LoginPasswordFail");
        String userName = "leducanh";
        String passWord = "123456789";
        AccountDB instance = new AccountDB();
        boolean expResult = false;
        boolean result = instance.Login(userName, passWord);
        assertEquals(expResult, result);
    }
    @Test
    public void testMain() throws Exception {
        System.out.println("main");
        String[] args = null;
        AccountDB.main(args);
    }
    
}

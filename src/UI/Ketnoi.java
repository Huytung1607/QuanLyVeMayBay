/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package UI;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Ketnoi {
     public static Connection KNCSDLieu() throws SQLException
        {
            Connection c =DriverManager.getConnection("jdbc:mysql://localhost:3306/ql_vemaybay","root","");
            return c;
        }
     public static void main(String[] args) throws SQLException{
        Connection kn = Ketnoi.KNCSDLieu();
        if(kn == null)
            System.out.println("Ket noi that bai");
        else
            System.out.println("Ket noi thanh cong");
    }

    static PreparedStatement prepareStatement(String sql) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}

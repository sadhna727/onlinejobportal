/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.onlinejobportal;

/**
 *
 * @author rajus
 */
import java.sql.*;

public class DatabaseConnection {

    public Statement stmt;
    public Statement stmt2;

    public DatabaseConnection() {

        try {
            Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/OnlineJobPortal", "root", "12345");
            stmt = con.createStatement();
            stmt2 = con.createStatement();

        } catch (Exception ex) {

        }
    }

    public boolean executeIUD(String cmd) {
        int row = 0;
        try {
            row = stmt.executeUpdate(cmd);
        } catch (Exception ex) {
            row = 0;
        }
        return row > 0;
    }

    public ResultSet executeSelect(String cmd) {
        ResultSet rs = null;

        try {
            rs = stmt.executeQuery(cmd);
        } catch (Exception ex) {
            rs = null;
        }
        return rs;
    }
    
    public ResultSet executeSelect2(String cmd) {
        ResultSet rs = null;

        try {
            rs = stmt2.executeQuery(cmd);
        } catch (Exception ex) {
            rs = null;
        }
        return rs;
    }
}
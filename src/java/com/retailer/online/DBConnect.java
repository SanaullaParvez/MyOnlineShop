/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.retailer.online;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import org.apache.derby.client.am.Connection;

/**
 *
 * @author Abdulla
 */
public class DBConnect {

    private Connection connection;
    private Statement statement = null;
    private ResultSet resultSet;

    public DBConnect() {
    }

    public void connectToDB() throws SQLException {
        try {
            connection = (Connection) DriverManager.getConnection("jdbc:derby://localhost:1527/OnlineShopDB");

        } catch (SQLException se) {
            System.out.println(se.getMessage());
        }
    }

    public void disconnectFromDB() {
        try {
            if (statement != null) {
                statement.close();
            }
            if (connection != null) {
                connection.close();
            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Unable to close connection");
        }
    }

    public boolean insertDataToDB(String query) {
        try {
            statement = connection.createStatement();
            statement.executeUpdate(query);
            return true;
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Unable to Insert Data");
            Logger.getLogger(DBConnect.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public ResultSet getDataFromDB(String query) {
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(query);
            return resultSet;
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Unable to Get Data" + ex.getMessage());
        }
        return null;
    }

    public static void main(String[] args) throws SQLException {
        DBConnect bConnect = new DBConnect();
        ResultSet resultSet1 = null;
        ResultSet resultSet2 = null;
        ResultSet resultSet3 = null;
        try {
            bConnect.connectToDB();
            resultSet3 = bConnect.getDataFromDB("SELECT COALESCE(PPRICE,0) AS PPRICE FROM ITEM");
            while (resultSet3.next()) {                          
                System.out.println(resultSet3.getString("PPRICE"));                 
                
            }
//            resultSet1 = bConnect.getDataFromDB("SELECT distinct id FROM item");
//            while (resultSet1.next()) {
//                System.out.println(resultSet1.getString("id"));                
//                resultSet2 = bConnect.getDataFromDB("SELECT groupname FROM item where id = "+resultSet1.getString(1)+"");
//                 while (resultSet2.next()) {
//                     System.out.println(resultSet2.getString("groupname"));
//                 }                
//            }

        } finally {
            if (resultSet1 != null) {
                resultSet1.close();
            }
            if (resultSet2 != null) {
                resultSet2.close();
            }
            if (resultSet3 != null) {
                resultSet3.close();
            }
            bConnect.disconnectFromDB();
        }
    }
}

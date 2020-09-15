package newpackage;

import com.mysql.cj.Query;
import com.mysql.cj.protocol.Resultset;
import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import javax.servlet.http.Part;

public class CustomerDatabase {
    Connection con ;

    public CustomerDatabase(Connection con) {
        this.con = con;
    }
    
    //for register user 
    public boolean saveCus(Customer customer){
        boolean set = false;
        try{
            //Insert register data to database
            String query = "insert into Customer(cName,mName,sPrice,cQuantity,cBranch) values(?,?,?,?,?)";
           
           PreparedStatement pt = this.con.prepareStatement(query);
           pt.setString(1, customer.getCName());
           pt.setString(2, customer.getMName());
           pt.setString(3, customer.getSellingPrice());
           pt.setString(4, customer.getQuantity());
           pt.setString(5, customer.getBranch());
           
           pt.executeUpdate();
           set = true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
    
    public  Hashtable<Integer,String> getCustomerCount(){
       Customer customer = null;
       Hashtable<Integer, String> noc = new Hashtable<>();
        try{
            String query = "select * from customer";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs =pst.executeQuery();
   
            while(rs.next()){
                 customer = new Customer();
                 customer.setCId(rs.getInt("cId"));
                 customer.setCName(rs.getString("cName"));
                 //medicine.setSName(rs.getString("sName"));
                // medicine.setPurchasePrice(rs.getString("purchasePrice"));
                // medicine.setQuantity(rs.getString("quantity"));
                 
                 int id = customer.getCId();
                 String s1 = customer.getCName();
                 //String s2 = medicine.getSName();
                // String s3 = medicine.getPurchasePrice();
                // String s4 = medicine.getQuantity();
                 
                 
                 
                noc.put(id,s1);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
       return noc;
    }
    
    public  Hashtable<Integer,String> getCustomerCountB1(){
       Customer customer = null;
       Hashtable<Integer, String> noc = new Hashtable<>();
        try{
            String query = "select * from customer where cBranch = 1";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs =pst.executeQuery();
   
            while(rs.next()){
                 customer = new Customer();
                 customer.setCId(rs.getInt("cId"));
                 customer.setCName(rs.getString("cName"));
                 //medicine.setSName(rs.getString("sName"));
                // medicine.setPurchasePrice(rs.getString("purchasePrice"));
                // medicine.setQuantity(rs.getString("quantity"));
                 
                 int id = customer.getCId();
                 String s1 = customer.getCName();
                 //String s2 = medicine.getSName();
                // String s3 = medicine.getPurchasePrice();
                // String s4 = medicine.getQuantity();
                 
                 
                 
                noc.put(id,s1);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
       return noc;
    }
    
    
    public  Hashtable<Integer,String> getCustomerCountB2(){
       Customer customer = null;
       Hashtable<Integer, String> noc = new Hashtable<>();
        try{
            String query = "select * from customer where cBranch = 2";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs =pst.executeQuery();
   
            while(rs.next()){
                 customer = new Customer();
                 customer.setCId(rs.getInt("cId"));
                 customer.setCName(rs.getString("cName"));
                 //medicine.setSName(rs.getString("sName"));
                // medicine.setPurchasePrice(rs.getString("purchasePrice"));
                // medicine.setQuantity(rs.getString("quantity"));
                 
                 int id = customer.getCId();
                 String s1 = customer.getCName();
                 //String s2 = medicine.getSName();
                // String s3 = medicine.getPurchasePrice();
                // String s4 = medicine.getQuantity();
                 
                 
                 
                noc.put(id,s1);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
       return noc;
    }
    
    
    public  Hashtable<Integer,String> getCustomerCountB3(){
       Customer customer = null;
       Hashtable<Integer, String> noc = new Hashtable<>();
        try{
            String query = "select * from customer where cBranch = 3";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs =pst.executeQuery();
   
            while(rs.next()){
                 customer = new Customer();
                 customer.setCId(rs.getInt("cId"));
                 customer.setCName(rs.getString("cName"));
                 //medicine.setSName(rs.getString("sName"));
                // medicine.setPurchasePrice(rs.getString("purchasePrice"));
                // medicine.setQuantity(rs.getString("quantity"));
                 
                 int id = customer.getCId();
                 String s1 = customer.getCName();
                 //String s2 = medicine.getSName();
                // String s3 = medicine.getPurchasePrice();
                // String s4 = medicine.getQuantity();
                 
                 
                 
                noc.put(id,s1);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
       return noc;
    }
    
    
    
    public  List<Customer> getCustomerTable(){
       Customer customer = null;
       List<Customer> cdetails = new ArrayList();
        try{
            String query = "select * from customer";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs =pst.executeQuery();
   
            while(rs.next()){
                 customer = new Customer();
                 customer.setCId(rs.getInt("cId"));
                 customer.setCName(rs.getString("cName"));
                 customer.setMName(rs.getString("mName"));
                 customer.setSellingPrice(rs.getString("sPrice"));
                 customer.setQuantity(rs.getString("cQuantity"));
                 customer.setBranch(rs.getString("cBranch"));
                 
                 //int id = medicine.getMId();
                 //String s1 = medicine.getMName();
                 //String s2 = medicine.getSName();
                 //String s3 = medicine.getPurchasePrice();
                 //String s4 = medicine.getQuantity();
                 
                 
                 
                cdetails.add(customer);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
       return cdetails;
    }
    
    public  List<Customer> getCustomerTable1(){
       Customer customer = null;
       List<Customer> cdetails = new ArrayList();
        try{
            String query = "select * from customer where cBranch = 1";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs =pst.executeQuery();
   
            while(rs.next()){
                 customer = new Customer();
                 customer.setCId(rs.getInt("cId"));
                 customer.setCName(rs.getString("cName"));
                 customer.setMName(rs.getString("mName"));
                 customer.setSellingPrice(rs.getString("sPrice"));
                 customer.setQuantity(rs.getString("cQuantity"));
                 
                 //int id = medicine.getMId();
                 //String s1 = medicine.getMName();
                 //String s2 = medicine.getSName();
                 //String s3 = medicine.getPurchasePrice();
                 //String s4 = medicine.getQuantity();
                 
                 
                 
                cdetails.add(customer);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
       return cdetails;
    }
    
    public  List<Customer> getCustomerTable2(){
       Customer customer = null;
       List<Customer> cdetails = new ArrayList();
        try{
            String query = "select * from customer where cBranch = 2";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs =pst.executeQuery();
   
            while(rs.next()){
                 customer = new Customer();
                 customer.setCId(rs.getInt("cId"));
                 customer.setCName(rs.getString("cName"));
                 customer.setMName(rs.getString("mName"));
                 customer.setSellingPrice(rs.getString("sPrice"));
                 customer.setQuantity(rs.getString("cQuantity"));
                 
                 //int id = medicine.getMId();
                 //String s1 = medicine.getMName();
                 //String s2 = medicine.getSName();
                 //String s3 = medicine.getPurchasePrice();
                 //String s4 = medicine.getQuantity();
                 
                 
                 
                cdetails.add(customer);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
       return cdetails;
    }
    
    public  List<Customer> getCustomerTable3(){
       Customer customer = null;
       List<Customer> cdetails = new ArrayList();
        try{
            String query = "select * from customer where cBranch = 3";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs =pst.executeQuery();
   
            while(rs.next()){
                 customer = new Customer();
                 customer.setCId(rs.getInt("cId"));
                 customer.setCName(rs.getString("cName"));
                 customer.setMName(rs.getString("mName"));
                 customer.setSellingPrice(rs.getString("sPrice"));
                 customer.setQuantity(rs.getString("cQuantity"));
                 
                 //int id = medicine.getMId();
                 //String s1 = medicine.getMName();
                 //String s2 = medicine.getSName();
                 //String s3 = medicine.getPurchasePrice();
                 //String s4 = medicine.getQuantity();
                 
                 
                 
                cdetails.add(customer);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
       return cdetails;
    }
    
    
}
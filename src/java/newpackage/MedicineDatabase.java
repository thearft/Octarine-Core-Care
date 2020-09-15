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

public class MedicineDatabase {
    Connection con ;

    public MedicineDatabase(Connection con) {
        this.con = con;
    }
    
    //for register user 
    public boolean saveMed(Medicine medicine){
        boolean set = false;
        try{
            //Insert register data to database
            String query = "insert into medicine(mName,sName,purchasePrice,quantity,branch) values(?,?,?,?,?)";
           
           PreparedStatement pt = this.con.prepareStatement(query);
           pt.setString(1, medicine.getMName());
           pt.setString(2, medicine.getSName());
           pt.setString(3, medicine.getPurchasePrice());
           pt.setString(4, medicine.getQuantity());
           pt.setString(5, medicine.getBranch());
           
           pt.executeUpdate();
           set = true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
    public  Hashtable<Integer,String> getMedicineCount(){
       Medicine medicine = null;
       Hashtable<Integer, String> nom = new Hashtable<>();
        try{
            String query = "select * from medicine";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs =pst.executeQuery();
   
            while(rs.next()){
                 medicine = new Medicine();
                 medicine.setMId(rs.getInt("mId"));
                 medicine.setMName(rs.getString("mName"));
                 //medicine.setSName(rs.getString("sName"));
                // medicine.setPurchasePrice(rs.getString("purchasePrice"));
                // medicine.setQuantity(rs.getString("quantity"));
                 
                 int id = medicine.getMId();
                 String s1 = medicine.getMName();
                 //String s2 = medicine.getSName();
                // String s3 = medicine.getPurchasePrice();
                // String s4 = medicine.getQuantity();
                 
                 
                 
                nom.put(id,s1);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
       return nom;
    }

    public  List<Medicine> getMedicineTable(){
       Medicine medicine = null;
       List<Medicine> mdetails = new ArrayList();
        try{
            String query = "select * from medicine";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs =pst.executeQuery();
   
            while(rs.next()){
                 medicine = new Medicine();
                 medicine.setMId(rs.getInt("mId"));
                 medicine.setMName(rs.getString("mName"));
                 medicine.setSName(rs.getString("sName"));
                 medicine.setPurchasePrice(rs.getString("purchasePrice"));
                 medicine.setQuantity(rs.getString("quantity"));
                 medicine.setBranch(rs.getString("branch"));
                 
                 //int id = medicine.getMId();
                 //String s1 = medicine.getMName();
                 //String s2 = medicine.getSName();
                 //String s3 = medicine.getPurchasePrice();
                 //String s4 = medicine.getQuantity();
                 
                 
                 
                mdetails.add(medicine);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
       return mdetails;
    }
    
    
    public  List<Medicine> getMedicineTable1(){
       Medicine medicine = null;
       List<Medicine> mdetails = new ArrayList();
        try{
            String query = "select * from medicine where branch = 1";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs =pst.executeQuery();
   
            while(rs.next()){
                 medicine = new Medicine();
                 medicine.setMId(rs.getInt("mId"));
                 medicine.setMName(rs.getString("mName"));
                 medicine.setSName(rs.getString("sName"));
                 medicine.setPurchasePrice(rs.getString("purchasePrice"));
                 medicine.setQuantity(rs.getString("quantity"));
                 
                 //int id = medicine.getMId();
                 //String s1 = medicine.getMName();
                 //String s2 = medicine.getSName();
                 //String s3 = medicine.getPurchasePrice();
                 //String s4 = medicine.getQuantity();
                 
                 
                 
                mdetails.add(medicine);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
       return mdetails;
    }
    
    public  List<Medicine> getMedicineTable2(){
       Medicine medicine = null;
       List<Medicine> mdetails = new ArrayList();
        try{
            String query = "select * from medicine where branch = 2";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs =pst.executeQuery();
   
            while(rs.next()){
                 medicine = new Medicine();
                 medicine.setMId(rs.getInt("mId"));
                 medicine.setMName(rs.getString("mName"));
                 medicine.setSName(rs.getString("sName"));
                 medicine.setPurchasePrice(rs.getString("purchasePrice"));
                 medicine.setQuantity(rs.getString("quantity"));
                 
                 //int id = medicine.getMId();
                 //String s1 = medicine.getMName();
                 //String s2 = medicine.getSName();
                 //String s3 = medicine.getPurchasePrice();
                 //String s4 = medicine.getQuantity();
                 
                 
                 
                mdetails.add(medicine);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
       return mdetails;
    }
    
    public  List<Medicine> getMedicineTable3(){
       Medicine medicine = null;
       List<Medicine> mdetails = new ArrayList();
        try{
            String query = "select * from medicine where branch = 3";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs =pst.executeQuery();
   
            while(rs.next()){
                 medicine = new Medicine();
                 medicine.setMId(rs.getInt("mId"));
                 medicine.setMName(rs.getString("mName"));
                 medicine.setSName(rs.getString("sName"));
                 medicine.setPurchasePrice(rs.getString("purchasePrice"));
                 medicine.setQuantity(rs.getString("quantity"));
                 
                 //int id = medicine.getMId();
                 //String s1 = medicine.getMName();
                 //String s2 = medicine.getSName();
                 //String s3 = medicine.getPurchasePrice();
                 //String s4 = medicine.getQuantity();
                 
                 
                 
                mdetails.add(medicine);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
       return mdetails;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    public  Hashtable<Integer,String> getMedicineCountB1(){
       Medicine medicine = null;
       Hashtable<Integer, String> nom = new Hashtable<>();
        try{
            String query = "select * from medicine where branch = 1";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs =pst.executeQuery();
   
            while(rs.next()){
                 medicine = new Medicine();
                 medicine.setMId(rs.getInt("mId"));
                 medicine.setMName(rs.getString("mName"));
                 //medicine.setSName(rs.getString("sName"));
                // medicine.setPurchasePrice(rs.getString("purchasePrice"));
                // medicine.setQuantity(rs.getString("quantity"));
                 
                 int id = medicine.getMId();
                 String s1 = medicine.getMName();
                 //String s2 = medicine.getSName();
                // String s3 = medicine.getPurchasePrice();
                // String s4 = medicine.getQuantity();
                 
                 
                 
                nom.put(id,s1);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
       return nom;
    }
    
    public  Hashtable<Integer,String> getMedicineCountB2(){
       Medicine medicine = null;
       Hashtable<Integer, String> nom = new Hashtable<>();
        try{
            String query = "select * from medicine where branch = 2";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs =pst.executeQuery();
   
            while(rs.next()){
                 medicine = new Medicine();
                 medicine.setMId(rs.getInt("mId"));
                 medicine.setMName(rs.getString("mName"));
                 //medicine.setSName(rs.getString("sName"));
                // medicine.setPurchasePrice(rs.getString("purchasePrice"));
                // medicine.setQuantity(rs.getString("quantity"));
                 
                 int id = medicine.getMId();
                 String s1 = medicine.getMName();
                 //String s2 = medicine.getSName();
                // String s3 = medicine.getPurchasePrice();
                // String s4 = medicine.getQuantity();
                 
                 
                 
                nom.put(id,s1);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
       return nom;
    }
    
    public  Hashtable<Integer,String> getMedicineCountB3(){
       Medicine medicine = null;
       Hashtable<Integer, String> nom = new Hashtable<>();
        try{
            String query = "select * from medicine where branch = 3";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs =pst.executeQuery();
   
            while(rs.next()){
                 medicine = new Medicine();
                 medicine.setMId(rs.getInt("mId"));
                 medicine.setMName(rs.getString("mName"));
                 //medicine.setSName(rs.getString("sName"));
                // medicine.setPurchasePrice(rs.getString("purchasePrice"));
                // medicine.setQuantity(rs.getString("quantity"));
                 
                 int id = medicine.getMId();
                 String s1 = medicine.getMName();
                 //String s2 = medicine.getSName();
                // String s3 = medicine.getPurchasePrice();
                // String s4 = medicine.getQuantity();
                 
                 
                 
                nom.put(id,s1);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
       return nom;
    }
    
}


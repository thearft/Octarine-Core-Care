package newpackage;


public class Customer {
    int cId;
    String cName;
    String mName;
    String sellingPrice;
    String quantity;
    String branch;

    public Customer() {
    }

    public Customer(int cId, String cName, String mName, String sellingPrice, String quantity, String branch) {
        this.cId = cId;
        this.cName = cName;
        this.mName = mName;
        this.sellingPrice = sellingPrice;
        this.quantity = quantity;
        this.branch = branch;
    }

    public Customer(String cName, String mName, String sellingPrice, String quantity, String branch) {
        this.cName = cName;
        this.mName = mName;
        this.sellingPrice = sellingPrice;
        this.quantity = quantity;
        this.branch = branch;
    }


    public int getCId() {
        return cId;
    }

    public void setCId(int cId) {
        this.cId = cId;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }
    
    public String getMName() {
        return mName;
    }

    public void setMName(String mName) {
        this.mName = mName;
    }

    public String getCName() {
        return cName;
    }

    public void setCName(String cName) {
        this.cName = cName;
    }

    public String getSellingPrice() {
        return sellingPrice;
    }

    public void setSellingPrice(String sellingPrice) {
        this.sellingPrice = sellingPrice;
    }
    
    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }
    
    
    
    
}


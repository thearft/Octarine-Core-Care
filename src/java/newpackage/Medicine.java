package newpackage;


public class Medicine {
    int mId;
    String mName;
    String sName;
    String purchasePrice;
    String quantity;
    String branch;

    public Medicine() {
    }

    public Medicine(int mId, String mName, String sName, String purchasePrice, String quantity, String branch) {
        this.mId = mId;
        this.mName = mName;
        this.sName = sName;
        this.purchasePrice = purchasePrice;
        this.quantity = quantity;
        this.branch = branch;
    }

    public Medicine(String mName, String sName, String purchasePrice, String quantity, String branch) {
        this.mName = mName;
        this.sName = sName;
        this.purchasePrice = purchasePrice;
        this.quantity = quantity;
        this.branch = branch;
    }

    public Medicine(String sName, String purchasePrice) {
        this.sName = sName;
        this.purchasePrice = purchasePrice;
    }

    public int getMId() {
        return mId;
    }

    public void setMId(int mId) {
        this.mId = mId;
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

    public String getSName() {
        return sName;
    }

    public void setSName(String sName) {
        this.sName = sName;
    }

    public String getPurchasePrice() {
        return purchasePrice;
    }

    public void setPurchasePrice(String purchasePrice) {
        this.purchasePrice = purchasePrice;
    }
    
    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }
    
    
    
    
}


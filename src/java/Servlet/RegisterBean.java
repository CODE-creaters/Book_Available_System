/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

/**
 *
 * @author DIL-SOFT 02
 */
class RegisterBean {
    private int bkid;
    private String Bkname;
    private String Bkauthor;
    private String Bkcater;
    private String Bkavailable;

    /**
     * @return the bkid
     */
    public int getBkid() {
        return bkid;
    }

    /**
     * @param bkid the bkid to set
     */
    public void setBkid(int bkid) {
        this.bkid = bkid;
    }

    /**
     * @return the Bkname
     */
    public String getBkname() {
        return Bkname;
    }

    /**
     * @param Bkname the Bkname to set
     */
    public void setBkname(String Bkname) {
        this.Bkname = Bkname;
    }

    /**
     * @return the Bkauthor
     */
    public String getBkauthor() {
        return Bkauthor;
    }

    /**
     * @param Bkauthor the Bkauthor to set
     */
    public void setBkauthor(String Bkauthor) {
        this.Bkauthor = Bkauthor;
    }

    /**
     * @return the Bkcater
     */
    public String getBkcater() {
        return Bkcater;
    }

    /**
     * @param Bkcater the Bkcater to set
     */
    public void setBkcater(String Bkcater) {
        this.Bkcater = Bkcater;
    }

    /**
     * @return the Bkavailable
     */
    public String getBkavailable() {
        return Bkavailable;
    }

    /**
     * @param Bkavailable the Bkavailable to set
     */
    public void setBkavailable(String Bkavailable) {
        this.Bkavailable = Bkavailable;
    }
    
}

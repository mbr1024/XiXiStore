package cn.xixi.commons.beans;

import java.util.Date;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/18
 */
public class Product {
    private String pid;
    private String pname;
    private String pimage;
    private double price;
    private Integer succ_count;
    private String pdesc;
    private Integer is_hot;
    private Integer pnumber;
    private Date pdate;
    private Category category;
    private Integer pflag;

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPimage() {
        return pimage;
    }

    public void setPimage(String pimage) {
        this.pimage = pimage;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Integer getSucc_count() {
        return succ_count;
    }

    public void setSucc_count(Integer succ_count) {
        this.succ_count = succ_count;
    }

    public String getPdesc() {
        return pdesc;
    }

    public void setPdesc(String pdesc) {
        this.pdesc = pdesc;
    }

    public Integer getIs_hot() {
        return is_hot;
    }

    public void setIs_hot(Integer is_hot) {
        this.is_hot = is_hot;
    }

    public Integer getPnumber() {
        return pnumber;
    }

    public void setPnumber(Integer pnumber) {
        this.pnumber = pnumber;
    }

    public Date getPdate() {
        return pdate;
    }

    public void setPdate(Date pdate) {
        this.pdate = pdate;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Integer getPflag() {
        return pflag;
    }

    public void setPflag(Integer pflag) {
        this.pflag = pflag;
    }
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((pid == null) ? 0 : pid.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        //两个对象是同一个对象，返回true
        if (this == obj)
            return true;
        //如果equals后的对象为null，返回false
        if (obj == null)
            return false;
        //如果两个对象的类型不一致，返回false
        if (getClass() != obj.getClass())
            return false;
        //把obj强转成Product
        Product other = (Product) obj;
        //如果equals前的对象的id为null，但obj的id不为null，返回false
        if (pid == null) {
            if (other.pid != null)
                return false;
        } else if (!pid.equals(other.pid))//如果两个对象的id不相同，返回false
            return false;
        //如果两个对象的id相同，返回true
        return true;
    }
    @Override
    public String toString() {
        return "Product{" +
                "pid='" + pid + '\'' +
                ", pname='" + pname + '\'' +
                ", pimage='" + pimage + '\'' +
                ", price=" + price +
                ", succ_count=" + succ_count +
                ", pdesc='" + pdesc + '\'' +
                ", is_hot=" + is_hot +
                ", pnumber=" + pnumber +
                ", pdate=" + pdate +
                ", category=" + category +
                ", pflag=" + pflag +
                '}';
    }
}

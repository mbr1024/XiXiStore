package cn.xixi.commons.beans;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/23
 */
public class Condition {
    private Integer sales;
    private Integer click;
    private Integer price;
    private Integer max;
    private Integer min;


    @Override
    public String toString() {
        return "Condition{" +
                "sales='" + sales + '\'' +
                ", click='" + click + '\'' +
                ", price='" + price + '\'' +
                ", max=" + max +
                ", min=" + min +
                '}';
    }

    public Integer getSales() {
        return sales;
    }

    public void setSales(Integer sales) {
        this.sales = sales;
    }

    public Integer getClick() {
        return click;
    }

    public void setClick(Integer click) {
        this.click = click;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getMax() {
        return max;
    }

    public void setMax(Integer max) {
        this.max = max;
    }

    public Integer getMin() {
        return min;
    }

    public void setMin(Integer min) {
        this.min = min;
    }
}

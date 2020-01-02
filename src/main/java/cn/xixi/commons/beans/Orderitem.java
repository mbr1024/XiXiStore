package cn.xixi.commons.beans;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/20
 */
public class Orderitem {
    private String item_id;
    private  int count;
    private Double subtotal;
    private Product product;
    private  String order_id;

    public String getItem_id() {
        return item_id;
    }

    public void setItem_id(String item_id) {
        this.item_id = item_id;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public Double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(Double subtotal) {
        this.subtotal = subtotal;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    @Override
    public String toString() {
        return "Orderitem{" +
                "item_id='" + item_id + '\'' +
                ", count=" + count +
                ", subtotal=" + subtotal +
                ", product=" + product +
                ", order_id='" + order_id + '\'' +
                '}';
    }
}

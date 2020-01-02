package cn.xixi.commons.beans;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/22
 */
public class Assess {
    private String aid;
    private String content;
    private Product product;
    private User user;

    public String getAid() {
        return aid;
    }

    public void setAid(String aid) {
        this.aid = aid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Assess{" +
                "aid='" + aid + '\'' +
                ", content='" + content + '\'' +
                ", product=" + product +
                ", user=" + user +
                '}';
    }
}

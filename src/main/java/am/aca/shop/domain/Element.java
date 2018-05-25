package am.aca.shop.domain;

public class Element {

    private String name;
    private double price;
    private String description;
    private String images_url;

    public Element() {
    }

    public Element(String name, int price, String description, String images_url) {
        this.name = name;
        this.price = price;
        this.description = description;
        this.images_url = images_url;
    }

    public Element(Product product) {
        this.setName(product.getName());
        this.setDescription(product.getDescription());
        this.setPrice(product.getPrice());
        this.setImages_url(product.getImages().get(0).getUrl());
    }

    public String getImages_url() {
        return images_url;
    }

    public void setImages_url(String images_url) {
        this.images_url = images_url;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
package am.aca.shop.service;

import am.aca.shop.domain.Element;
import am.aca.shop.domain.Product;
import am.aca.shop.domain.ProductCategory;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {

    private SessionFactory sessionFactory = new Configuration()
            .configure()
            .buildSessionFactory();

    public List<Element> getProducts() {
        Session session = sessionFactory.openSession();
        List<Product> productList = session.createQuery("FROM Product")
                .list();
        List<Element> elementList = new ArrayList<>();
        Element element;
        for (Product p : productList) {
            element = new Element(p);
            elementList.add(element);
        }
        session.close();
        return elementList;
    }

    public List<Element> getProductsByDescription(String description) {
        Session session = sessionFactory.openSession();
        List<Product> productList = session.createQuery("FROM Product WHERE description like :description")
                .setParameter("description", description)
                .list();
        List<Element> elementList = new ArrayList<>();
        Element element;
        for (Product p : productList) {
            element = new Element(p);
            elementList.add(element);
        }
        session.close();
        return elementList;
    }

    public Element getProductById(int id) {
        Session session = sessionFactory.openSession();
        Element element = new Element(
                (Product) session.createQuery("FROM Product WHERE id = :id")
                        .setParameter("id", id).list().get(0)
        );
        return element;
    }

    public List<Element> getProductsByCategory(String category) {
        ProductCategory productCategory = null;
        for (ProductCategory p : ProductCategory.values()) {
            if (p.name().equals(category)) {
                productCategory = p;
                break;
            }
        }
        Session session = sessionFactory.openSession();
        List<Product> productList = session.createQuery("FROM Product WHERE category = :category")
                .setParameter("category", productCategory.name())
                .list();
        List<Element> elementList = new ArrayList<Element>();
        Element element;
        for (Product p : productList) {
            element = new Element(p);
            elementList.add(element);
        }
        session.close();
        return elementList;
    }
}

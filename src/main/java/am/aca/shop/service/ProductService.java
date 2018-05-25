package am.aca.shop.service;

import am.aca.shop.domain.Element;
import am.aca.shop.domain.Product;
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

    public List<Element> getProducts(){

        Session session = sessionFactory.openSession();

        List<Product> productList =  session.createQuery("From Product").list();

        List<Element>  elementList = new ArrayList<>();

        for(Product p: productList) {
            Element element = new Element();
            element.setName(p.getName());
            element.setDescription(p.getDescription());
            element.setPrice(p.getPrice());
            element.setImages_url(p.getImages().get(0).getUrl());
            elementList.add(element);
        }

        session.close();
        return elementList ;
    }


}

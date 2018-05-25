package am.aca.shop.controller;

import am.aca.shop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/")
public class MainController {

    private final ProductService productService;

    @Autowired
    public MainController(ProductService productService) {
        this.productService = productService;
    }

    @RequestMapping("/")
    public ModelAndView index(@RequestParam(value = "category", required = false) String category) {
        ModelAndView modelAndView = new ModelAndView("index");
        if (category != null) {
            modelAndView.addObject("products", productService.getProductsByCategory(category));
        }
        else {
            modelAndView.addObject("products", productService.getProducts());
        }
        return modelAndView;
    }

    @RequestMapping("/product")
    public ModelAndView product(@RequestParam("id") int id) {
        ModelAndView modelAndView = new ModelAndView("product");
        modelAndView.addObject("element", productService.getProductById(id));
        return modelAndView;
    }
}

package am.aca.shop.controller;

import am.aca.shop.domain.Element;
import am.aca.shop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping("/")
public class MainController {

    private static final int elementCount = 3;
    private final ProductService productService;

    @Autowired
    public MainController(ProductService productService) {
        this.productService = productService;
    }

    @RequestMapping("/")
    public ModelAndView index(@RequestParam(value = "category", required = false) String category,
                              @RequestParam(value = "page", defaultValue = "1") int page) {
        ModelAndView modelAndView = new ModelAndView("index");
        List<Element> productList;
        if (category != null) {
            productList = productService.getProductsByCategory(category);
        } else {
            productList = productService.getProducts();
        }
        List<Integer> pageList = new ArrayList<Integer>();
        //  Adding all pages
        for (int i = 0; i <= productList.size() / elementCount; ++i) {
            pageList.add(i + 1);
        }
        //  If there won't be any product on last page - remove it
        if (productList.size() % elementCount == 0) {
            pageList.remove(pageList.size() - 1);
        }
        //  An ordinary check...
        if (page <= 0 || page > pageList.size()) {
            return null;
        }
        //  Specify the start and the end of the splitted list
        int start = (page - 1) * elementCount;
        int end = start + elementCount;
        //  end is power of elementCount, need to fix that...
        if (end > productList.size()) {
            end = productList.size();
        }
        //  Splitting the list...
        productList = productList.subList(start, end);
        //  Adding params
        modelAndView.addObject("products", productList);
        modelAndView.addObject("pages", pageList);
        modelAndView.addObject("category", category);
        return modelAndView;
    }

    @RequestMapping("/product")
    public ModelAndView product(@RequestParam("id") int id) {
        ModelAndView modelAndView = new ModelAndView("product");
        modelAndView.addObject("element", productService.getProductById(id));
        return modelAndView;
    }
}

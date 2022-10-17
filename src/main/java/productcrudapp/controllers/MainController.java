package productcrudapp.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productcrudapp.dao.ProductDao;
import productcrudapp.models.Product;

@Controller
public class MainController {
	@Autowired
	private ProductDao productDao;

	// show all products on the home page
	@RequestMapping("/")
	public String home(Model model) {
		List<Product> products = this.productDao.getAllProducts();
		model.addAttribute("products", products);
		return "home";
	}

	// add product form show handler
	@RequestMapping("/add-product")
	public String addForm() {
		return "add_product";
	}

	// add product post request handler
	@RequestMapping(path = "/handleAdd", method = RequestMethod.POST)
	public RedirectView handleForm(@ModelAttribute Product product, HttpServletRequest request) {
		RedirectView redirectView = new RedirectView();
		this.productDao.createProduct(product);
		System.out.println("Product successfully created");
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}

	// handler to handle the delete operation
	@RequestMapping(path = "/delete/{productId}")
	public RedirectView handleDelete(@PathVariable("productId") int prodId, HttpServletRequest request) {
		RedirectView redirectView = new RedirectView();
		this.productDao.deleteProduct(prodId);
		System.out.println("Product successfully deleted");
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}
}

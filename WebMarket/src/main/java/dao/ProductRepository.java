package dao;

import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

  private ArrayList<Product> listOfProducts = new ArrayList<Product>();
  private static ProductRepository instance = new ProductRepository();

  public static ProductRepository getInstance() {
    return instance;
  }

  public ProductRepository() {
    Product phone = new Product("P1234", "iPhone 6s", 800000);
    phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
    phone.setCategory("Smart Phone");
    phone.setManufacturer("Apple");
    phone.setUnitInStock(1000);
    phone.setCondition("New");
    phone.setFilename("p1234.PNG");

    Product notebook = new Product("P1235", "LG PC �׷�", 1500000);
    notebook.setDescription(
        "13.3-inch, IPS LED display, 5rd Generation notebook. Inter Core processors");
    notebook.setCategory("Notebook");
    notebook.setManufacturer("LG");
    notebook.setUnitInStock(1000);
    notebook.setCondition("Refurbished");
    notebook.setFilename("p1235.PNG");

    Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
    tablet.setDescription("212.8*125.6*6.6mm, Super AMOLEED display, Octa-Core processor");
    tablet.setCategory("Tablet");
    tablet.setManufacturer("Samsum");
    tablet.setUnitInStock(1000);
    tablet.setCondition("Old");
    tablet.setFilename("p1236.PNG");

    listOfProducts.add(phone);
    listOfProducts.add(notebook);
    listOfProducts.add(tablet);
  }

  public ArrayList<Product> getAllProducts() {
    return listOfProducts;
  }

  public Product getProductById(String productId) {
    Product productById = null;

    for (int i = 0; i < listOfProducts.size(); i++) {
      Product product = listOfProducts.get(i);
      if (product != null && product.getProductId() != null
          && product.getProductId().equals(productId)) {
        productById = product;
        break;
      }
    }
    return productById;
  }

  public void addProduct(Product product) {
    listOfProducts.add(product);
  }
}

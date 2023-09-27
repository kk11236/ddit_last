package dao;

public class ProductRepository {
	
	public Product getProductById(String productId) {
		Product productById = null;
		
		for(int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product != null && product.getProductId() != null && 
					product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}

}

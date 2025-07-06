package nhupham.nhuptt.cosmeticsapp.services;

import nhupham.nhuptt.cosmeticsapp.dtos.ProductDTO;
import nhupham.nhuptt.cosmeticsapp.dtos.ProductImageDTO;
import nhupham.nhuptt.cosmeticsapp.exceptions.DataNotFoundException;
import nhupham.nhuptt.cosmeticsapp.models.Product;
import nhupham.nhuptt.cosmeticsapp.models.ProductImage;
import nhupham.nhuptt.cosmeticsapp.responses.ProductResponse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.List;


public interface IProductService {
    Product createProduct(ProductDTO productDTO) throws Exception;
    Product getProductById(long id) throws Exception;
    public Page<ProductResponse> getAllProducts(String keyword,
                                                Long categoryId, PageRequest pageRequest);
    Product updateProduct(long id, ProductDTO productDTO) throws Exception;
    void deleteProduct(long id);
    boolean existsByName(String name);
    ProductImage createProductImage(
            Long productId,
            ProductImageDTO productImageDTO) throws Exception;
    List<Product> findProductsByIds(List<Long> productIds);

}

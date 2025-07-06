package nhupham.nhuptt.cosmeticsapp.repositories;

import nhupham.nhuptt.cosmeticsapp.models.Product;
import nhupham.nhuptt.cosmeticsapp.models.ProductImage;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface ProductImageRepository extends JpaRepository<ProductImage, Long> {
    List<ProductImage> findByProductId(Long productId);

}

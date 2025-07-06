package nhupham.nhuptt.cosmeticsapp.repositories;

import nhupham.nhuptt.cosmeticsapp.models.OrderDetail;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OrderDetailRepository extends JpaRepository<OrderDetail, Long> {
    List<OrderDetail> findByOrderId(Long orderID);
}

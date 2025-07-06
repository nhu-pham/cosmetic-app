package nhupham.nhuptt.cosmeticsapp.services;

import nhupham.nhuptt.cosmeticsapp.dtos.OrderDTO;
import nhupham.nhuptt.cosmeticsapp.exceptions.DataNotFoundException;
import nhupham.nhuptt.cosmeticsapp.models.Order;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface IOrderService {
    Order createOrder(OrderDTO orderDTO) throws Exception;
    Order getOrder(Long id);
    Order updateOrder(Long id, OrderDTO orderDTO) throws DataNotFoundException;
    void deleteOrder(Long id);
    List<Order> findByUserId(Long userId);
    Page<Order> getOrdersByKeyword(String keyword, Pageable pageable);
}

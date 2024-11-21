package vn.ndkien.laptopshop.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import vn.ndkien.laptopshop.domain.Order;
import vn.ndkien.laptopshop.domain.OrderDetail;
import vn.ndkien.laptopshop.service.OrderService;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class OrderController {
    private final OrderService orderService;

    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    // Xem tất cả đơn hàng
    @GetMapping("/admin/order")
    public String getDashBoard(Model model, Order order) {
        List<Order> currentOrder = this.orderService.getAllOrder(order);
        model.addAttribute("order", currentOrder);
        return "admin/order/table-order";
    }

    // Xem chi tiết một đơn hàng
    @GetMapping("/admin/order/{id}")
    public String getMethodName(@PathVariable long id, Model model) {
        Order currentOrder = this.orderService.getOrderById(id).get();
        model.addAttribute("order", currentOrder);
        model.addAttribute("id", id);
        model.addAttribute("orderDetail", currentOrder.getOrderDetail());
        return "admin/order/view";
    }

    // Lấy thông tin cần sửa
    @GetMapping("/admin/order/update/{id}")
    public String getUpdateOrder(@PathVariable long id, Model model) {
        Optional<Order> currentOrder = this.orderService.getOrderById(id);
        model.addAttribute("order", currentOrder.get());
        return "admin/order/update";
    }

    @PostMapping("/admin/order/update")
    public String postUpdateOrder(@ModelAttribute("order") Order order) {
        this.orderService.updateOrder(order);
        return "redirect:/admin/order";
    }

    // Lấy thông tin cần sửa
    @GetMapping("/admin/order/delete/{id}")
    public String getDeleteOrder(@PathVariable long id, Model model) {
        Optional<Order> currentOrder = this.orderService.getOrderById(id);
        model.addAttribute("order", currentOrder.get());
        model.addAttribute("id", id);
        return "admin/order/delete";
    }

    @PostMapping("/admin/order/delete")
    public String postDeleteOrder(Model model, @ModelAttribute("order") Order order) {
        this.orderService.deleteOrder(order.getId());
        return "redirect:/admin/order";
    }

}

package vn.ndkien.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.ndkien.laptopshop.domain.User;
import vn.ndkien.laptopshop.repository.UserRepository;

@Service
public class UserService {
    private UserRepository userRepository;

    // Constructor
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    // 1. Lưu dữ liệu người dùng khi nhập form
    public User handleUser(User user) {
        User ndkien = this.userRepository.save(user);
        System.out.println(ndkien);
        return ndkien;
    }

    // 2. Lấy danh sách tất cả người dùng
    public List<User> getAllUser(User user) {
        return this.userRepository.findAll();
    }

    // 3. Lấy danh sách tất cả người dùng bởi email
    public List<User> getAllUserEmail(String email) {
        return this.userRepository.findByEmail(email);
    }
}

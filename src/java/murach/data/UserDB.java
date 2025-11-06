package murach.data;

import murach.business.User;

public class UserDB {
    
    // Đây là một lớp "giả" (stub) cho Chương 2.
    // Nó chỉ in thông tin người dùng ra Bảng điều khiển (Console) của NetBeans.
    public static void insert(User user) {
        System.out.println("--- UserDB Stub (Lớp Giả) ---");
        System.out.println("Đang chèn người dùng: " + user.getFirstName() + " " + user.getLastName());
        System.out.println("Email: " + user.getEmail());
        System.out.println("-----------------------------");
    }
}
package com.example.thi_wcd.controller;

import com.example.thi_wcd.entity.Phone;
import com.example.thi_wcd.model.MySqlPhoneModel;
import com.example.thi_wcd.model.PhoneModel;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

public class PhoneServlet extends HttpServlet {
    private PhoneModel phoneModel;

    public PhoneServlet() {
        this.phoneModel = new MySqlPhoneModel();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("addphone.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
//        resp.setContentType("text/html; charset=UTF-8");
//        resp.setCharacterEncoding("UTF-8");
        // lấy giá trị từ form gửi lên.
        String name = req.getParameter("name");
        String brand = req.getParameter("brand");
        double price = Double.parseDouble(req.getParameter("price"));
        String description = req.getParameter("description");
        // Khởi tạo đối tượng account từ thông tin truyền lên.
        Phone phone = Phone.PhoneBuilder.aPhone()
                .withName(name)
                .withBrand(brand)
                .withPrice(price)
                .withDescription(description)
                .build();
        if(!phone.isValid()){
            // trả dữ liệu cũ về form
            req.setAttribute("phone", phone);
            // kèm theo thông tin lỗi
            req.setAttribute("errors", phone.getErrors());
            // tất cả được trả về
            req.getRequestDispatcher("add-success.jsp").forward(req, resp);
            return;
        }
        // thực hiện save
        phoneModel.save(phone);
        req.setAttribute("phone", phone);
        req.getRequestDispatcher("add-success.jsp").forward(req, resp);
    }

    public static void main(String[] args) {
        HashMap<String, String> errors = new HashMap<>();
        errors.put("name", "Please enter phone name");
        errors.put("price", "Please enter price");
        errors.put("description", "Please enter description");
        if (errors.containsKey("name")) {
        }
    }
}

package com.example.thi_wcd.model;

import com.example.thi_wcd.constant.SqlConstant;
import com.example.thi_wcd.entity.Phone;
import com.example.thi_wcd.service.ConnectionHelper;

import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class MySqlPhoneModel implements PhoneModel {

    @Override
    public boolean save(Phone obj) {
        try {
            Connection connection = ConnectionHelper.getConnection();
            PreparedStatement preparedStatement
                    = connection.prepareStatement(SqlConstant.PHONE_INSERT);
            preparedStatement.setString(1, obj.getName());
            preparedStatement.setString(2, obj.getBrand());
            preparedStatement.setDouble(3, obj.getPrice());
            preparedStatement.setString(4, obj.getDescription());
            preparedStatement.execute();
            return true;
        } catch (Exception ex) {
            System.err.println(ex.getMessage());
            ex.printStackTrace();
        }
        return false;
    }
}

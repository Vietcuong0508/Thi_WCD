package com.example.thi_wcd.constant;

public class SqlConstant {

    public static final String PHONE_INSERT = "insert into phone (name, brand, price, description) values (?,?,?,?)";

    public static final String PHONE_FIELD_ID = "id";
    public static final String PHONE_FIELD_NAME = "name";
    public static final String PHONE_FIELD_THUMBNAIL = "brand";
    public static final String PHONE_FIELD_PRICE = "price";
    public static final String PHONE_FIELD_DESCRIPTION = "description";

    public static final String FIELD_CREATED_AT = "createdAt";
    public static final String FIELD_UPDATED_AT = "updatedAt";
    public static final String FIELD_DELETED_AT = "deletedAt";
    public static final String FIELD_CREATED_BY = "createdBy";
    public static final String FIELD_UPDATED_BY = "updatedBy";
    public static final String FIELD_DELETED_BY = "deletedBy";
}

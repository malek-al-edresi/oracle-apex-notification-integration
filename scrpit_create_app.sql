-- Drop existing objects if they exist
BEGIN
    FOR rec IN (SELECT object_name, object_type 
                FROM user_objects 
                WHERE object_name IN ('CUSTONERS', 'ORDERS', 'RESTAURANTS', 'CUSTONERS_SEQ', 'ORDERS_SEQ') 
                AND object_type IN ('TABLE', 'SEQUENCE')) LOOP
        IF rec.object_type = 'TABLE' THEN
            EXECUTE IMMEDIATE 'DROP TABLE ' || rec.object_name || ' CASCADE CONSTRAINTS';
        ELSIF rec.object_type = 'SEQUENCE' THEN
            EXECUTE IMMEDIATE 'DROP SEQUENCE ' || rec.object_name;
        END IF;
    END LOOP;
    
    FOR rec IN (SELECT object_name FROM user_objects WHERE object_name IN ('TRG_AFTER_INSERT_OR_UPDATE_CUSTOMERS', 'TRG_AFTER_INSERT_OR_UPDATE_ORDERS', 'TRG_AFTER_INSERT_OR_UPDATE_RESTAURANTS') AND object_type = 'TRIGGER') LOOP
        EXECUTE IMMEDIATE 'DROP TRIGGER ' || rec.object_name;
    END LOOP;
    
    FOR rec IN (SELECT object_name FROM user_objects WHERE object_name IN ('PKG_CUSTOMER_MANAGEMENT', 'PKG_ORDER_MANAGEMENT') AND object_type = 'PACKAGE') LOOP
        EXECUTE IMMEDIATE 'DROP PACKAGE ' || rec.object_name;
    END LOOP;
END;
/

-- Create sequences
CREATE SEQUENCE CUSTONERS_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE ORDERS_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE RESTAURANTS_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;

-- Create tables
CREATE TABLE CUSTONERS (
    customer_id INT PRIMARY KEY DEFAULT BY CUSTONERS_SEQ.NEXTVAL,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) UNIQUE NOT NULL,
    phone_number VARCHAR2(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR2(50)
);

CREATE TABLE ORDERS (
    order_id INT DEFAULT BY ORDERS_SEQ.NEXTVAL PRIMARY KEY,
    customer_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status NUMBER(2) NOT NULL,
    total_amount NUMBER(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR2(50),
    FOREIGN KEY (customer_id) REFERENCES CUSTONERS(customer_id)
);

CREATE TABLE RESTAURANTS (
    restaurant_id INT DEFAULT BY RESTAURANTS_SEQ.NEXTVAL PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    address VARCHAR2(255),
    phone_number VARCHAR2(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR2(50)
);

-- Create triggers
CREATE OR REPLACE TRIGGER trg_after_insert_or_update_customers
BEFORE INSERT OR UPDATE ON CUSTONERS
FOR EACH ROW
BEGIN
    :NEW.created_by := NVL(SYS_CONTEXT('APEX$SESSION','APP_USER'), USER); 
END;
/

CREATE OR REPLACE TRIGGER trg_after_insert_or_update_orders
BEFORE INSERT OR UPDATE ON ORDERS
FOR EACH ROW
BEGIN
    :NEW.created_by := NVL(SYS_CONTEXT('APEX$SESSION','APP_USER'), USER); 
END;
/

CREATE OR REPLACE TRIGGER trg_after_insert_or_update_restaurants
BEFORE INSERT OR UPDATE ON RESTAURANTS
FOR EACH ROW
BEGIN
    :NEW.created_by := NVL(SYS_CONTEXT('APEX$SESSION','APP_USER'), USER); 
END;
/

-- Create package for customer management
CREATE OR REPLACE PACKAGE pkg_customer_management AS
    PROCEDURE add_customer(
        p_first_name IN VARCHAR2,
        p_last_name IN VARCHAR2,
        p_email IN VARCHAR2,
        p_phone_number IN VARCHAR2
    );

    PROCEDURE update_customer(
        p_customer_id IN INT,
        p_first_name IN VARCHAR2,
        p_last_name IN VARCHAR2,
        p_email IN VARCHAR2,
        p_phone_number IN VARCHAR2
    );

    PROCEDURE delete_customer(
        p_customer_id IN INT
    );
END pkg_customer_management;
/

CREATE OR REPLACE PACKAGE BODY pkg_customer_management AS

    PROCEDURE add_customer(
        p_first_name IN VARCHAR2,
        p_last_name IN VARCHAR2,
        p_email IN VARCHAR2,
        p_phone_number IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO CUSTONERS (customer_id, first_name, last_name, email, phone_number, created_by)
        VALUES (CUSTONERS_SEQ.NEXTVAL, p_first_name, p_last_name, p_email, p_phone_number, NVL(SYS_CONTEXT('APEX$SESSION','APP_USER'), USER));
    END add_customer;

    PROCEDURE update_customer(
        p_customer_id IN INT,
        p_first_name IN VARCHAR2,
        p_last_name IN VARCHAR2,
        p_email IN VARCHAR2,
        p_phone_number IN VARCHAR2
    ) IS
    BEGIN
        UPDATE CUSTONERS
        SET first_name = p_first_name,
            last_name = p_last_name,
            email = p_email,
            phone_number = p_phone_number,
            created_by = NVL(SYS_CONTEXT('APEX$SESSION','APP_USER'), USER)
        WHERE customer_id = p_customer_id;
    END update_customer;

    PROCEDURE delete_customer(
        p_customer_id IN INT
    ) IS
    BEGIN
        DELETE FROM CUSTONERS
        WHERE customer_id = p_customer_id;
    END delete_customer;

END pkg_customer_management;
/

-- Create package for order management
CREATE OR REPLACE PACKAGE pkg_order_management AS
    PROCEDURE add_order(
        p_customer_id IN INT,
        p_status IN NUMBER,
        p_total_amount IN NUMBER
    );

    PROCEDURE update_order(
        p_order_id IN INT,
        p_customer_id IN INT,
        p_status IN NUMBER,
        p_total_amount IN NUMBER
    );

    PROCEDURE delete_order(
        p_order_id IN INT
    );
END pkg_order_management;
/

CREATE OR REPLACE PACKAGE BODY pkg_order_management AS

    PROCEDURE add_order(
        p_customer_id IN INT,
        p_status IN NUMBER,
        p_total_amount IN NUMBER
    ) IS
    BEGIN
        INSERT INTO ORDERS (order_id, customer_id, status, total_amount, created_by)
        VALUES (ORDERS_SEQ.NEXTVAL, p_customer_id, p_status, p_total_amount, NVL(SYS_CONTEXT('APEX$SESSION','APP_USER'), USER));
    END add_order;

    PROCEDURE update_order(
        p_order_id IN INT,
        p_customer_id IN INT,
        p_status IN NUMBER,
        p_total_amount IN NUMBER
    ) IS
    BEGIN
        UPDATE ORDERS
        SET customer_id = p_customer_id,
            status = p_status,
            total_amount = p_total_amount,
            created_by = NVL(SYS_CONTEXT('APEX$SESSION','APP_USER'), USER)
        WHERE order_id = p_order_id;
    END update_order;

    PROCEDURE delete_order(
        p_order_id IN INT
    ) IS
    BEGIN
        DELETE FROM ORDERS
        WHERE order_id = p_order_id;
    END delete_order;

END pkg_order_management;
/

-- Create packge for restaurant management
CREATE OR REPLACE PACKAGE pkg_restaurant_management AS
    PROCEDURE add_restaurant(
        p_name IN VARCHAR2,
        p_address IN VARCHAR2,
        p_phone_number IN VARCHAR2
    );

    PROCEDURE update_restaurant(
        p_restaurant_id IN INT,
        p_name IN VARCHAR2,
        p_address IN VARCHAR2,
        p_phone_number IN VARCHAR2
    );

    PROCEDURE delete_restaurant(
        p_restaurant_id IN INT
    );
END pkg_restaurant_management;
/
CREATE OR REPLACE PACKAGE BODY pkg_restaurant_management AS

    PROCEDURE add_restaurant(
        p_name IN VARCHAR2,
        p_address IN VARCHAR2,
        p_phone_number IN VARCHAR2
    ) IS
    BEGIN
        INSERT INTO RESTAURANTS (restaurant_id, name, address, phone_number, created_by)
        VALUES (RESTAURANTS_SEQ.NEXTVAL, p_name, p_address, p_phone_number, NVL(SYS_CONTEXT('APEX$SESSION','APP_USER'), USER));
    END add_restaurant;

    PROCEDURE update_restaurant(
        p_restaurant_id IN INT,
        p_name IN VARCHAR2,
        p_address IN VARCHAR2,
        p_phone_number IN VARCHAR2
    ) IS
    BEGIN
        UPDATE RESTAURANTS
        SET name = p_name,
            address = p_address,
            phone_number = p_phone_number,
            created_by = NVL(SYS_CONTEXT('APEX$SESSION','APP_USER'), USER)
        WHERE restaurant_id = p_restaurant_id;
    END update_restaurant;

    PROCEDURE delete_restaurant(
        p_restaurant_id IN INT
    ) IS
    BEGIN
        DELETE FROM RESTAURANTS
        WHERE restaurant_id = p_restaurant_id;
    END delete_restaurant;

END pkg_restaurant_management;
/
COMMIT;

-- Create status lookup table
CREATE TABLE ORDER_STATUS_LOOKUP (
    return_value NUMBER PRIMARY KEY,
    display_value VARCHAR2(50) NOT NULL
);

-- Insert initial data into status lookup table
INSERT INTO ORDER_STATUS_LOOKUP (return_value, display_value) VALUES (1, 'Ready the order');
INSERT INTO ORDER_STATUS_LOOKUP (return_value, display_value) VALUES (0, 'In Progress');

COMMIT;


-- Create view dateailly orders
CREATE OR REPLACE VIEW VW_DAILY_ORDERS AS
SELECT
    o.order_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    c.email AS customer_email,
    c.phone_number AS customer_phone,
    TO_CHAR(o.order_date, 'DD-MM-YYYY HH:MI:AM') AS order_date,
    osl.display_value as status_order,
    o.total_amount
FROM
    ORDERS o
JOIN
    CUSTOMERS c ON o.customer_id = c.customer_id
JOIN
    ORDER_STATUS_LOOKUP osl ON o.status = osl.return_value;

-- View to generate WhatsApp message content for all orders
CREATE OR REPLACE VIEW VM_MESSAGE_WHATSAPP_ORDERS_DETAILS AS 
SELECT 
    -- 🔷 Final WhatsApp formatted text message
    '📦 Hello and welcome to our Order Management System!' || CHR(10) || 
    'We are pleased to inform you about your recent order details:' || CHR(10) || 
    '-----------------------------------' || CHR(10) || CHR(10) || 
 
    '📋 Order Details:' || CHR(10) || 
    '🔹 Order ID: ' || TO_CHAR(o.order_id) || CHR(10) || 
    '📅 Order Date: ' || TO_CHAR(o.order_date, 'DD-MON-YYYY HH:MI AM') || CHR(10) || 
    '💵 Total Amount: ' || TO_CHAR(o.total_amount, 'FM999,999.00') || CHR(10) || 
    '📊 Order Status: ' || osl.display_value || CHR(10) || 
    '-----------------------------------' || CHR(10) || CHR(10) || 
 
    '👤 Customer Information:' || CHR(10) || 
    '👤 Name: ' || c.first_name || ' ' || c.last_name || CHR(10) || 
    '📧 Email: ' || c.email || CHR(10) || 
    '📱 Phone: ' || NVL(c.phone_number, 'Not Available') || CHR(10) || 
    '-----------------------------------' || CHR(10) || CHR(10) || 
 
    '📞 For more information or inquiries, please contact us.' || CHR(10) || 
    'Thank you for choosing our services! 🛒' 
    AS FULL_RETURN,


    -- 🔸 Linking Data
    o.order_id      AS ORDER_ID, 
    o.customer_id   AS CUSTOMER_ID, 
    c.first_name || ' ' || c.last_name AS CUSTOMER_NAME,
    c.email         AS CUSTOMER_EMAIL,
    c.phone_number  AS CUSTOMER_PHONE
 
FROM 
    ORDERS o
    JOIN CUSTOMERS c ON o.customer_id = c.customer_id
    JOIN ORDER_STATUS_LOOKUP osl ON o.status = osl.return_value;


-- Create procedure to send WhatsApp message (example only, actual implementation may vary)
CREATE OR REPLACE PROCEDURE get_data_for_send_whatsapp_message (
    p_order_id IN INT,
    p_phone_number OUT VARCHAR2,
    p_message_body OUT CLOB )
IS
BEGIN
    SELECT 
        CUSTOMER_PHONE,
        FULL_RETURN
    INTO
        p_phone_number,
        p_message_body
    FROM 
        VM_MESSAGE_WHATSAPP_ORDERS_DETAILS
    WHERE 
        ORDER_ID = p_order_id;
END get_data_for_send_whatsapp_message;
/

-- Block Get Data from procedure get_data_for_send_whatsapp_message
BEGIN
    get_data_for_send_whatsapp_message (
        p_order_id => 1,
        p_phone_number => :phone_number,
        p_message_body => :message_body
    );
END;
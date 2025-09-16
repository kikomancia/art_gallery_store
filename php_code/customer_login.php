<?php

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    header('Content-Type: application/json');
    require 'dbconn.php';

    $cust_email = trim($_POST['cust_email'] ?? '');
    $cust_password = $_POST['cust_password'] ?? '';

    // Validate required fields
    if (empty($cust_email) || empty($cust_password)) {
        echo json_encode(['error' => 'All fields are required']);
        exit();
    }

    // Check if user exists and password is correct (plain text)
    $stmt = $connect->prepare("SELECT cust_name, cust_address, cust_phone, password FROM tbl_customers WHERE cust_email = ?");
    $stmt->bind_param("s", $cust_email);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows === 1) {
        $stmt->bind_result($cust_name, $cust_address, $cust_phone, $db_password);
        $stmt->fetch();

        if ($cust_password === $db_password) {
            // Login successful
            echo json_encode([200]);
        } else {
            echo json_encode([201]);
        }
    } else {
        echo json_encode(['error' => 'Invalid email or password']);
    }

    $stmt->close();
    $connect->close();
    exit();
}

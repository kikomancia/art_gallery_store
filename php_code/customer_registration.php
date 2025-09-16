<?php

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    header('Content-Type: application/json');
    require 'dbconn.php';

    $cust_name = trim($_POST['cust_name'] ?? '');
    $cust_address = trim($_POST['cust_address'] ?? '');
    $cust_phone = trim($_POST['cust_phone'] ?? '');
    $cust_email = trim($_POST['cust_email'] ?? '');
    $cust_password = $_POST['cust_password'] ?? '';

    // Validate required fields
    if (
        empty($cust_name) ||
        empty($cust_address) ||
        empty($cust_phone) ||
        empty($cust_email) ||
        empty($cust_password)
    ) {
        echo json_encode(['error' => 'All fields are required']);
        exit();
    }

   // $hashed_password = password_hash($cust_password, PASSWORD_DEFAULT);

    $stmt = $connect->prepare("INSERT INTO tbl_customers (cust_name, cust_address, cust_phone, cust_email, password) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param("sssss", $cust_name, $cust_address, $cust_phone, $cust_email, $cust_password);

    if ($stmt->execute()) {
        echo json_encode([200]);
    } else {
        echo json_encode([201]);  
    }

    $stmt->close();
    $connect->close();
    exit();
}

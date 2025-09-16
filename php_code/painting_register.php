<?php

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    header('Content-Type: application/json');
    require 'dbconn.php';

    $pnt_name = trim($_POST['pnt_name'] ?? '');
    $descriptions = trim($_POST['descriptions'] ?? '');
    $price = trim($_POST['price'] ?? '');
    $total_qty = trim($_POST['total_qty'] ?? '');

    // Validate required fields
    if (
        empty($pnt_name) ||
        empty($descriptions) ||
        empty($price) ||
        empty($total_qty) ||
        !isset($_FILES['img'])
    ) {
        echo json_encode(['error' => 'All fields are required']);
        exit();
    }

    // Handle image upload
    $img = $_FILES['img'];
    $img_folder = __DIR__ . '../../images/';
    $img_name = basename($img['name']);
    $img_path = $img_folder . $img_name;
    $img_db_path = $img_name;

    // Check if image folder exists, if not create it
    if (!is_dir($img_folder)) {
        mkdir($img_folder, 0777, true);
    }

    // Move uploaded file
    if (!move_uploaded_file($img['tmp_name'], $img_path)) {
        echo json_encode(['error' => 'Failed to upload image']);
        exit();
    }

    // Insert into database
    $stmt = $connect->prepare("INSERT INTO tbl_painting_infos (pnt_name, descriptions, price, total_qty, img) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param("sssss", $pnt_name, $descriptions, $price, $total_qty, $img_db_path);

    if ($stmt->execute()) {
        echo json_encode([200]);
    } else {
        echo json_encode([201]);
    }

    $stmt->close();
    $connect->close();
    exit();
}

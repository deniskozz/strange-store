<?php

$dbhost = "localhost";
$dbname = "mystery_crap";
$username = "root";
$password = "";

$db = new PDO("mysql:host=$dbhost; dbname=$dbname", $username, $password);

function get_info() {
    global $db;
    $cards = $db->query("SELECT * FROM item_full");
    return $cards;
}


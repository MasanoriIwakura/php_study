<?php

echo 'Hello World<br>';

// hostname, user, password, db name
$mysqli = new mysqli('mysql', 'docker', 'docker', 'app');

if ($mysqli->connect_error) {
  echo $mysqli->connect_error;
  exit();
} else {
    $mysqli->set_charset("utf8");
}

$sql = "SELECT id, name FROM test";
if ($result = $mysqli->query($sql)) {
    while ($row = $result->fetch_assoc()) {
        echo "ID:" . $row["id"] . " NAME:" . $row["name"] . "<br>";
    }
    $result->close();
}

$mysqli->close();
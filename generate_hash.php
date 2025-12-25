<?php
$password = 'admin123'; // ganti bila perlu
echo password_hash($password, PASSWORD_BCRYPT) . PHP_EOL;

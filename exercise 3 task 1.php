 <meta charset="UTF-8">
<pre>
<?php
    $host = '127.0.0.1';
    $db   = 'student';
    $user = 'student';
    $pass = 'student';
    $charset = 'utf8';
    $dsn = "mysql:host=$host;dbname=$db;charset=$charset";
    $opt = [
        PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::ATTR_EMULATE_PREPARES   => false,
    ];
    $pdo = new PDO($dsn, $user, $pass, $opt);
    $stmt = $pdo->query('SELECT goods, price, quantity, quantity * price AS cost FROM  `112_tts_bill_content` ');
    print "<table border=1>";
    echo '<tr><td>товар: </td><td>цена: </td><td>количество: </td><td>стоимость: </td>';
    foreach($stmt as $row){
        echo '<tr><td>'.$row['goods'].'</td>';
        echo '<td>'.$row['price'].'</td>';
        echo '<td>'.$row['quantity'].'</td>';
        echo '<td>'.$row['cost'].'</td></tr>';
    }
    $sum = $pdo->query('SELECT SUM(quantity * price) as x FROM  `112_tts_bill_content` ');
    echo '<tr><td colspan=4>'.$sum->fetch()['x'].'</td></tr>';
    print "</table>";
?>
</pre>

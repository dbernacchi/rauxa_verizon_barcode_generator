<?php


$hostname='database';
$username='rauxa';
$password='thaTe2AG';
$dbname = 'rauxa';

try {
    $dbh = new PDO("mysql:host=$hostname;dbname=$dbname",$username,$password);

    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // <== add this line
    echo 'Connected to Database<br/>';

    $sql = "SELECT * FROM stickercollections";
foreach ($dbh->query($sql) as $row)
    {
    echo $row["collection_brand"] ." - ". $row["collection_year"] ."<br/>";
    }


    $dbh = null;
    }
catch(PDOException $e)
    {
    echo $e->getMessage();
    }


die();

phpinfo();

die();

$link = mysqli_connect('database', 'rauxa', 'thaTe2AG', "rauxa");

if (!$link) {
    echo "Error: Unable to connect to MySQL." . PHP_EOL;
    echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
    echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;
    exit;
}

echo "Success: A proper connection to MySQL was made! The my_db database is great." . PHP_EOL;
echo "Host information: " . mysqli_get_host_info($link) . PHP_EOL;

mysqli_close($link);

<?php
include("auth_session.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>База данных "Клиент"</title>
    <style>
        table{
            width: 70%;
            margin: auto;
            font-family: Arial, Helvetica, sans-serif;
        }
        table, tr, th, td{
            border: 1px solid #d4d4d4;
            border-collapse: collapse;
            padding: 12px;
        }
        th, td{
            text-align: left;
            vertical-align: top;
        }
        tr:nth-child(even){
            background-color: #e7e9eb;
        }
    </style>
<body>
      
<?php
    $hostname = "localhost";
    $username = "root";
    $password = "";
    $dbname = "slusba_perevozok";

    //Создание подключения к базе данных
    $con = mysqli_connect($hostname, $username, $password, $dbname);
    //Проверка состояния подключения
    if(!$con)
    {
        die("При подключении произошла ошибка!" . mysqli_connect_error());
    }
    else 
    {
        echo "Вы успешно подключились! <br>";
    }
    //SELECT
    $sql = "SELECT kod_klienta, familiya, imya, otchestvo, nomer_telefona, gorod, adres, raschetnyu_chet, kod_pola  FROM klient";
    $result = mysqli_query($con, $sql);
    if(mysqli_num_rows($result) > 0)
    {
       echo '<table> <tr> <th> Kod_klienta </th> <th> Familiya </th> <th> Imya </th> <th> Otchestvo </th> <th> Nomer_telefona </th> <th> Gorod </th> <th> Adres </th> <th> Raschetnyu_chet </th> <th> Kod_pola </th> </tr>';
       while($row = mysqli_fetch_assoc($result)){
           echo '<tr > <td>' . $row["kod_klienta"] . '</td>
           <td>' . $row["familiya"] . '</td>
           <td> ' . $row["imya"] . '</td>
           <td> ' . $row["otchestvo"] . '</td>
           <td> ' . $row["nomer_telefona"] . '</td>
           <td> ' . $row["gorod"] . '</td>
           <td> ' . $row["adres"] . '</td>
           <td> ' . $row["raschetnyu_chet"] . '</td>
           <td>' . $row["kod_pola"] . '</td> </tr>';
       }
       echo '</table>';
    }
    else
    {
        echo "0 results";
    }
    // Закрытие подключения
    mysqli_close($con);

?>
 <div class="form">
		<p><a href="dashboard.php">Вернуться в профиль "Менеджер"</a></p>
        <p><a href="logout.php">Выйти</a></p>
    </div>
</body>
</html>
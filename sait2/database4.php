<?php
include("auth_session.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>База данных "Груз"</title>
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
    $sql = "SELECT kod_gruza, tip_gruza, kolichestvo, kod_slusby, kod_zakaza  FROM gruz";
    $result = mysqli_query($con, $sql);
    if(mysqli_num_rows($result) > 0)
    {
       echo '<table> <tr> <th> Kod_gruza </th> <th> Tip_gruza </th> <th> Kolichestvo </th> <th> Kod_slusby </th> <th> Kod_zakaza </th> </tr>';
       while($row = mysqli_fetch_assoc($result)){
           echo '<tr > <td>' . $row["kod_gruza"] . '</td>
           <td>' . $row["tip_gruza"] . '</td>
           <td> ' . $row["kolichestvo"] . '</td>
           <td> ' . $row["kod_slusby"] . '</td>
           <td>' . $row["kod_zakaza"] . '</td> </tr>';
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
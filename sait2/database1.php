<?php
include("auth_session.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>База данных "Сотрудник"</title>
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
    $sql = "SELECT kod_sotrudnika, 	familiya, imya, otchestvo, dolzhnost, dyen_rozhdenya, nomer_telefona, pochta, kod_pola, kod_statusa, kod_slusby   FROM sotrudnik";
    $result = mysqli_query($con, $sql);
    if(mysqli_num_rows($result) > 0)
    {
       echo '<table> <tr> <th> Kod_sotrudnika </th> <th> Familiya </th> <th> Imya </th> <th> Otchestvo </th> <th> dolzhnost </th> <th> dyen_rozhdenya </th> <th> nomer_telefona </th> <th> pochta </th> <th> Kod_pola </th>  <th> kod_statusa </th> <th> kod_slusby </th>   </tr>';
       while($row = mysqli_fetch_assoc($result)){
           echo '<tr > <td>' . $row["kod_sotrudnika"] . '</td>
           <td>' . $row["familiya"] . '</td>
           <td> ' . $row["imya"] . '</td>
           <td> ' . $row["otchestvo"] . '</td>
           <td> ' . $row["dolzhnost"] . '</td>
           <td> ' . $row["dyen_rozhdenya"] . '</td>
           <td> ' . $row["nomer_telefona"] . '</td>
           <td> ' . $row["pochta"] . '</td>
           <td> ' . $row["kod_pola"] . '</td>
           <td> ' . $row["kod_statusa"] . '</td>
           <td>' . $row["kod_slusby"] . '</td> </tr>';
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
		<p><a href="dashboard1.php">Вернуться в профиль "Администратор"</a></p>
        <p><a href="logout.php">Выйти</a></p>
    </div>
</body>
</html>
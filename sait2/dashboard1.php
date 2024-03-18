<?php
include("auth_session.php");
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ИС - Окно администратора</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <div class="form">
        <p>Привет, <?php echo $_SESSION['username']; ?>!</p>
        <p>Вы вошли в информационную систему под пользователем "Администратор".</p>
        <p>Текущее время:</p>
        <div id="clock_js"></div>
		<script>
setInterval(clock_on_javascript, 1000);
function clock_on_javascript() {
var data = new Date();  
var time  = data.getHours() + ":" +  data.getMinutes() + ":" +  data.getSeconds();
document.getElementById('clock_js').innerHTML = time;  
}
		</script>
        <p><a href="database1.php">Открыть базу данных "Сотрудник"</a></p>
        <p><a href="logout.php">Выйти</a></p>
    </div>
</body>
</html>

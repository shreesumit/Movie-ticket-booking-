<!DOCTYPE html>
<html lang="eng">

<head>
    <meta charset="utf-8">
    <title>
        Home page
    </title>
    <link rel="stylesheet" type="text/css" href="/opt/lampp/htdocs/master page.css"
      media=”screen” /> 
    <link rel="icon" href="https://i.pinimg.com/originals/d2/1d/79/d21d796317fbe071ce591803543fd546.jpg"
        type="image/x-icon">
        <style type="text/css">
        body{
    background-image: url("https://www.gannett-cdn.com/-mm-/83e081eae80cd2848af52df6da1060d621468f19/c=0-111-2120-1303/local/-/media/2021/02/04/USATODAY/usatsports/red-movie-theater-seats.jpg?width=2120&height=1192&fit=crop&format=pjpg&auto=webp");
    height: 100%;
    background-size: cover;
}
.name{
    height: 10%;
    text-align: center;
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    font-style: italic;
    font-size: 70px;
    background-image: linear-gradient( orange, red);
    -webkit-background-clip: text;
        -moz-background-clip: text;
        background-clip: text;
        color: transparent;
        background-image: center;
}
a{
    display:inline-block ;
    
    margin: 10px;
    padding: 10px;
    background-color: rgb(rgb(0, 255, 76), green, blue);
}
img{
    height: 70px;
}
nav a{
	box-sizing:border-box;
	display:inline-block;
	height:60px;
	color: #FFFFFF;
	background-color:#486B02;
	text-decoration: none;
	margin:1% 5% 1% 0;
	padding:1% 5%;
	border-radius: 25px;

}
nav a:hover{
	color:#690f0f;
    background-color: #ffef10;
	border-radius: 0;

}
section{
    position: absolute;
  bottom: 8px;
  left: 16px;
  font-size: 18px;
   }
</style>
</head>

<body>
    <header>
        <img src="https://i.pinimg.com/originals/d2/1d/79/d21d796317fbe071ce591803543fd546.jpg">
        <span class="name">BOOK MY SHOW</span>
        <nav>
            <a href="https://localhost/movies/admin/login.php">ADMIN LOGIN</a>
            <a href="https://localhost/movies/movies.php">MOVIES</a>
            <a href="https://localhost/movies/login.php">USER LOGIN</a>
        </nav>
    </header>
</body>
<section>
<?php include('include/footer.php');?>
</section>

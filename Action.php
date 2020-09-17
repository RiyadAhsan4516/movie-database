<!-- NAME : RIYAD AHSAN AUNTOR
    ID: 18101358
    SECTION: 8
    GROUP : 6
    PROJECT : IMDB DATABASE
    ASSIGNED FEATURE : 2
    E-MAIL : riyad.ahsan.auntor@g.bracu.ac.bd
-->

<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <title>Action/Thriller</title>
        
        <!--Google Fonts-->
        <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
        
        <!--Bootstrap cdn-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        
        <!--CSS file link-->
        <link rel="stylesheet" href="CSS/style.css">
        
        <!--Fontawesome icons-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
        
        <!--Bootstrap sripts-->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    </head>
    <body>

            <div class="container-fluid">
                <div class="Headline">
                    <h1>Action/Thriller</h1>
                </div>
                <div class="card">
                    <div class="card-header">
                <div class="row">
                    <div class="col-md-3">Name</div>
                    <div class="col-md-3">Release Date</div>
                    <div class="col-md-3">Genre</div>
                    <div class="col-md-3">Rating</div>
                </div></div>
                <?php 
                    require_once("Dbconnect.php");
                    $sql = "SELECT name, release_date, genre, rating FROM movie WHERE genre='Action/Thriller' UNION
                            SELECT name, release_date, genre, rating FROM tv_show WHERE genre='Action/Thriller';";
                    $result = mysqli_query($conn, $sql);
                    if(mysqli_num_rows($result) != 0){
                        while($row = mysqli_fetch_array($result)){
                            ?>
                                <div class="row">
                                    <div class="col-md-3"><?php echo $row[0] ?></div>
                                    <div class="col-md-3"><?php echo $row[1] ?></div>
                                    <div class="col-md-3"><?php echo $row[2] ?></div>
                                    <div class="col-md-3"><?php echo $row[3] ?></div>
                                </div>
                                <?php

                        }
                    }
                ?>
                </div>
            </div>
        

    </body>
</html>
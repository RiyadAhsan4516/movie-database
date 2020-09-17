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
        <title>Movie Info</title>
        
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
                    <h1>Happy Binging!</h1>
                </div>
                <div class="container h-100">
                   <div class="d-flex justify-content-center h-100">
                    <form action="search.php" method="post">
                      <div class="searchbar">
                        <input class="search_input" type="text" name="search" placeholder="Search...">
                        <button type="submit" class="search_icon" name="submit-search"><i class="fas fa-search"></i></button>
                      </div>
                    </form>  
                    </div>
                </div>
                <div class="Others">
                    <div class="top">
                        <a href="TopRated.php"><h4>Top Rated</h4></a>
                    </div>
                    <div class="trending">
                        <a href="TvShows.php"><h4>TV Shows</h4></a>
                    </div>
                    <div class="btn-group btn-lg">
                        <button type="button" class="btn btn-transparent dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Genres
                        </button>
                        <div class="dropdown-menu">
                          <a class="dropdown-item" href="Action.php">Action/Thriller</a>
                          <a class="dropdown-item" href="Horror.php">Horror</a>
                          <a class="dropdown-item" href="Drama.php">Drama</a>
                        </div>
                    </div>
                    <div class="New-released">
                        <a href="NewReleased.php"><h4>New released</h4></a>
                    </div>
                </div>
            </div>
        

    </body>
</html>
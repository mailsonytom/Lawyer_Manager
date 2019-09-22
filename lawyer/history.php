<?php include 'connect.php' ?>
<?php
session_start();
if(isset($_SESSION['lawyer_id']) && !empty($_SESSION['lawyer_id'])){
    $lawyer_id = $_SESSION['lawyer_id'];
}
else{
    echo '<script type="text/javascript">
                window.location = "../index.php"
                 </script>';
}
?>
<!DOCTYPE html>
<html>

<head>
    <title>History</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-bg">
        <a class="navbar-brand" href="#">Find your LAWYER</a>
        <ul class="navbar-nav ml-auto">
        <li class="nav-item">
                <a class="nav-link" href="home.php">Home</a>
            </li>
        <li class="nav-item">
                <a class="nav-link" href="cases.php">Cases</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="courts.php">Courts</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../index.php">SIGNOUT</a>
            </li>

        </ul>
    </nav>
    <div class="container-fluid">
    <div class="mt-5 mb-5 py-2 border border-primary rounded">
            <div class="row mx-1 mt-2 mb-2">
                <div class="col-md-6">
                    <div class="list-group">
                    <?php
                            $sql = "SELECT * FROM history";
                            $result = mysqli_query($conn, $sql);
                            while($row=mysqli_fetch_assoc($result)){
                                    $user_query = "SELECT name FROM user_details WHERE uid = (SELECT uid FROM cases WHERE case_id=".$row['case_id'].")";
                                    $user_result = mysqli_query($conn, $user_query);
                                    $user_row = mysqli_fetch_assoc($user_result);
                                    echo '<li class="list-group-item list-group-item-success">' .$user_row['name']. '<br>';
                                    echo $row['history'].'<br>';
                            }
                        ?>
                    </div>
                </div>
                <div class="col-md-6">
                <h4>Add History</h4>
                <div class="list-group mt-2">
                    <form action="" method="post">
                        <div class="form-group">
                            <textarea class="form-control" rows="5" id="history" name="history">
                                </textarea>
                            <div class="col-md-3 mt-2 text-center mx-auto">
                                <a href="">
                                    <button class="btn btn-success " type="submit">Submit</button>
                                </a>
                                ######add history######
                                <?php
                                $history = "";
                                $history = $_POST['history'];
                                $sql="INSERT INTO history(history) VALUES ('$history')";
                                if ($conn->query($sql) === TRUE) {
                                    echo '<script type="text/javascript">
                                            window.location = "history.php"
                                            </script>';
                                } 
                                else {
                                    echo "Error: " . $sql . "<br>" . $conn->error;
                                    }
                                ?>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <footer class="footer px-5 py-5 ">
        <p class="float-right">
            <a href="">
                Back to top
            </a>
        </p>
        <p>
            2018-2019 Company, Inc.
            <a href="">Privacy</a>
            <a href="">Terms</a>
        </p>
    </footer>
</body>

</html>
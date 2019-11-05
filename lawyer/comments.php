<?php include 'connect.php' ?>
<?php
session_start();
if (!isset($_SESSION['lid']) || empty($_SESSION['lid'])) {
    echo '<script type="text/javascript">
    window.location = "login.php"
     </script>';
} else {
    $data = [];
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $case_id = $_POST['id'];
        $comment = $_POST['comment'];
        $csql = "INSERT INTO comments (case_id, user, comment) VALUES ('$case_id', '1', '$comment')";
        mysqli_query($conn, $csql);
        echo '<script type="text/javascript">
        window.location = "comments.php?id=', $case_id, '
        </script>';
    }
    if (isset($_GET['id'])) {
        $case_id = $_GET['id'];
        $sql = "SELECT * FROM comments WHERE case_id=" . $case_id;
        $result = mysqli_query($conn, $sql);
        while ($row = mysqli_fetch_assoc($result)) {
            $data[] = $row;
        }
    } else {
        echo '<script type="text/javascript">
        window.location = "cases.php"
        </script>';
    }
}
?>
<!DOCTYPE html>
<html>

<head>
    <title>Comments</title>
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
                <a class="nav-link" href="logout.php">SIGNOUT</a>
            </li>

        </ul>
    </nav>
    <div class="container-fluid">
        <div class="mt-5 mb-5 py-2 border border-primary rounded">
            <div class="row mx-1 mt-2 mb-2">
                <div class="col-md-6">
                    <div class="list-group">
                        <?php foreach ($data as $a) { ?>
                            <li class="list-group-item list-group-item-info mt-2">
                                <?php if ($a['user'] == 1) {
                                        echo "You";
                                    } else {
                                        echo "Client";
                                    } ?> Commented: <br>
                                <p><?php echo $a['comment']; ?></p>

                            </li>
                        <?php } ?>
                    </div>
                </div>
                <div class="col-md-6">
                    <h4 class="mx-auto text-center">Add Comment</h4>
                    <div class="list-group mt-2">
                        <form action="" method="post">
                            <div class="form-group">
                                <label>Comment</label>
                                <textarea class="form-control" rows="5" id="comment" name="comment">
                                </textarea>
                                <input type="text" hidden name="case_id" value=<?php echo $case_id; ?> />
                                <div class="col-md-3 mt-2 text-center mx-auto">
                                    <a href="">
                                        <button class="btn btn-success " type="submit">Submit</button>
                                    </a>
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
                2019-2020 Company.<br>
                copyright @<i>findyourlawyer</i>
            </p>
        </footer>
</body>

</html>
<?php include 'connect.php' ?>
<?php
session_start();
if (!isset($_SESSION['uid']) || empty($_SESSION['uid'])) {
    echo '<script type="text/javascript">
                window.location = "index.php"
                 </script>';
} else {
    $uid = $_SESSION['uid'];
    $sql = "SELECT * FROM lawyer_details WHERE approved = 1";
    $result = mysqli_query($conn, $sql);
    $num_rows = mysqli_num_rows($result);
    while ($row = mysqli_fetch_assoc($result)) {
        $data[] = $row;
    }
}
?>
<!DOCTYPE html>
<html>

<head>
    <title>Lawyers</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/footer.css">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href=""><b>FYLAW</b></a>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="./home.php"><button class="btn btn-outline-warning">Home</button></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./cases.php"><button class="btn btn-outline-warning">Cases</button></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./courts.php"><button class="btn btn-outline-warning">Courts</button></a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="./logout.php"><button class="btn btn-danger">Sign out</button></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        <h2 class="mt-5">
            Lawyers & their Specialities
        </h2>
        <div class="mt-5 mb-5 py-2 case-form">
            <div class="row">

            </div>
            <div class="row mx-1">
                <div class="col-md-12">
                    <div class="list-group">
                        <table class="table table-striped">
                            <thead class="text-center">
                                <tr>
                                    <th>Name of the lawyer</th>
                                    <th>Speciality</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                if ($num_rows > 0) {
                                    foreach ($data as $a) { ?>
                                        <tr>
                                            <td><?php echo $a['name']; ?></td>
                                            <td class="text-center "><?php echo $a['speciality']; ?></td>
                                        </tr>
                                <?php }
                                } else {
                                    echo '<tr><span class="badge badge-pill badge-danger mt-5 mx-1">There are no lawyers to display</span></tr>';
                                } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php include '../footer.php'; ?>
</body>

</html>
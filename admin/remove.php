<?php include 'connect.php' ?>
<?php
session_start();
if (!isset($_SESSION['id'])) {
    echo '<script type="text/javascript">
                    window.location = "login.php"
                     </script>';
} else {
    if (isset($_GET['id'])) {
        $lawyer_id = $_GET['id'];
        $sql = "UPDATE lawyer_details SET approved = 0 WHERE lid='$lawyer_id'";
        if (mysqli_query($conn, $sql)) {
            echo '<script type="text/javascript">
            window.location = "lawyer.php"
             </script>';
        }
    } else {
        echo '<script type="text/javascript">
        window.location = "lawyer.php"
         </script>';
    }
}

?>
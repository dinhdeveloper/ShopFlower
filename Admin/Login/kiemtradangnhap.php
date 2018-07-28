<?php
    
    function check_login ()
    {
        if (strlen($_SESSION['Stendangnhap']) == 0) { // kiểm tra chiều dài của chuổi sesion
            $extra = "Login/index.php";
            //$_SESSION["Stendangnhap"] = "";
            header("Location: http://localhost/WebHoa/Admin/$extra");
            return 0;
        }
    }

?>
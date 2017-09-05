<?php

setcookie("foo", "bar");

?>
<html>

<body>
<?php

    echo "<h1>Host: ".gethostname()."</h1>";
    echo "<h2>".random_int(1000, 9999)."</h2>";
    echo (new DateTime())->format(DATE_ISO8601);

?>
</body>
</html>

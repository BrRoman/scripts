<?php
    // This script reads the last characters of a file.
    // Arg1 = Name of the file.
    // Arg2 = Number of characters to read from the end.

    $string = file_get_contents($argv[1]);
    echo(substr($string, -$argv[2]));
?>


<!DOCTYPE html>
<html lang="hu">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hóman Vajk Gábor</title>
</head>

<body>
    <?php
    $vezeteknev = array(
        "Nagy",
        "Szabó",
        "Kovács",
        "Hofi",
        "Kolompár"
    );

    $keresztnev = array(
        "Tibor",
        "Klára",
        "Tóbiás",
        "Géza",
        "József"
    );

    $szulev = array();

    for ($i=0; $i < count($vezeteknev) ; $i++) {
        $szulev[] = $szam = rand(1998, 2005);
        

    }

    echo "<table>";
    echo "<tr><th>Vezetéknév</th>", "<th>Keresztnév</th>", "<th>Születési év </th></tr>";
    for ($i = 0; $i < count($vezeteknev); $i++) {
        echo "<td>" . $vezeteknev[$i] . "</td>";
        echo"<td>" . $keresztnev[$i] ."</td>";
        echo"<td>" . $szulev[$i] ."</td>";
        echo  "</tr>";
    };
    ?>
</body>

</html>
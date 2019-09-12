<?php

    // setting up SQLITE databases
    $IMAGE_SELECTOR_DB_PATH  = isset($_ENV["IMAGE_SELECTOR_DB_PATH"])  ? $_ENV["IMAGE_SELECTOR_DB_PATH"]  : null;
    $IMAGE_SQUARES_DB_PATH   = isset($_ENV["IMAGE_SQUARES_DB_PATH"])   ? $_ENV["IMAGE_SQUARES_DB_PATH"]   : null;
    $DOCUMENT_HASHES_DB_PATH = 
        (isset($_ENV["DOCUMENT_HASHES_PATH"]) ? $_ENV["DOCUMENT_HASHES_PATH"] : null) .
        (isset($_ENV["DOCUMENT_HASHES_DB"]) ? $_ENV["DOCUMENT_HASHES_DB"] : null);
    $MANAGEMENT_DATA_DB_PATH = 
        (isset($_ENV["MANAGEMENT_DATA_PATH"]) ? $_ENV["MANAGEMENT_DATA_PATH"] : null) .
        (isset($_ENV["MANAGEMENT_DATA_DB"]) ? $_ENV["MANAGEMENT_DATA_DB"] : null);

    $d = [
        [ "path" => $IMAGE_SELECTOR_DB_PATH,  "sqlfile" => "./schemas/IMAGE_SELECTOR_DB_SCHEMA.sql"  ],
        [ "path" => $IMAGE_SQUARES_DB_PATH,   "sqlfile" => "./schemas/IMAGE_SQUARES_DB_SCHEMA.sql"   ],
        [ "path" => $DOCUMENT_HASHES_DB_PATH, "sqlfile" => "./schemas/DOCUMENT_HASHES_DB_SCHEMA.sql" ],
        [ "path" => $MANAGEMENT_DATA_DB_PATH, "sqlfile" => "./schemas/MANAGEMENT_DATA_DB_SCHEMA.sql" ],
    ];

    foreach ($d as $val)
    {
        echo sprintf("creating sqlite database %s\n",$val["path"]);
        $db = new SQLite3($val["path"], SQLITE3_OPEN_READWRITE | SQLITE3_OPEN_CREATE);
        $db->query(file_get_contents($val["sqlfile"]));
        $db->close();
        chmod($val["path"],0777);
    }

    // setting up MYSQL database
    $MYSQL_DB["host"] = isset($_ENV["MYSQL_HOST"]) ? $_ENV["MYSQL_HOST"] : null;
    $MYSQL_DB["user"] = isset($_ENV["MYSQL_USER"]) ? $_ENV["MYSQL_USER"] : null;
    $MYSQL_DB["pass"] = isset($_ENV["MYSQL_PASSWORD"]) ? $_ENV["MYSQL_PASSWORD"] : null;
    $MYSQL_DB["database"] = isset($_ENV["MYSQL_DATABASE"]) ? $_ENV["MYSQL_DATABASE"] : null;


    $connected = false;
    $cycles = 0;

    while (!$connected && $cycles < 60)
    {
        echo "waiting for mysql connection\n";
        $db = @new mysqli($MYSQL_DB["host"],$MYSQL_DB["user"],$MYSQL_DB["pass"]);
       
        if (!$db->connect_errno && $db->ping())
        {
            $connected=true;
            echo "mysql connected\n";
        }
        else
        {
            $cycles++;
            sleep(1);
        }
    }

    echo "creating mysql database\n";
    $db->query("CREATE DATABASE " . $MYSQL_DB["database"]);
    $db->select_db($MYSQL_DB["database"]); 

    foreach (explode(";",file_get_contents("./schemas/MYSQL_TABLES.sql")) as $val)
    {
        if (empty(trim($val)))
        {
            continue;
        }
        $db->query($val);
    }

    echo "bootstrap finished\n";

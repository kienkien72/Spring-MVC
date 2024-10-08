<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>User Detail ${id} </title>

            <!-- Latest compiled and minified CSS -->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

            <!-- Latest compiled JavaScript -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            <!-- <link rel="stylesheet" href="css/demo.css"> -->
        </head>

        <body>
            <div class="container mt-5">
                <div class="col-12 mx-auto">
                    <div class="d-flex justify-content-between align-items-center">
                        <h2>Table Detail Users ${id} </h2>
                    </div>
                    <hr>
                    <div class="card" style="width: 60%">
                        <div class="card-header">
                            User Info
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Id: ${kien.id} </li>
                            <li class="list-group-item">Email: ${kien.email} </li>
                            <li class="list-group-item">Password: ${kien.password} </li>
                            <li class="list-group-item">Fullname: ${kien.fullname} </li>
                            <li class="list-group-item">Address: ${kien.address} </li>
                            <li class="list-group-item">Phone: ${kien.phone} </li>
                        </ul>
                    </div>
                    <a href="/admin/user" class="btn btn-success mt-3">Back</a>

                </div>

            </div>
        </body>

        </html>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Update User </title>
                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <!-- <link rel="stylesheet" href="css/demo.css"> -->
            </head>

            <body>
                <div class="container mt-3">
                    <div class="row">
                        <div class="col-md-6 col-12 mx-auto">
                            <h2 class=" ms-3">Update User
                            </h2>
                            <hr>
                            <form:form class=" ms-3" method="post" action="/admin/user/update" modelAttribute="newUser">
                                <div class="mb-3" style="display: none;">
                                    <label class="form-label">Id</label>
                                    <form:input type="text" class="form-control" path="id" />
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Email</label>
                                    <!-- disabled="true": Không thể sửa đổi  -->
                                    <form:input type="email" class="form-control" path="email" disabled="true" />
                                </div>


                                <div class="mb-3">
                                    <label class="form-label">Phone number</label>
                                    <form:input type="number" class="form-control" path="phone" />
                                </div>
                                <div class="mb-3 ">
                                    <label class="form-label">Full name</label>
                                    <form:input type="text" class="form-control" path="fullname" />
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Address</label>
                                    <form:input type="text" class="form-control" path="address" />
                                </div>
                                <div class="mb-3 form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                </div>
                                <button type="submit" class="btn btn-warning">Save</button>
                            </form:form>
                        </div>
                    </div>
                </div>

            </body>

            </html>
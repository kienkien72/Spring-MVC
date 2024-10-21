<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <title>Create Product</title>
                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <!-- <link rel="stylesheet" href="css/demo.css"> -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

                <!-- Thêm ảnh vào file -->
                <script>
                    // Đảm bảo rằng mã JavaScript chỉ được thực thi khi toàn bộ tài liệu HTML đã được tải hoàn tất
                    $(document).ready(() => {
                        const avatarFile = $("#avatarFile");
                        // Lắng nghe sự kiện "change" trên input file (#avatarFile).
                        //  Khi người dùng chọn một tệp, sự kiện "change" sẽ kích hoạt
                        avatarFile.change(function (e) {
                            // Tạo một URL tạm thời cho file ảnh mà người dùng đã chọn từ e.target.files[0] 
                            // (file đầu tiên trong danh sách tệp).
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            // Gán URL tạm thời này vào thuộc tính src của thẻ img,
                            //  làm cho ảnh được chọn hiển thị trong phần preview
                            $("#avatarPreview").attr("src", imgURL);
                            // Thay đổi CSS của thẻ img từ display: none thành 
                            // display: block, giúp hình ảnh được hiển thị trên màn hình
                            $("#avatarPreview").css({ "display": "block" });
                        });
                    });
                </script>


            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Create New Product</h1>
                                <div>
                                    <div class="container mt-3">
                                        <div class="row">
                                            <div class="col-md-6 col-12 mx-auto">
                                                <h2 class=" ms-3">Create Product</h2>
                                                <hr>
                                                <form:form class="row" method="post" action="/admin/user/create"
                                                    modelAttribute="newProduct" enctype="multipart/form-data">
                                                    <div class="mb-3 col-12 col-md-6">
                                                        <label class="form-label">Name</label>
                                                        <form:input type="email" class="form-control" path="name" />
                                                    </div>
                                                    <div class="mb-3  col-12 col-md-6">
                                                        <label class="form-label">Price</label>
                                                        <form:input type="number" class="form-control" path="price" />
                                                    </div>

                                                    <div class="mb-3 col-12 ">
                                                        <label class="form-label">Detail description</label>
                                                        <form:input type="number" class="form-control"
                                                            path="detailDesc" />
                                                    </div>
                                                    <div class="mb-3 col-12 col-md-6">
                                                        <label class="form-label">Short description</label>
                                                        <form:input type="text" class="form-control" path="shortDesc" />
                                                    </div>
                                                    <div class="mb-3 col-12 col-md-6">
                                                        <label class="form-label">Quantity</label>
                                                        <form:input type="text" class="form-control" path="quantity" />
                                                    </div>

                                                    <div class="mb-3 col-12 col-md-6">
                                                        <label class="form-label">Factory</label>

                                                        <form:select class="form-select" path="factory">
                                                            <form:option value="ADMIN">Macbook</form:option>
                                                            <form:option value="USER">Window</form:option>
                                                            <form:option value="USER">Linus</form:option>
                                                            <form:option value="USER">Lenovo</form:option>
                                                        </form:select>

                                                    </div>
                                                    <div class="mb-3 col-12 col-md-6">
                                                        <label class="form-label">Target</label>

                                                        <form:select class="form-select" path="target">
                                                            <form:option value="ADMIN">Gaming</form:option>
                                                            <form:option value="USER">Coding</form:option>
                                                        </form:select>

                                                    </div>
                                                    <div class="mb-3 col-12 col-md-6 ">
                                                        <label for="formFile" class="form-label">Image</label>
                                                        <input class="form-control" type="file"
                                                            accept=".png,.jpg, .jpeg" name="fileImage">
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <!-- Ban đầu chưa có ảnh thì ảnh ko hiển thị -->
                                                        <img style="max-height: 250px ; display: none;"
                                                            alt="avatar preview" id="avatarPreview">
                                                    </div>

                                                    <div class="col-12 mb-5">
                                                        <button type="submit" class="btn btn-primary">Create</button>
                                                    </div>
                                                </form:form>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="js/scripts.js"></script>
            </body>


            </html>
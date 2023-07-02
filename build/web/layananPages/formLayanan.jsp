<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../layouts/head_link.jsp"%>
    </head>
    <body class="hold-transition sidebar-mini layout-fixed">
        <div class="wrapper">
            <!-- Preloader -->
            <div class="preloader flex-column justify-content-center align-items-center">
                <div class="spinner-border text-primary" role="status" style="width: 3rem; height: 3rem;">
                    <span class="visually-hidden"></span>
                </div>
            </div>

            <!-- Navbar-->
            <nav class="main-header navbar navbar-expand navbar-white navbar-light">
                <!-- Left navbar links -->
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                    </li>
                    <li class="nav-item ms-3">
                        <h3 class="text-warning"><span class="text-primary">Pet Care</span> Salatiga</h3>
                    </li>
                </ul>

                <!-- Right navbar links -->
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                            <i class="fas fa-expand-arrows-alt"></i>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- /.navbar -->

            <!-- Main Sidebar Container -->
            <aside class="main-sidebar sidebar-dark-primary elevation-4">
                <!-- Sidebar -->
                <div class="sidebar">
                    <!-- Sidebar user panel (optional) -->
                    <div class="user-panel mt-3 pb-4 pt-4 mb-3 d-flex">
                        <div class="image">
                            <!-- <img src="assets/template_admin/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">-->
                            <i class="nav-icon fas fa-user-circle text-white" style="font-size: 2em;"></i>
                        </div>
                        <div class="info">
                            <h5 class="d-block text-white">Admin</h5>
                        </div>
                    </div>

                    <!-- Sidebar Menu -->
                    <nav class="mt-3">
                        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                            <li class="nav-item">
                                <a href="../index.jsp" class="nav-link">
                                    <i class="nav-icon fas fa-tachometer-alt"></i>
                                    <p>
                                        Dashboard
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link
                                   <% if (request.getParameter("action").toString().equalsIgnoreCase("insert")) { %> 
                                   active
                                   <%  }%> ">
                                    <i class="nav-icon fas fa-plus"></i>
                                    <p>
                                        Tambah Data
                                        <i class="fas fa-angle-left right"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
<!--                                        <a href="../customerPages/addCustomer.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Customer</p>
                                        </a>-->
                                        
                                         <form action="../customerPages/formCustomer.jsp?a=x" method="post">
                                            <input type="hidden" name="action" value="insert"/>
                                            <input type="hidden" name="insert-menu" value="customer"/>
                                            <button type="submit" class="nav-link text-start 
                                                    <% if (request.getParameter("action").toString().equalsIgnoreCase("insert") && request.getParameter("insert-menu").toString().equalsIgnoreCase("customer")) { %>
                                                    active disabled
                                                    <%  }%> ">
                                                <i class="far fa-circle nav-icon"></i>
                                                <p>Customer</p>
                                            </button>
                                        </form>
                                    </li>
                                    <li class="nav-item">
<!--                                        <a href="../produkPages/addProduk.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Produk</p>
                                        </a>-->

                                         <form action="../produkPages/formProduk.jsp?a=x" method="post">
                                            <input type="hidden" name="action" value="insert"/>
                                            <input type="hidden" name="insert-menu" value="produk"/>
                                            <button type="submit" class="nav-link text-start 
                                                    <% if (request.getParameter("action").toString().equalsIgnoreCase("insert") && request.getParameter("insert-menu").toString().equalsIgnoreCase("produk")) { %>
                                                    active disabled
                                                    <%  }%> ">
                                                <i class="far fa-circle nav-icon"></i>
                                                <p>Produk</p>
                                            </button>
                                        </form>
                                    </li>
                                    <li class="nav-item">
<!--                                        <a href="addLayanan.jsp" class="nav-link active disabled">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Layanan</p>
                                        </a>-->

                                         <form action="formLayanan.jsp?a=x" method="post">
                                            <input type="hidden" name="action" value="insert"/>
                                            <input type="hidden" name="insert-menu" value="layanan"/>
                                            <button type="submit" class="nav-link text-start 
                                                    <% if (request.getParameter("action").toString().equalsIgnoreCase("insert") && request.getParameter("insert-menu").toString().equalsIgnoreCase("layanan")) { %>
                                                    active disabled
                                                    <%  }%> ">
                                                <i class="far fa-circle nav-icon"></i>
                                                <p>Layanan</p>
                                            </button>
                                        </form>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link
                                   <% if (request.getParameter("action").toString().equalsIgnoreCase("edit")) { %>
                                   active
                                   <%  }%> ">
                                    <i class="nav-icon fas fa-table"></i>
                                    <p>
                                        Lihat Data
                                        <i class="fas fa-angle-left right"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
                                        <a href="../customerPages/dataCustomer.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Customer</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="../produkPages/dataProduk.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Produk</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="dataLayanan.jsp" class="nav-link
                                           <% if (request.getParameter("action").toString().equalsIgnoreCase("edit") && request.getParameter("edit-menu").toString().equalsIgnoreCase("layanan")) { %>
                                           active disabled
                                           <%  }%> ">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Layanan</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item mt-5">
                                <a href="#" class="nav-link bg-danger text-center">
                                    <i class="nav-icon fas fa-sign-out-alt"></i>
                                    <p>Keluar</p>
                                </a>
                            </li>
                        </ul>
                    </nav>
                    <!-- /.sidebar-menu -->
                </div>
                <!-- /.sidebar -->
            </aside>

        </div>


        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper pt-3">
            <!-- Main content -->
            <section class="content ps-4">
                <h2 class="border-primary border-bottom border-2 pb-4">
                        <% if (request.getParameter("a").equalsIgnoreCase("u")) { %>
                            Edit Data Layanan
                        <%} else if (request.getParameter("a").equalsIgnoreCase("d")) { %>
                            Hapus Data Layanan
                        <% }  else  { %>
                            Tambah Data Layanan
                        <% }%>  
                </h2>
                <div class="w-50">
                        <% if (request.getParameter("a").equalsIgnoreCase("u")) { %>
                            <form class="mt-3" action="../ServletUpdateLayanan" method="POST">
                        <%} else if (request.getParameter("a").equalsIgnoreCase("d")) { %>
                            <form class="mt-3" action="../ServletDeleteLayanan" method="POST">
                        <% }  else  { %>
                            <form class="mt-3" action="../ServletInsertLayanan" method="POST">
                        <% }%>
                    
<!--                        <input type="hidden" name="action" value="insert"/>-->
                        <div class="mb-3">
                            <label for="id" class="form-label">ID Layanan :</label>
                            <input type="text" class="form-control" id="id" name="id" placeholder="ID Layanan" required>
                        </div>
                        
                        <div class="mb-3">
                            <label for="nama" class="form-label">Nama Layanan :</label>
                            <input type="text" class="form-control" id="nama" name="nama" placeholder="Nama Layanan">
                        </div>

                        <div class="mb-3">
                            <label for="harga" class="form-label">Harga :</label>
                            <input type="number" class="form-control" id="harga" name="harga" placeholder="Harga Layanan">
                        </div>
                        
                        <% if (request.getParameter("a").equalsIgnoreCase("u")) { %>
                            <button type="submit" class="btn btn-primary mb-5 col-lg-3">Edit</button>
                        <%} else if (request.getParameter("a").equalsIgnoreCase("d")) { %>
                            <button type="submit" class="btn btn-danger mb-5 col-lg-3">Hapus</button>
                        <% }  else  { %>
                            <button type="submit" class="btn btn-primary mb-5 col-lg-3">Tambah</button>
                        <% }%>
                        
                    </form>

                </div><!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
        <%@include file="../layouts/script.jsp" %>
    </body>
</html>

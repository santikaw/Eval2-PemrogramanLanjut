<%@page import="pojo.Customer"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactoryBuilder"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.io.Resources"%>
<%@page import="java.io.Reader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin | Lihat Data Customer</title>
        <%@include file="../layouts/head_link.jsp" %>
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
                                <a href="#" class="nav-link">
                                    <i class="nav-icon fas fa-plus"></i>
                                    <p>
                                        Tambah Data
                                        <i class="fas fa-angle-left right"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
<!--                                        <a href="addCustomer.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Customer</p>
                                        </a>-->

                                        <form action="formCustomer.jsp?a=x" method="post">
                                            <input type="hidden" name="action" value="insert"/>
                                            <input type="hidden" name="insert-menu" value="customer"/>
                                            <button type="submit" class="nav-link text-start">
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
                                            <button type="submit" class="nav-link text-start">
                                                <i class="far fa-circle nav-icon"></i>
                                                <p>Produk</p>
                                            </button>
                                        </form>
                                    </li>
                                    <li class="nav-item">
<!--                                        <a href="../layananPages/addLayanan.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Layanan</p>
                                        </a>-->
                                        
                                        <form action="../layananPages/formLayanan.jsp?a=x" method="post">
                                            <input type="hidden" name="action" value="insert"/>
                                            <input type="hidden" name="insert-menu" value="layanan"/>
                                            <button type="submit" class="nav-link text-start">
                                                <i class="far fa-circle nav-icon"></i>
                                                <p>Layanan</p>
                                            </button>
                                        </form>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link active">
                                    <i class="nav-icon fas fa-table"></i>
                                    <p>
                                        Lihat Data
                                        <i class="fas fa-angle-left right"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
                                        <a href="dataCustomer.jsp" class="nav-link active disabled">
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
                                        <a href="../layananPages/dataLayanan.jsp" class="nav-link">
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
            <section class="content">
                <div class="container-fluid">
                    <h2 class="border-primary border-bottom border-2 pb-4">Data Customer</h2>
                    <table class="table mt-5 border">
                        <tr>
                            <th>No.</th>
                            <th>Nama Hewan</th>
                            <th>Jenis Hewan</th>
                            <th>Ras Hewan</th>
                            <th>Nama Pemilik</th>
                            <th>No. Telepon</th>
                            <th style="width: 15%;">Aksi</th>
                        </tr>
                            <%
                                Reader reader = Resources.getResourceAsReader("mybatis/mybatis_config.xml");
                                SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
                                SqlSession sqlSession = sqlSessionFactory.openSession();
                                List<Customer> customers = sqlSession.selectList("Customer.getAll");
                                for (Customer st : customers) { %>
                                <tr>
                                    <td> <% out.println(st.getId()); %> </td>
                                    <td> <% out.println(st.getNama()); %> </td>
                                    <td> <% out.println(st.getJenis()); %> </td>
                                    <td> <% out.println(st.getRas()); %> </td>
                                    <td> <% out.println(st.getPemilik()); %> </td>
                                    <td> <% out.println(st.getTelepon()); %> </td>        
                                    <td> 
                                        <form action="formCustomer.jsp?a=u" method="post" class="col-6 float-start">
        <!--                                    <input type='hidden' name='nim' value='"+i+"'/>-->
                                            <input type='hidden' name='action' value='edit'/>
                                            <input type='hidden' name='edit-menu' value='customer'/>
                                            <button type="submit" class="btn btn-primary"><i class="fas fa-edit fs-6 text-white"></i></button>
                                        </form>

                                        <form action="formCustomer.jsp?a=d" method="post" class="col-6 float-end">
                                            <input type='hidden' name='nim' value='"+i+"'/>
                                            <input type='hidden' name='action' value='delete'/>
                                            <button type="submit" class="btn btn-danger" onclick="return confirm('Apakah anda yakin untuk menghapus data ini?')"><i class="fas fa-trash fs-6 text-white"></i></button>
                                        </form>
                                    </td>
                                <% }
                                sqlSession.commit();
                                sqlSession.close();
                            %>
                                </tr>
                    </table>
                </div><!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
        <%@include file="../layouts/script.jsp" %>
    </body>
</html>

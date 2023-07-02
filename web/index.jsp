<%--<%@page import="pojo.User"%>--%>
<%@page import="pojo.Customer"%>
<%@page import="pojo.Layanan"%>
<%@page import="pojo.Produk"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactoryBuilder"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.io.Resources"%>
<%@page import="java.io.Reader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MyBatis</title>
    </head>
    <body>
        <h1>MyBatis</h1>
         <a href="data_user.jsp?a=x">Data User</a>&nbsp;|&nbsp;
         <a href="data_customer.jsp?a=x">Data Customer</a>&nbsp;|&nbsp;
         <a href="data_layanan.jsp?a=x">Data Layanan</a>&nbsp;|&nbsp;
         <a href="data_produk.jsp?a=x">Data Produk</a>&nbsp;|&nbsp;
    </body>
</html>-->

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin | Dashboard</title>
        <%@include file="layouts/head_link_index.jsp" %>
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
                                <a href="#" class="nav-link active disabled">
                                    <i class="nav-icon fas fa-tachometer-alt"></i>
                                    <p>
                                        Dashboard
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="nav-icon fas fa-edit"></i>
                                    <p>
                                        Tambah Data
                                        <i class="fas fa-angle-left right"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
<!--                                        <a href="customerPages/addCustomer.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Customer</p>
                                        </a>-->
                                        <form action="customerPages/formCustomer.jsp?a=x" method="post">
                                            <input type="hidden" name="action" value="insert"/>
                                            <input type="hidden" name="insert-menu" value="customer"/>
                                            <button type="submit" class="nav-link text-start">
                                                <i class="far fa-circle nav-icon"></i>
                                                <p>Customer</p>
                                            </button>
                                        </form>
                                    </li>
                                    <li class="nav-item">
<!--                                        <a href="produkPages/addProduk.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Produk</p>
                                        </a>-->
                                        
                                        <form action="produkPages/formProduk.jsp?a=x" method="post">
                                            <input type="hidden" name="action" value="insert"/>
                                            <input type="hidden" name="insert-menu" value="produk"/>
                                            <button type="submit" class="nav-link text-start">
                                                <i class="far fa-circle nav-icon"></i>
                                                <p>Produk</p>
                                            </button>
                                        </form>
                                    </li>
                                    <li class="nav-item">
<!--                                        <a href="layananPages/addLayanan.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Layanan</p>
                                        </a>-->
                                        
                                        <form action="layananPages/formLayanan.jsp?a=x" method="post">
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
                                <a href="" class="nav-link">
                                    <i class="nav-icon fas fa-table"></i>
                                    <p>
                                        Lihat Data
                                        <i class="fas fa-angle-left right"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
                                        <a href="customerPages/dataCustomer.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Customer</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="produkPages/dataProduk.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Produk</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="layananPages/dataLayanan.jsp" class="nav-link">
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
                <h2 class="mt-3 mb-5">Selamat datang Admin</h2>
                <div class="container-fluid row">
                    <div class="col-md-3 col-sm-6 col-12">
                        <div class="info-box">
                            <span class="info-box-icon bg-info"><i class="far fa-envelope"></i></span>

                            <div class="info-box-content">
                                <span class="info-box-text">Customer</span>
                                <span class="info-box-number">300</span>
                            </div>
                            <!-- /.info-box-content -->
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-6 col-12">
                        <div class="info-box">
                            <span class="info-box-icon bg-danger"><i class="far fa-star"></i></span>

                            <div class="info-box-content">
                                <span class="info-box-text">Produk</span>
                                <span class="info-box-number">9,139</span>
                            </div>
                            <!-- /.info-box-content -->
                        </div>
                        <!-- /.info-box -->
                    </div>

                    <div class="col-md-3 col-sm-6 col-12">
                        <div class="info-box">
                            <span class="info-box-icon bg-warning"><i class="far fa-copy"></i></span>

                            <div class="info-box-content">
                                <span class="info-box-text">Layanan</span>
                                <span class="info-box-number">49</span>
                            </div>
                            <!-- /.info-box-content -->
                        </div>
                        <!-- /.info-box -->
                    </div>              

                </div><!-- /.container-fluid -->


                <div class="card mt-4">
                    <div class="card-header">
                        <h3 class="card-title">
                            <i class="fas fa-chart-pie mr-1"></i>
                            Data Highlight
                        </h3>
                        <div class="card-tools">
                            <ul class="nav nav-pills ml-auto">
                                <li class="nav-item">
                                    <a class="nav-link active text-biru" href="#customer-data" data-toggle="tab">Customer</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-biru" href="#produk-data" data-toggle="tab">Produk</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-biru" href="#layanan-data" data-toggle="tab">Layanan</a>
                                </li>
                            </ul>
                        </div>
                    </div><!-- /.card-header -->
                    <div class="card-body">
                        <div class="tab-content p-0">
                            <div class="chart tab-pane active" id="customer-data" style="position: relative;">
                                <a href="#" class="btn btn-secondary mb-3" id="customer-data">Lihat Semua</a>
                                <table class="table" id="customer-data">
                                    <tr>
                                        <th>No.</th>
                                        <th>Nama Hewan</th>
                                        <th>Jenis Hewan</th>
                                        <th>Ras Hewan</th>
                                        <th>Nama Pemilik</th>
                                        <th>No. Telepon</th>
                                    </tr>
                                    <%
                                        Reader reader = Resources.getResourceAsReader("mybatis/mybatis_config.xml");
                                        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
                                        SqlSession sqlSession = sqlSessionFactory.openSession();
                                        List<Customer> customers = sqlSession.selectList("Customer.getAll");
                                        int i = 1;
                                        for (Customer st : customers) { %>
                                        <tr>
                                            <td> <% out.println(st.getId()); %> </td>
                                            <td> <% out.println(st.getNama()); %> </td>
                                            <td> <% out.println(st.getJenis()); %> </td>
                                            <td> <% out.println(st.getRas()); %> </td>
                                            <td> <% out.println(st.getPemilik()); %> </td>
                                            <td> <% out.println(st.getTelepon()); %> </td>        
                                        <% i++;
                                            if (i > 3) {
                                            break;
                                            }
                                         } %>
                                    
                                </tr>
                                </table>
                            </div>

                            <div class="chart tab-pane" id="layanan-data" style="position: relative;">
                                <a href="#" class="btn btn-secondary mb-3" id="layanan-data">Lihat Semua</a>
                                <table class="table" id="layanan-data">
                                    <tr>
                                        <th>No.</th>
                                        <th>Nama Layanan</th>
                                        <th>Harga</th>
                                    </tr>
                                   <%
                                    List<Layanan> layanans = sqlSession.selectList("Layanan.getAll");
                                    int j = 1;
                                    for (Layanan st : layanans) { %>
                                    <tr>
                                        <td> <% out.println(st.getId()); %> </td>
                                        <td> <% out.println(st.getName()); %> </td>
                                        <td> <% out.println(st.getHarga()); %> </td>
                                   <% j++;
                                        if (j > 3) {
                                        break;
                                        }
                                    } %>  
                                    </tr>                                        
                                </table>
                            </div>

                            <div class="chart tab-pane" id="produk-data" style="position: relative;">
                                <a href="#" class="btn btn-secondary mb-3" id="produk-data">Lihat Semua</a>
                                <table class="table" id="produk-data">
                                    <tr>
                                        <th>No.</th>
                                        <th>Nama Produk</th>
                                        <th>Harga</th>
                                        <th>Stok</th>
                                    </tr>
                                    <%
                                    List<Produk> produks = sqlSession.selectList("Produk.getAll");
                                    int k = 1;
                                    for (Produk st : produks) { %>
                                    <tr>
                                        
                                        <td> <% out.println(st.getId()); %> </td>
                                        <td> <% out.println(st.getNama()); %> </td>
                                        <td> <% out.println(st.getHarga()); %> </td>
                                        <td> <% out.println(st.getStok()); %> </td>
                                    <% k++;
                                        if (k > 3) {
                                        break;
                                        }
                                    }
                                    
                                    sqlSession.commit();
                                    sqlSession.close();
                                    %>
                                    </tr>
                                        
                                </table>
                            </div>
                        </div>

                    </div><!-- /.card-body -->
                </div>
                <!-- /.card -->
                
                <div class="card p-3 ps-5 border-primary">
                    <h3 class="mb-3" id="kelompok">Nama Anggota Kelompok</h3>
                    <p>1. Daniel Richardo &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp- 672020083</p>
                    <p>2. Santika Widyaningtyas - 672020155</p>
                    <p>3. Randy Petra Kamaz &nbsp &nbsp &nbsp - 672020163</p>
                </div>

            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

        <%@include file="layouts/script_index.jsp" %>
    </body>
</html>

<!-- Navbar -->
<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
            <a href="index3.html" class="nav-link">Home</a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
            <a href="#" class="nav-link">Contact</a>
        </li>
    </ul>
</nav>
<!-- /.navbar -->

<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index.jsp" class="brand-link">
        <img src="Resources/images/df.png" alt="AdminLTE Logo" class="brand-image" style="opacity: .8">
        <span class="brand-text font-weight-light">SGR</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="Resources/images/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">${usuario.login}</a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
          
                <li class="nav-header">Menus</li>

                <li class="nav-item">
                    <a href="" class="nav-link">
                        <i class="nav-icon fa fa-bars"></i>
                        <p>
                            Menus
                        </p>
                    </a>
                </li>
                
                <li class="nav-item">
                    <a href="listarperfis" class="nav-link">
                        <i class="nav-icon far fa-user"></i>
                        <p>
                            Perfis
                        </p>
                    </a>
                </li>
                
                <li class="nav-item">
                    <a href="listarusuarios" class="nav-link">
                        <i class="nav-icon far fa-address-card"></i>
                        <p>
                            Usuários
                        </p>
                    </a>
                </li>
                
                <li class="nav-item">
                    <a href="listarempregados" class="nav-link">
                        <i class="nav-icon far fa-calendar-alt"></i>
                        <p>
                            Empregados
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="listarenderecos" class="nav-link">
                        <i class="nav-icon far fa-calendar-alt"></i>
                        <p>
                            Endereços
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="listarexperiencias" class="nav-link">
                        <i class="nav-icon far fa-calendar-alt"></i>
                        <p>
                            Experiências
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="listarformacoes" class="nav-link">
                        <i class="nav-icon far fa-calendar-alt"></i>
                        <p>
                            Formações
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="listartelefones" class="nav-link">
                        <i class="nav-icon far fa-calendar-alt"></i>
                        <p>
                            Telefones
                        </p>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
<%-- 
    Document   : menu
    Created on : 13/06/2018, 11:36:07 AM
    Author     : jvegag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav class="navbar navbar-toggleable-md navbar-inverse bg-inverse nav">
    <button aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler navbar-toggler-right" data-target="#navbarNavDropdown" data-toggle="collapse" type="button">
        <span class="navbar-toggler-icon">
        </span>
    </button>
    <a class="navbar-brand" href="inicio.htm">
        <img src="src-rg/img/logo_rokagym.jpg" class="rounded mx-auto d-block" alt="..." style="width: 40px;">
    </a>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="inicio.htm?page=membresia_lista&titulo=membresia" id="cate">
                    Membresias
                </a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="inicio.htm?page=producto_lista&titulo=producto">
                    Producto
                </a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="inicio.htm?page=cliente_lista&titulo=cliente">
                    Clientes
                </a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="inicio.htm?page=matricula_lista&titulo=matricula">
                    Matricula
                </a>
            </li>
            <!-- user -->
            <li class="nav-item dropdown navbar-toggler-right active">
                <a aria-expanded="false" aria-haspopup="true" class="nav-link dropdown-toggle animated bounceInDown" data-toggle="dropdown" href="config" id="navbarDropdownMenuLink">
                    <span class="usu">
                        <i class="fa fa-user">
                        </i>
                    </span>
                    Nombre de Usuario
                </a>
                <div aria-labelledby="navbarDropdownMenuLink" class="dropdown-menu">
                    <a class="dropdown-item" href="sesion">
                        <i class="fa fa-close">
                        </i>
                        Salir
                    </a>
                    <a class="dropdown-item" href="config">
                        <i class="fa fa-gear">
                        </i>
                        Configuración
                    </a>
                </div>
            </li>
        </ul>
    </div>
</nav>

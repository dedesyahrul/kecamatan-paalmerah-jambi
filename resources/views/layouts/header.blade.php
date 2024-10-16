<header id="topnav" class="defaultscroll sticky">
    <div class="container">
        <!-- Logo container-->
        <a class="logo" href="/">
            <span class="logo-light-mode">
                <img src="{{ asset('storage/' . $identitasWebsites->logo_dark) }}" class="l-dark" height="50"
                    alt="{{ $identitasWebsites->nama_website }}">
                <img src="{{ asset('storage/' . $identitasWebsites->logo_light) }}" class="l-light" height="50"
                    alt="{{ $identitasWebsites->nama_website }}">
            </span>
            <img src="{{ asset('storage/' . $identitasWebsites->logo_light) }}" height="50" class="logo-dark-mode"
                alt="{{ $identitasWebsites->nama_website }}">
        </a>

        <!-- End Logo container-->
        <div class="menu-extras">
            <div class="menu-item">
                <!-- Mobile menu toggle-->
                <a class="navbar-toggle" id="isToggle" onclick="toggleMenu()">
                    <div class="lines">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </a>
                <!-- End mobile menu toggle-->
            </div>
        </div>

        <div id="navigation">
            <!-- Navigation Menu-->
            @include('menu')

        </div><!--end navigation-->
    </div><!--end container-->
</header><!--end header-->

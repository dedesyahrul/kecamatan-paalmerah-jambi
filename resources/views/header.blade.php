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

<style>
    @media (max-width: 991px) {
        #navigation {
            display: none;
            position: fixed;
            top: 70px;
            left: 0;
            right: 0;
            bottom: 0;
            background: white;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            overflow-y: auto;
            z-index: 1000;
        }

        #navigation.show {
            display: block;
        }

    }
</style>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Handle submenu toggles
        var menuItems = document.querySelectorAll('#navigation ul li a');
        menuItems.forEach(function(item) {
            item.addEventListener('click', function(e) {
                if (this.nextElementSibling && this.nextElementSibling.tagName === 'UL') {
                    e.preventDefault();
                    this.nextElementSibling.style.display =
                        this.nextElementSibling.style.display === 'none' ? 'block' : 'none';
                    this.classList.toggle('open');
                }
            });
        });
    });
</script>

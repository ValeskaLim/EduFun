<style>
    .navbar-brand.active {
        text-decoration: underline;
        color: blue;
    }
</style>

<nav class="navbar navbar-light shadow p-3 bg-body rounded mb-0">
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRktX6nTxzKjKFyxezMcL87x4w6ZtxYkbyt5g&s" width="70px" height="70px">

    <div class="d-flex justify-content-end gap-3 me-3">
        <a class="navbar-brand {{ Request::is('/') ? 'active' : '' }}" href="/">Home</a>
        <div class="dropdown">
            <a class="navbar-brand dropdown-toggle p-0 m-0 d-flex align-items-center {{ Request::is('category*') ? 'active' : '' }}" href="/" id="categoryDropdown" role="button" data-bs-toggle="dropdown" style="width: 100%; height: 100%">
                Category
            </a>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="{{ route('category.show', 1) }}">Software Engineering</a></li>
                <li><a class="dropdown-item" href="{{ route('category.show', 2) }}">Interactive Multimedia</a></li>
            </ul>
        </div>
        <a class="navbar-brand {{ Request::is('writers*') ? 'active' : '' }}" href="/writers">Writers</a>
        <a class="navbar-brand {{ Request::is('about-us') ? 'active' : '' }}" href="/about-us">About Us</a>
        <a class="navbar-brand {{ Request::is('popular') ? 'active' : '' }}" href="/popular">Popular</a>
    </div>
</nav>
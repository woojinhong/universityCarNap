<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<c:set var="loginId" value="${pageContext.request.getSession(false)==null ? '' : pageContext.request.session.getAttribute('email')}"/>
<c:set var="loginOutLink" value="${loginId=='' ? '/login/login' : '/login/logout'}"/>
<c:set var="loginOut" value="${loginId=='' ? 'Login' : 'Logout'}"/>
<!DOCTYPE html>

<!--
// WEBSITE: https://themefisher.com
// TWITTER: https://twitter.com/themefisher
// FACEBOOK: https://www.facebook.com/themefisher
// GITHUB: https://github.com/themefisher/
-->

<html lang="en">
<head>

    <!-- ** Basic Page Needs ** -->
    <meta charset="utf-8">
    <title>Classimax | Classified Marketplace Template</title>

    <!-- ** Mobile Specific Metas ** -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Agency HTML Template">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
    <meta name="author" content="Themefisher">
    <meta name="generator" content="Themefisher Classified Marketplace Template v1.0">

    <link href="<c:url value='/images/favicon.png'/>" rel="shortcut icon">

    <!--
      Essential stylesheets
      =====================================-->
    <link href="<c:url value='/plugins/bootstrap/bootstrap.min.css'/>" rel="stylesheet">
    <link href="<c:url value='/plugins/bootstrap/bootstrap-slider.css'/>" rel="stylesheet">
    <link href="<c:url value='/plugins/font-awesome/css/font-awesome.min.css'/>" rel="stylesheet">
    <link href="<c:url value='/plugins/slick/slick.css'/>" rel="stylesheet">
    <link href="<c:url value='/plugins/slick/slick-theme.css'/>" rel="stylesheet">
    <link href="<c:url value='/plugins/jquery-nice-select/css/nice-select.css'/>" rel="stylesheet">
    <link href="<c:url value='/css/style.css'/>" rel="stylesheet">


</head>

<body class="body-wrapper">

<header>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <nav class="navbar navbar-expand-lg navbar-light navigation">
                    <a class="navbar-brand" href="index.html">
                        <img src="<c:url value='/images/logo.png'/>" alt="">
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto main-nav ">
                            <li class="nav-item @@home">
                                <a class="nav-link" href="index.html">Home</a>
                            </li>
                            <li class="nav-item dropdown dropdown-slide @@dashboard">
                                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#!">Dashboard<span><i class="fa fa-angle-down"></i></span>
                                </a>

                                <!-- Dropdown list -->
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item @@dashboardPage" href="dashboard.html">Dashboard</a></li>
                                    <li><a class="dropdown-item @@dashboardMyAds" href="dashboard-my-ads.html">Dashboard My Ads</a></li>
                                    <li><a class="dropdown-item @@dashboardFavouriteAds" href="dashboard-favourite-ads.html">Dashboard Favourite Ads</a></li>
                                    <li><a class="dropdown-item @@dashboardArchivedAds" href="dashboard-archived-ads.html">Dashboard Archived Ads</a></li>
                                    <li><a class="dropdown-item @@dashboardPendingAds" href="dashboard-pending-ads.html">Dashboard Pending Ads</a></li>

                                    <li class="dropdown dropdown-submenu dropright">
                                        <a class="dropdown-item dropdown-toggle" href="#!" id="dropdown0501" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sub Menu</a>

                                        <ul class="dropdown-menu" aria-labelledby="dropdown0501">
                                            <li><a class="dropdown-item" href="index.html">Submenu 01</a></li>
                                            <li><a class="dropdown-item" href="index.html">Submenu 02</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown dropdown-slide @@pages">
                                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Pages <span><i class="fa fa-angle-down"></i></span>
                                </a>
                                <!-- Dropdown list -->
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item @@about" href="about-us.html">About Us</a></li>
                                    <li><a class="dropdown-item @@contact" href="contact-us.html">Contact Us</a></li>
                                    <li><a class="dropdown-item @@profile" href="user-profile.html">User Profile</a></li>
                                    <li><a class="dropdown-item @@404" href="404.html">404 Page</a></li>
                                    <li><a class="dropdown-item @@package" href="package.html">Package</a></li>
                                    <li><a class="dropdown-item @@singlePage" href="single.html">Single Page</a></li>
                                    <li><a class="dropdown-item @@store" href="store.html">Store Single</a></li>
                                    <li><a class="dropdown-item @@blog" href="blog.html">Blog</a></li>
                                    <li><a class="dropdown-item @@singleBlog" href="single-blog.html">Blog Details</a></li>
                                    <li><a class="dropdown-item @@terms" href="terms-condition.html">Terms &amp; Conditions</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown dropdown-slide active">
                                <a class="nav-link dropdown-toggle" href="#!" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Listing <span><i class="fa fa-angle-down"></i></span>
                                </a>
                                <!-- Dropdown list -->
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item active" href="category.html">Ad-Gird View</a></li>
                                    <li><a class="dropdown-item @@listView" href="ad-list-view.html">Ad-List View</a></li>

                                    <li class="dropdown dropdown-submenu dropleft">
                                        <a class="dropdown-item dropdown-toggle" href="#!" id="dropdown0201" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sub Menu</a>

                                        <ul class="dropdown-menu" aria-labelledby="dropdown0201">
                                            <li><a class="dropdown-item" href="index.html">Submenu 01</a></li>
                                            <li><a class="dropdown-item" href="index.html">Submenu 02</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="navbar-nav ml-auto mt-10">
                            <li class="nav-item">
                                <a class="nav-link login-button" href="login.html">Login</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white add-button" href="ad-listing.html"><i class="fa fa-plus-circle"></i> Add Listing</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</header>
<section class="page-search">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <!-- Advance Search -->
                <div class="advance-search">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-12 col-md-6 align-content-center">
                                <form action="<c:url value='/search/option'/>">
                                    <div class="form-row">

                                        <div class="form-group col-lg-5 col-md-6">
                                            <select class="w-100 form-control my-2 my-lg-1" name="category">
                                                <option>Category</option>
                                                <option value="sedan">Sedan</option>
                                                <option value="convertible">Convertible</option>
                                                <option value="coupe">Coupe</option>
                                                <option value="hatchback">Hatchback</option>
                                                <option value="lorry">Lorry</option>
                                                <option value="mpv">Mpv</option>
                                                <option value="pickup">Pickup</option>
                                                <option value="suv">Suv</option>
                                                <option value="wagon">Wagon</option>
                                                <option value="commercial">Commercial</option>
                                            </select>
                                        </div>

                                        <div class="form-group col-lg-5 col-md-6">
                                            <select class="w-100 form-control mt-lg-1 mt-md-2" name="option">
                                                <option>Option</option>
                                                <option value="top">Top rated</option>
                                                <option value="lowest">Lowest Price</option>
                                                <option value="highest">Highest Price</option>
                                                <option value="date">Date Released</option>
                                            </select>
                                        </div>

                                        <div class="form-group col-xl-2 col-lg-3 col-md-6 justify-content-end">
                                            <button type="submit" class="btn btn-primary active w-100">Search Now</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="section-sm">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="search-result bg-gray">
                    <h2>Results For "Electronics"</h2>
                    <p>123 Results on 12 December, 2017</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-4">
                <div class="category-sidebar">
                    <div class="widget category-list">
                        <h4 class="widget-header">All Category</h4>
                        <ul class="category-list">
                            <li><a href="category.html">Laptops <span>93</span></a></li>
                            <li><a href="category.html">Iphone <span>233</span></a></li>
                            <li><a href="category.html">Microsoft  <span>183</span></a></li>
                            <li><a href="category.html">Monitors <span>343</span></a></li>
                        </ul>
                    </div>

                    <div class="widget category-list">
                        <h4 class="widget-header">Nearby</h4>
                        <ul class="category-list">
                            <li><a href="category.html">New York <span>93</span></a></li>
                            <li><a href="category.html">New Jersy <span>233</span></a></li>
                            <li><a href="category.html">Florida  <span>183</span></a></li>
                            <li><a href="category.html">California <span>120</span></a></li>
                            <li><a href="category.html">Texas <span>40</span></a></li>
                            <li><a href="category.html">Alaska <span>81</span></a></li>
                        </ul>
                    </div>

                    <div class="widget filter">
                        <h4 class="widget-header">Show Produts</h4>
                        <select>
                            <option>Popularity</option>
                            <option value="1">Top rated</option>
                            <option value="2">Lowest Price</option>
                            <option value="4">Highest Price</option>
                        </select>
                    </div>

                    <div class="widget price-range w-100">
                        <h4 class="widget-header">Price Range</h4>
                        <div class="block">
                            <input class="range-track w-100" type="text" data-slider-min="0" data-slider-max="5000" data-slider-step="5"
                                   data-slider-value="[0,5000]">
                            <div class="d-flex justify-content-between mt-2">
                                <span class="value">$10 - $5000</span>
                            </div>
                        </div>
                    </div>

                    <div class="widget product-shorting">
                        <h4 class="widget-header">By Condition</h4>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="">
                                Brand New
                            </label>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="">
                                Almost New
                            </label>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="">
                                Gently New
                            </label>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="">
                                Havely New
                            </label>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-lg-9 col-md-8">
                <div class="category-search-filter">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-left">
                            <strong>Short</strong>
                            <select>
                                <option>Most Recent</option>
                                <option value="1">Most Popular</option>
                                <option value="2">Lowest Price</option>
                                <option value="4">Highest Price</option>
                            </select>
                        </div>
                        <div class="col-md-6 text-center text-md-right mt-2 mt-md-0">
                            <div class="view">
                                <strong>Views</strong>
                                <ul class="list-inline view-switcher">
                                    <li class="list-inline-item">
                                        <a href="#!" onclick="event.preventDefault();" class="text-info"><i class="fa fa-th-large"></i></a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a href="ad-list-view.html"><i class="fa fa-reorder"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-grid-list">
                    <div class="row mt-30">
                        <div class="container">

                            <div class="row">

                                <c:forEach var="i" begin="1" end="${size}">

                                <c:set var="searchDto" value="${options[i-1]}" /> <!-- searchDto 설정 -->

                                <!-- 나머지 코드 -->
                                <div class="col-lg-4 col-md-6">
                                    <!-- product card -->
                                    <div class="product-item bg-light">
                                        <div class="card">


                                            <div class="thumb-content">
                                                <a href="javascript:void(0);" onclick="sendSearchDtoData('${searchDto.name}'); submitHiddenForm('${searchDto.name}');">
                                                    <img class="card-img-top img-fluid" src="<c:url value='/images/products/${searchDto.name}.jpg'/>" alt="Card image cap">
                                                </a>
                                            </div>
                                            <form id="hiddenForm" action="<c:url value='/reserve/reserve'/>" method="post">
                                                <input type="hidden" name="searchDtoName" id="searchDtoNameInput" value="">
                                            </form>

<%--                                            <div class="thumb-content">--%>
<%--                                                <!-- <div class="price">$200</div> -->--%>

<%--                                                <a href="<c:url value='/reserve/reserve'/>">--%>

<%--                                                    <img class="card-img-top img-fluid" src="<c:url value='/images/products/${searchDto.name}.jpg'/>" alt="Card image cap">--%>
<%--                                                </a>--%>
<%--                                            </div>--%>
                                            <div class="card-body">
                                                <h4 class="card-title"><a href="single.html">${searchDto.name}</a></h4>
                                                <ul class="list-inline product-meta">
                                                    <li class="list-inline-item">
                                                        <a href="single.html"><i class="fa fa-folder-open-o"></i>${searchDto.categoryName}</a>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <a href="category.html"><i class="fa fa-calendar"></i>${searchDto.regDate}</a>
                                                    </li>
                                                </ul>
                                                <p class="card-text">${searchDto.description}</p>
                                                <div class="product-ratings">
                                                    <ul class="list-inline">
                                                        <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item selected"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>

                            </div>

                        </div>

                    </div>
                </div>
                <div class="pagination justify-content-center">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item">
                                <a class="page-link" href="category.html" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                    <span class="sr-only">Previous</span>
                                </a>
                            </li>
                            <li class="page-item"><a class="page-link" href="category.html">1</a></li>
                            <li class="page-item active"><a class="page-link" href="category.html">2</a></li>
                            <li class="page-item"><a class="page-link" href="category.html">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="category.html" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</section>
<!--============================
=            Footer            =
=============================-->

<footer class="footer section section-sm">
    <!-- Container Start -->
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-7 offset-md-1 offset-lg-0 mb-4 mb-lg-0">
                <!-- About -->
                <div class="block about">
                    <!-- footer logo -->
                    <img src="<c:url value='/images/logo-footer.png'/>" alt="logo">
                    <!-- description -->
                    <p class="alt-color">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                        laboris nisi ut aliquip ex ea commodo consequat.</p>
                </div>
            </div>
            <!-- Link list -->
            <div class="col-lg-2 offset-lg-1 col-md-3 col-6 mb-4 mb-lg-0">
                <div class="block">
                    <h4>Site Pages</h4>
                    <ul>
                        <li><a href="dashboard-my-ads.html">My Ads</a></li>
                        <li><a href="dashboard-favourite-ads.html">Favourite Ads</a></li>
                        <li><a href="dashboard-archived-ads.html">Archived Ads</a></li>
                        <li><a href="dashboard-pending-ads.html">Pending Ads</a></li>
                        <li><a href="terms-condition.html">Terms & Conditions</a></li>
                    </ul>
                </div>
            </div>
            <!-- Link list -->
            <div class="col-lg-2 col-md-3 offset-md-1 offset-lg-0 col-6 mb-4 mb-md-0">
                <div class="block">
                    <h4>Admin Pages</h4>
                    <ul>
                        <li><a href="category.html">Category</a></li>
                        <li><a href="single.html">Single Page</a></li>
                        <li><a href="store.html">Store Single</a></li>
                        <li><a href="single-blog.html">Single Post</a>
                        </li>
                        <li><a href="blog.html">Blog</a></li>



                    </ul>
                </div>
            </div>
            <!-- Promotion -->
            <div class="col-lg-4 col-md-7">
                <!-- App promotion -->
                <div class="block-2 app-promotion">
                    <div class="mobile d-flex  align-items-center">
                        <a href="index.html">
                            <!-- Icon -->
                            <img src="<c:url value='/images/footer/phone-icon.png'/>" alt="mobile-icon">
                        </a>
                        <p class="mb-0">Get the Dealsy Mobile App and Save more</p>
                    </div>
                    <div class="download-btn d-flex my-3">
                        <a href="index.html"><img src="images/apps/google-play-store.png" class="img-fluid" alt=""></a>
                        <a href="index.html" class=" ml-3"><img src="images/apps/apple-app-store.png" class="img-fluid" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Container End -->
</footer>
<!-- Footer Bottom -->
<footer class="footer-bottom">
    <!-- Container Start -->
    <div class="container">
        <div class="row">
            <div class="col-lg-6 text-center text-lg-left mb-3 mb-lg-0">
                <!-- Copyright -->
                <div class="copyright">
                    <p>Copyright &copy; <script>
                        var CurrentYear = new Date().getFullYear()
                        document.write(CurrentYear)
                    </script>. Designed & Developed by <a class="text-white" href="https://themefisher.com">Themefisher</a></p>
                </div>
            </div>
            <div class="col-lg-6">
                <!-- Social Icons -->
                <ul class="social-media-icons text-center text-lg-right">
                    <li><a class="fa fa-facebook" href="https://www.facebook.com/themefisher"></a></li>
                    <li><a class="fa fa-twitter" href="https://www.twitter.com/themefisher"></a></li>
                    <li><a class="fa fa-pinterest-p" href="https://www.pinterest.com/themefisher"></a></li>
                    <li><a class="fa fa-github-alt" href="https://www.github.com/themefisher"></a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Container End -->
    <!-- To Top -->
    <div class="scroll-top-to">
        <i class="fa fa-angle-up"></i>
    </div>
</footer>

<script src="<c:url value='/plugins/jquery/jquery.min.js'/>"></script>
<script src="<c:url value='/plugins/bootstrap/popper.min.js'/>"></script>
<script src="<c:url value='/plugins/bootstrap/bootstrap.min.js'/>"></script>
<script src="<c:url value='/plugins/bootstrap/bootstrap-slider.js'/>"></script>
<script src="<c:url value='/plugins/tether/js/tether.min.js'/>"></script>
<script src="<c:url value='/plugins/raty/jquery.raty-fa.js'/>"></script>
<script src="<c:url value='/plugins/slick/slick.min.js'/>"></script>
<script src="<c:url value='/plugins/jquery-nice-select/js/jquery.nice-select.min.js'/>"></script>
<!-- google map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU" defer></script>
<script src="<c:url value='/plugins/google-map/map.js'/>" defer></script>

<script src="<c:url value='/js/script.js'/>"></script>

<script>
    function sendSearchDtoData(searchDtoName) {
        var xhr = new XMLHttpRequest();
        var url = '<c:url value="/reserve/reserve"/>';
        var data = 'searchDtoName=' + searchDtoName;

        xhr.open('GET', url, true);
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

        xhr.onload = function() {
            if (xhr.status === 200) {
                // Handle the response from the server
                console.log(xhr.responseText);

                // Redirect to the reserve page after receiving the response

            }
        };

        xhr.send(data);
    }
</script>
<script>
    function submitHiddenForm(searchDtoName) {
        // 클릭 시 숨겨진 폼 필드에 데이터를 설정
        document.getElementById('searchDtoNameInput').value = searchDtoName;

        // 폼을 제출
        document.getElementById('hiddenForm').submit();
    }
</script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        var descriptionElements = document.querySelectorAll('.card-text');

        descriptionElements.forEach(function(descriptionElement) {
            var description = descriptionElement.textContent.trim();
            var maxLength = 60;

            // 텍스트가 지정된 길이보다 길면 제한하고 "..."을 추가
            if (description.length > maxLength) {
                var limitedText = description.substring(0, maxLength) + '...';
                descriptionElement.textContent = limitedText;
            }
        });
    });
</script>
</body>
</html>
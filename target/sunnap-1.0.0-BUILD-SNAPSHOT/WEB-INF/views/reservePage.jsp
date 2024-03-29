<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"%>

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

    <!-- favicon -->
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
                    <a class="navbar-brand" href="<c:url value='/'/>">
                        <img src="<c:url value='/images/sunway_logo.png'/>" alt="">
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto main-nav ">
                            <li class="nav-item @@home">
                                <a class="nav-link" href="<c:url value='/'/>">Home</a>
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
                            <li class="nav-item dropdown dropdown-slide active">
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
                                    <li><a class="dropdown-item active" href="single.html">Single Page</a></li>
                                    <li><a class="dropdown-item @@store" href="store.html">Store Single</a></li>
                                    <li><a class="dropdown-item @@blog" href="blog.html">Blog</a></li>
                                    <li><a class="dropdown-item @@singleBlog" href="single-blog.html">Blog Details</a></li>
                                    <li><a class="dropdown-item @@terms" href="terms-condition.html">Terms &amp; Conditions</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown dropdown-slide @@listing">
                                <a class="nav-link dropdown-toggle" href="#!" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Listing <span><i class="fa fa-angle-down"></i></span>
                                </a>
                                <!-- Dropdown list -->
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item @@category" href="category.html">Ad-Gird View</a></li>
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
                                <a class="nav-link login-button" href="<c:url value='${loginOutLink}'/>">${loginOut}</a>
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
<!--===================================
=            Store Section            =
====================================-->

<section class="section bg-gray">
    <!-- Container Start -->
    <div class="container">
        <c:forEach var="reserveDto" items="${reserveDesc}">

        <div class="row">
            <!-- Left sidebar -->

            <div class="col-lg-8">
                <div class="product-details">
                    <h1 class="product-title">BMW_3_SERIES In Low Price</h1>
                    <div class="product-meta">
                        <ul class="list-inline">
                            <li class="list-inline-item"><i class="fa fa-user-o"></i> By <a href="user-profile.html">Andrew</a></li>
                            <li class="list-inline-item"><i class="fa fa-folder-open-o"></i> Category<a href="category.html">${reserveDto.categoryName}</a></li>
                            <li class="list-inline-item"><i class="fa fa-location-arrow"></i> Location<a href="category.html">Sunway University Car Park</a></li>
                        </ul>
                    </div>

                    <!-- product slider -->
                    <div class="product-slider">
                        <div class="product-slider-item my-4" data-image="<c:url value='/images/products/${searchDtoName}.jpg'/>">
                            <img class="img-fluid w-100" src="<c:url value='/images/products/${searchDtoName}.jpg'/>" alt="product-img">
                        </div>
                        <div class="product-slider-item my-4" data-image="<c:url value='/images/products/${searchDtoName}1.jpg'/>">
                            <img class="d-block img-fluid w-100" src="<c:url value='/images/products/${searchDtoName}1.jpg'/>" alt="Second slide">
                        </div>
                        <div class="product-slider-item my-4" data-image="<c:url value='/images/products/${searchDtoName}2.jpg'/>">
                            <img class="d-block img-fluid w-100" src="<c:url value='/images/products/${searchDtoName}2.jpg'/>" alt="Third slide">
                        </div>
                        <div class="product-slider-item my-4" data-image="<c:url value='/images/products/Audi_A8.jpg'/>">
                            <img class="d-block img-fluid w-100" src="<c:url value='/images/products/Audi_A8.jpg'/>" alt="Third slide">
                        </div>
                        <div class="product-slider-item my-4" data-image="<c:url value='/images/products/Audi_A81.jpg'/>">
                            <img class="d-block img-fluid w-100" src="<c:url value='/images/products/Audi_A81.jpg'/>" alt="Third slide">
                        </div>
                    </div>
                    <!-- product slider -->

                    <div class="content mt-5 pt-5">
                        <ul class="nav nav-pills  justify-content-center" id="pills-tab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home"
                                   aria-selected="true">Product Details</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile"
                                   aria-selected="false">Specifications</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact"
                                   aria-selected="false">Reviews</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="pills-tabContent">
                            <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                                <h3 class="tab-title">Product Description</h3>
                                <p>${reserveDto.description}</p>

                                <iframe width="100%" height="400" src="https://www.youtube.com/embed/LUH7njvhydE?rel=0&amp;controls=0&amp;showinfo=0"
                                        frameborder="0" allowfullscreen></iframe>
                                <p></p>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam sed, officia reiciendis necessitatibus
                                    obcaecati eum, quaerat unde illo suscipit placeat nihil voluptatibus ipsa omnis repudiandae, excepturi! Id
                                    aperiam eius perferendis cupiditate exercitationem, mollitia numquam fuga, inventore quam eaque cumque fugiat,
                                    neque repudiandae dolore qui itaque iste asperiores ullam ut eum illum aliquam dignissimos similique! Aperiam
                                    aut temporibus optio nulla numquam molestias eum officia maiores aliquid laborum et officiis pariatur,
                                    delectus sapiente molestiae sit accusantium a libero, eligendi vero eius laboriosam minus. Nemo quibusdam
                                    nesciunt doloribus repellendus expedita necessitatibus velit vero?</p>

                            </div>
                            <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                                <h3 class="tab-title">Product Specifications</h3>
                                <table class="table table-bordered product-table">
                                    <tbody>
                                    <tr>
                                        <td>Model</td>
                                        <td>${reserveDto.name}</td>
                                    </tr>
                                    <tr>
                                        <td>Seller Price</td>
                                        <td>${reserveDto.price}</td>
                                    </tr>
                                    <tr>
                                        <td>Added</td>
                                        <td>${reserveDto.regDate}</td>
                                    </tr>
                                    <tr>
                                        <td>State</td>
                                        <td>${reserveDto.state}</td>
                                    </tr>
                                    <tr>
                                        <td>Condition</td>
                                        <td>Used</td>
                                    </tr>
                                    <tr>
                                        <td>Category</td>
                                        <td>${reserveDto.categoryName}</td>
                                    </tr>

                                    </tbody>
                                </table>
                            </div>
                            <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
                                <h3 class="tab-title">Product Review</h3>
                                <div class="product-review">
                                    <div class="media">
                                        <!-- Avater -->
                                        <img src="<c:url value='/images/user/user-thumb.jpg'/>" alt="avater">
                                        <div class="media-body">
                                            <!-- Ratings -->
                                            <div class="ratings">
                                                <ul class="list-inline" id="starRating">
                                                    <li class="list-inline-item">
                                                        <i class="fa fa-star" data-rating="1"></i>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <i class="fa fa-star" data-rating="2"></i>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <i class="fa fa-star" data-rating="3"></i>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <i class="fa fa-star" data-rating="4"></i>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <i class="fa fa-star" data-rating="5"></i>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="name">
                                                <h5>Jessica Brown</h5>
                                            </div>
                                            <div class="date">
                                                <p>Mar 20, 2018</p>
                                            </div>
                                            <div class="review-comment">
                                                <p>
                                                    Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremqe laudant tota rem ape
                                                    riamipsa eaque.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="review-submission">
                                        <h3 class="tab-title">Submit your review</h3>
                                        <!-- Rate -->
                                        <form action="<c:url value="/review/review"/>" method="POST" class="row">
                                            <div class="rate">
                                                <div class="starrr" data-rating-input="#starRatingInput"> </div>
                                                <span class="rating-label">0</span>
                                            </div>
                                            <input type="hidden" id="starRatingInput" name="starRating" value="" />
                                            <span class="rating-label">0</span>
                                            <br>
                                            <div class="review-submit">
                                                <div class="col-lg-6 mb-3">
                                                    <input type="text" name="name" id="name" class="form-control" placeholder="Name" required>
                                                </div>
                                                <div class="col-lg-6 mb-3">
                                                    <input type="email" name="email" id="email" class="form-control" placeholder="Email" required>
                                                </div>
                                                <div class="col-12 mb-3">
                                                    <textarea name="review" id="review" rows="6" class="form-control" placeholder="Message" required></textarea>
                                                </div>
                                                <div class="col-12">
                                                    <button type="submit" class="btn btn-main">Submit</button>
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
            <div class="col-lg-4">
                <div class="sidebar">
                    <div class="widget price text-center">
                        <h4>Price</h4>
                        <p>${reserveDto.price}</p>
                    </div>
                    <!-- User Profile widget -->
                    <div class="widget user text-center">
                        <img class="rounded-circle img-fluid mb-5 px-5" src="<c:url value='/images/user/user-thumb.jpg'/>" alt="">
                        <h4><a href="user-profile.html">Jonathon Andrew</a></h4>
                        <p class="member-time">Member Since Jun 27, 2017</p>
                        <a href="single.html">See all ads</a>
                        <ul class="list-inline mt-20">
                            <li class="list-inline-item"><a href="contact-us.html" class="btn btn-contact d-inline-block  btn-primary px-lg-5 my-1 px-md-3">Contact</a></li>
                            <li class="list-inline-item"><a href="single.html" class="btn btn-offer d-inline-block btn-primary ml-n1 my-1 px-lg-4 px-md-3">Make an
                                offer</a></li>
                        </ul>
                    </div>
                    <!-- Map Widget -->
                    <div class="widget map">
                        <div class="map">
                            <div id="map" data-latitude="51.507351" data-longitude="-0.127758"></div>
                        </div>
                    </div>
                    <!-- Rate Widget -->
                    <div class="widget rate">
                        <!-- Heading -->
                        <h5 class="widget-header text-center">What would you rate
                            <br>
                            this product</h5>
                        <!-- Rate -->
                        <div class="starrr"></div>
                    </div>
                    <!-- Safety tips widget -->
                    <div class="widget disclaimer">
                        <h5 class="widget-header">Safety Tips</h5>
                        <ul>
                            <li>Meet seller at a public place</li>
                            <li>Check the item before you buy</li>
                            <li>Pay only after collecting the item</li>
                            <li>Pay only after collecting the item</li>
                        </ul>
                    </div>
                    <!-- Coupon Widget -->
                    <div class="widget coupon text-center">
                        <!-- Coupon description -->
                        <p>Have a great product to post ? Share it with
                            your fellow users.
                        </p>
                        <!-- Submii button -->
                        <a href="single.html" class="btn btn-transparent-white">Submit Listing</a>
                    </div>

                </div>
            </div>

        </div>
        </c:forEach>
    </div>
    <!-- Container End -->
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

<!--
Essential Scripts
=====================================-->

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


</body>

</html>
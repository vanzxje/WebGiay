<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SanPhamChiTiet.aspx.cs" Inherits="Shop_Giay.SanPhamChiTiet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sản Phẩm Chi Tiết | FoodBoy</title>
    <script src="js/jquery-3.3.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css" />
    <link rel="stylesheet" href="./css/style.css" />
    <link rel="stylesheet" href="./css/product.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="app">
    <header id="header">
        <!-- header top -->
        <div class="header__top">
            <div class="container">
                <section class="row flex">
                    <div class="col-lg-5 col-md-0 col-sm-0 heade__top-left">
                        <span> </span>
                    </div>

                    <nav class="col-lg-7 col-md-0 col-sm-0 header__top-right">
                        <ul class="header__top-list">
                            <li class="header__top-item">
                                <a href="#" class="header__top-link">Đăng ký</a>
                            </li>
                            <li class="header__top-item">
                                <a href="DangNhap.aspx" class="header__top-link">Đăng nhập</a>
                            </li>
                        </ul>
                    </nav>
                </section>
            </div>
        </div>
        <!--end header top -->

        <!-- header bottom -->
        <div class="header__bottom">
            <div class="container">
                <section class="row">
                    <div class="col-lg-3 col-md-4 col-sm-12 header__logo">
                        <h1 class="header__heading">
                            <a href='<%="TrangChu.aspx"%>' class="header__logo-link">
                                <img src="images/logo3.png" alt="Logo" class="header__logo-img"/>
                            </a>
                        </h1>
                    </div>

                    <div class="col-lg-6 col-md-7 col-sm-0 header__search">
                        <input type="text" class="header__search-input" placeholder="Tìm kiếm tại đây..."/>
                        <button class="header__search-btn">
                            <div class="header__search-icon-wrap">
                                <i class="fas fa-search header__search-icon"></i>
                            </div>
                        </button>
                    </div>

                    <div class="col-lg-2 col-md-0 col-sm-0 header__call">
                        <div class="header__call-icon-wrap">
                            <i class="fas fa-phone-alt header__call-icon"></i>  
                        </div>
                        <div class="header__call-info">
                            <div class="header__call-text">Gọi điện tư vấn</div>
                            <div class="header__call-number">0981.908.197</div>
                        </div>
                    </div>

                    <a href="#" class="col-lg-1 col-md-1 col-sm-0 header__cart">
                        <div class="header__cart-icon-wrap">
                            <span class="header__notice">0</span>
                            <i class="fas fa-shopping-cart header__nav-cart-icon"></i>
                        </div>
                    </a>

                </section>
            </div>   
        </div>
        <!--end header bottom -->
    </header>
    </div>
<!-- score-top-->

<a href="#" id="myBtn-scroll" title="Lên đầu trang"><i class="fas fa-chevron-up"></i></a>

    <!-- product -->
    <section class="product">
        <div class="container">
            <div class="row bg-white pt-4 pb-4 border-bt pc">
                <article class="product__main col-lg-9 col-md-12 col-sm-12">
                    <div class="row">
                        <div class="product__main-img col-lg-4 col-md-4 col-sm-12">
                            <div class="product__main-img-primary">
                                <img src='<%="images/sanpham/"+sp.HinhSP%>'>
                            </div>
                        </div>

                        <div class="product__main-info col-lg-8 col-md-8 col-sm-12">
                            <div class="product__main-info-breadcrumb">
                                Trang chủ / Sản phẩm
                            </div>
                            
                            <a href="#" class="product__main-info-title">
                                <h2 class="product__main-info-heading">
                                    <%=sp.TenSP%>
                                </h2>
                            </a>

                            <div class="product__main-info-rate-wrap">
                                <span class="product__main-info-rate">5.0</span>
                                <i class="fas fa-star product__main-info-rate"></i>
                                <i class="fas fa-star product__main-info-rate"></i>
                                <i class="fas fa-star product__main-info-rate"></i>
                                <i class="fas fa-star product__main-info-rate"></i>
                                <i class="fas fa-star product__main-info-rate"></i>
                            </div>

                            <div class="product__main-info-price">
                                <span class="product__main-info-price-current">
                                   <%=sp.GiaSP%>&nbsp;₫
                                </span>
                            </div>

                            <div class="product__main-info-description">
                                 <%=sp.MoTa%>
                            </div> 

                            <div class="product__main-info-cart">
                                <%--<div class="product__main-info-cart-quantity">
                                    <input type="button" value="-"  class="product__main-info-cart-quantity-minus">
                                    <input type="number" step="1" min="1" max="999" value="1" class="product__main-info-cart-quantity-total">
                                    <input type="button" value="+" class="product__main-info-cart-quantity-plus">
                                </div>--%>
                                
                                <div class="product__main-info-cart-btn-wrap">
                                    <button class="product__main-info-cart-btn">
                                        Thêm vào giỏ hàng
                                    </button>
                                </div>
                            </div>

                            <div class="product__main-info-contact">
                                <a href="https://www.facebook.com/vanzxje" class="product__main-info-contact-fb">
                                    <i class="fab fa-facebook-f"></i>
                                    Chat Facebook
                                </a>
                                <div class="product__main-info-contact-phone-wrap">
                                    <div class="product__main-info-contact-phone-icon">
                                        <i class="fas fa-phone-alt "></i>
                                    </div>
                                    
                                    <div class="product__main-info-contact-phone">
                                        <div class="product__main-info-contact-phone-title">
                                            Gọi điện tư vấn
                                        </div>
                                        <div class="product__main-info-contact-phone-number">
                                            (0981.908.197)
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="row bg-white">
                        <div class="col-12 product__main-tab">
                            <a href="#" class="product__main-tab-link product__main-tab-link--active">
                                Thông tin chi tiết về sản phẩm
                            </a>
                            <a href="#" class="product__main-tab-link">
                                Đánh giá
                            </a>
                        </div>

                        <div class="col-12 product__main-content-wrap">
                            <h2 class="product__main-content-heading">
                                <%=sp.TenSP%>
                            </h2>
                            <p>
                                <%=sp.ChiTietSP%>
                            </p>
                            
                            <h2 class="thongtin">    <span>Thông tin chi tiết</span> 
                             </h2>
                                <div class="table-responsive">
                                    
                        </div>
                        
                    </div>
                </article>

                <aside class="product__aside col-lg-3 col-md-0 col-sm-0">
                    <div class="product__aside-top">
                        <div class="product__aside-top-item">
                            <img src="images/shipper.png">
                            <div class="product__aside-top-item-text">
                                <p>
                                    Giao hàng nhanh chóng
                                </p>
                                <span>
                                    Chỉ trong vòng 24h
                                </span>
                            </div>
                        </div>
                        <div class="product__aside-top-item">
                            <img src="images/brand.png">
                            <div class="product__aside-top-item-text">
                                <p>
                                    Sản phẩm chính hãng
                                </p>
                                <span>
                                    Sản phẩm nhập khẩu 100%
                                </span>
                            </div>
                        </div>
                        <div class="product__aside-top-item">
                            <img src="images/less.png">
                            <div class="product__aside-top-item-text">
                                <p>
                                    Mua hàng tiết kiệm
                                </p>
                                <span>
                                    Rẻ hơn từ 10% đến 30%
                                </span>
                            </div>
                        </div>
                    </div>
                </aside>
            </div>
        </div>
    </section>
    <!-- end product -->

    <!-- footer -->
   <footer>
        <section class="footer__top">
            <div class="container">
                <div class="row">
                    <article class="footer__top-intro col-lg-5 col-md-4 col-sm-6">
                        <h4 class="footer__top-intro-heading">
                            Về chúng tôi
                        </h4>
                        <div class="footer__top-intro-content">
                            Shop Giày Ananas của chúng tôi chuyên phân phối các mẫu giày mới nhất. <br/>
                            Luôn sẳn sàng phục vụ 24/7. <br/>
                            Uy Tín, Chất Lượng và Phục Vụ Tận Tình.
                            <br/> <br/>
                            Điện thoại: 0981.908.197 <br/>
                            Email: vanle200275@gmail.com <br/>
                            Zalo: 0981908197
                        </div>
                    </article>

                    <article class="footer__top-policy col-lg-3 col-md-4 col-sm-6">
                        <h4 class="footer__top-policy-heading">
                            Chính sách mua hàng
                        </h4>

                        <ul class="footer__top-policy-list">
                            <li class="footer__top-policy-item">
                                <a href=" " class="footer__top-policy-link">Hình thức đặt hàng</a>
                            </li>
                            <li class="footer__top-policy-item">
                                <a href=" " class="footer__top-policy-link">Hình thức thanh toán</a>
                            </li>
                            <li class="footer__top-policy-item">
                                <a href=" " class="footer__top-policy-link">Phương thức vận chuyển</a>
                            </li>
                            <li class="footer__top-policy-item">
                                <a href=" " class="footer__top-policy-link">Chính sách đổi trả</a>
                            </li>
                            <li class="footer__top-policy-item">
                                <a href=" " class="footer__top-policy-link">Hướng dẫn sử dụng</a>
                            </li>
                        </ul>
                    </article>

                    <article class="footer__top-contact-wrap col-lg-4 col-md-4 col-sm-6">
                        <h4 class="footer__top-contact-heading">
                            Hotline liên hệ
                        </h4>

                        <div class="footer__top-contact">
                            <div class="footer__top-contact-icon">
                                <img src="images/phone_top.png" class="footer__top-contact-img"/>
                            </div>

                            <div class="footer__top-contact-phone-wrap">
                                <div class="footer__top-contact-phone">
                                    0981.908.197
                                </div>
                                <div class="footer__top-contact-des">
                                    (Giải đáp 24/24)
                                </div>
                            </div>
                        </div>
                    
                        <h4 class="footer__top-contact-heading">
                            Kết nối với chúng tôi
                        </h4>

                        <div class="footer__top-contact-social">
                            <a href="#" class="footer__top-contact-social-link">
                                <img src="images/facebook.png"/>
                            </a>
                            <a href="#" class="footer__top-contact-social-link">
                                <img src="images/youtube.png"/>
                            </a>
                            <a href="#" class="footer__top-contact-social-link">
                                <img src="images/tiktok.png"/>
                            </a>
                        </div>
                    </article>
                </div>
            </div>
        </section>
        <section class="footer__bottom">
            <div class="container">
                <div class="row">
                    <span class="footer__bottom-content">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        CopyRight &copy;
                        <script>document.write(new Date().getFullYear());</script> - Shop Giày | by <a href="https://www.facebook.com/vanzxje" class="footer__bottom-link" target="_blank">VanLee & BaoBao</a>
                    </span>
                </div>
            </div>
        </section>
    </footer>
    <!-- end footer -->

    <script src="js/index.js"></script>

    </form>
</body>
</html>

    <%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.ascx.cs" Inherits="Shop_Giay.UserUI.TrangChu" %>
<!-- bestselling product -->
    <section class="bestselling">
        <div class="container">
            <div class="row">
                <div class="bestselling__heading-wrap">
                    <div class="bestselling__heading">Top bán chạy nhất tuần</div>
                </div>
            </div>
            <section class="row">
                <%foreach (var item in listSP)
                  {%>
                <div class="bestselling__product col-lg-4 col-md-6 col-sm-12">
                    <div class="bestselling__product-img-box">
                        <img src='<%="images/sanpham/"+item.HinhSP%>' alt="" class="bestselling__product-img">
                    </div>
                    <div class="bestselling__product-text">
                        <h3 class="bestselling__product-title">
                            <a href='<%="SanPhamChiTiet.aspx?id="+item.IdSanPham%>' class="bestselling__product-link"><%=item.TenSP%></a>
                        </h3>

                        <div class="bestselling__product-rate-wrap">
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                            <i class="fas fa-star bestselling__product-rate"></i>
                        </div>

                        <span class="bestselling__product-price"><%=item.GiaSP%>&nbsp;₫</span>

                        <div class="bestselling__product-btn-wrap">
                            <a href='<%="SanPhamChiTiet.aspx?id="+item.IdSanPham%>' class="bestselling__product-btn">Chi tiết</a>
                        </div>
                    </div>
                </div>
                <% }%>
            </section>
        </div>
    </section>
    <!-- end bestselling product -->

    <!-- product -->
    <section class="product">
        <div class="container">
            <div class="row">
                <article class="product__content col-sm-12">
                    <nav class="row">
                        <ul class="product__list hide-on-mobile">
                            <li class="product__item product__item--active">
                                <a href="#" class="product__link">Tất cả sản phẩm</a>
                            </li>
                            <%foreach(var item in listDM) 
                              {%>
                            <li class="product__item">
                                <a href='<%="SanPhamDanhMuc.aspx?IdDanhMuc="+item.IdDanhMuc%>' class="product__link"><%=item.TenDM %></a>
                            </li>
                            <%} %>
                        </ul>
                    </nav>

                    <div class="row product__panel">
                        <%foreach(var item in listSP) 
                          {%>
                        <div class="product__panel-item col-lg-3 col-md-4 col-sm-6">
                            <div class="product__panel-item-wrap">
                                <div class="product__panel-img-wrap">
                                    <img src='<%="images/sanpham/"+item.HinhSP%>' alt="" class="product__panel-img">
                                </div>
                                <h3 class="product__panel-heading">
                                    <a href='<%="SanPhamChiTiet.aspx?id="+item.IdSanPham%>' class="product__panel-link"><%=item.TenSP%></a>
                                </h3>
                                <div class="product-item__action">
                                    <span class="product__panel-sold">Đã bán 101</span>
                                    <div class="product__panel-rate-wrap">
                                        <i class="fas fa-star product__panel-rate"></i>
                                        <i class="fas fa-star product__panel-rate"></i>
                                        <i class="fas fa-star product__panel-rate"></i>
                                        <i class="fas fa-star product__panel-rate"></i>
                                        <i class="fas fa-star product__panel-rate"></i>
                                    </div>
                                </div>
                                <div class="product__panel-price">
                                    <span class="product__panel-price-old"><%=item.GiaGoc%>&nbsp;₫</span>
                                    <span class="product__panel-price-current"><%=item.GiaSP%>&nbsp;₫</span>
                                </div>

                                <div class="product__panel-price-sale-off">
                                    -10%
                                </div>
                            </div>
                        </div>
                        <%} %>
                    </div>
                </article>
                <ul class="pagination">
                    <li class="pagination-item">
                        <a href="#" class="pagination-item__link">
                            <i class="pagination-item__icon fas fa-angle-left"></i>
                        </a>
                    </li>
                    <li class="pagination-item pagination-item--active">
                        <a href="#" class="pagination-item__link">1</a>
                    </li>
                    <li class="pagination-item">
                        <a href="#" class="pagination-item__link">2</a>
                    </li>
                    <li class="pagination-item">
                        <a href="#" class="pagination-item__link">3</a>
                    </li>
                    <li class="pagination-item">
                        <a href="#" class="pagination-item__link">...</a>
                    </li>
                    <li class="pagination-item">
                        <a href="#" class="pagination-item__link">10</a>
                    </li>
                    <li class="pagination-item">
                        <a href="#" class="pagination-item__link">
                            <i class="pagination-item__icon fas fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </section>
    <!--end product -->
    
    <!-- post -->
    <section class="posts">
        <div class="container">
            <header class="row posts__title">
                <div class="posts__title-wrap col-lg-12 col-md-12 col-sm-12">
                    <h2 class="posts__heading">
                        Tin tức - Bài viết
                    </h2>
                </div>
            </header>
            <article class="row posts__list">
                <%foreach (var item in listTT)
                  { %>
                <div class="posts__item col-lg-3 col-md-6 col-sm-6">
                    <div class="posts__item-img" >
                        <img src='<%="images/post/"+item.ImagePath%>' width="80%" />
                    </div>
                    <h3 class="posts__item-heading">
                        <a href="https://vnexpress.net/tag/giay-dep-90600" class="posts__item-title">
                            <%=item.TieuDe%>
                        </a>
                    </h3>
                    <div class="posts__item-date">
                        05/06/2023
                    </div>
                    <div class="posts__item-cate-wrap">
                        <div class="posts__item-cate">
                            <i class="fa fa-folder posts__item-cate-icon"></i>
                            <div class="posts__item-cate-name">
                                Tin tức
                            </div>
                        </div>
                        <div class="posts__item-cate-ad">
                            <i class="fa fa-user posts__item-cate-ad-icon"></i>
                            <div class="posts__item-cate-ad-name">
                                VanLee & BaoBao
                            </div>   
                        </div>
                    </div>
                    <div class="posts__item-description"><%=item.NoiDung%></div>
                </div>
                <%} %>
            </article>
            <article class="row posts__view">
                <a href="#" class="posts__view-btn">Xem thêm</a>
            </article>
        </div>
    </section>
    <!-- end post -->
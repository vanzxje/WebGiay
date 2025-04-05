<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SanPhamDanhMuc.ascx.cs" Inherits="Shop_Giay.UserUI.SanPhamDanhMuc" %>
<!-- bestselling product -->
<!-- product -->
    <section class="product">
        <div class="container">
            <div class="row">
                <article class="product__content col-sm-12">
                    <nav class="row">
                        <div class="bestselling__heading-wrap">
                            <div class="bestselling__heading"><%=strTenDM%></div>
                        </div>
                    </nav>

                    <div class="row product__panel" style="margin-top: 2rem">
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
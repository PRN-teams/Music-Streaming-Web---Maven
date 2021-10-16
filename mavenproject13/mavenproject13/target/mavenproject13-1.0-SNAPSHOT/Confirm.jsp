<%-- 
    Document   : Confirm.jsp
    Created on : 13-Oct-2021, 19:10:47
    Author     : nvlon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0067)https://sandbox.vnpayment.vn/paymentv2/Ncb/Transaction/Confirm.html -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Xác thực OTP</title>

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Xác thực OTP">
        <meta name="keywords" content="Xác thực OTP">
        <meta name="author" content="Xác thực OTP">

        <link href="./stuff2/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="./stuff2/Styles.min.css" rel="stylesheet" type="text/css">
        <link href="./stuff2/bootstrap-datetimepicker.min.css" rel="stylesheet">

    </head>

    <body onunload="">


        <header id="header" class="clearfix border-radius-header">
            <div class="container clearfix">
                <div class="navbar-header">
                    <img src="./stuff2/vban.png" width="170" height="60" alt="Merchant Logo">
                </div>
                <div class="nav navbar-nav navbar-right">
                    <div class="language">
                        <a href="https://sandbox.vnpayment.vn/paymentv2/Ncb/Transaction/Confirm.html?vnp_Locale=vi-VN"><img src="./stuff2/ic_vi.png" width="24" height="16" alt="Tiếng Việt"></a>
                        <a href="https://sandbox.vnpayment.vn/paymentv2/Ncb/Transaction/Confirm.html?vnp_Locale=en-US"><img src="./stuff2/ic_en.png" width="24" height="16" alt="English"></a>
                    </div>
                </div>
            </div>


        </header>
        <div id="container" class="container bs-docs-container clearfix">
            <div class="alert alert-info text-center alert-dismissible"><a href="https://sandbox.vnpayment.vn/paymentv2/Ncb/Transaction/Confirm.html" class="close" data-dismiss="alert" aria-label="close">×</a>Quý khách vui lòng không tắt trình duyệt cho đến khi nhận được kết quả giao dịch trên website. Xin cảm ơn!  </div>



            <div class="row step2">
                <div class="col-md-6">
                    <div class="box box-form">
                        <div class="title">
                            <h2>Xác thực OTP</h2>
                            <div class="icon-title"></div>
                        </div>
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane fade in active" id="tab1">
                                <form action="return" autocomplete="off" id="otpConfirm" method="post" novalidate="novalidate" class="bv-form">                        <div class="form-group">OTP đã được gửi về số điện thoại đăng ký. Quý khách vui lòng nhập OTP để tiếp tục thực hiện GD</div>
                                    <div class="form-group enter_otp has-feedback">
                                        <label class="sr-only" for="otpvalue">Nhập mã OTP</label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <svg class="color_theme" version="1.1" id="Layer_5" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 64 64" style="enable-background: new 0 0 64 64;" xml:space="preserve">
                                                <path d="M61.5,28.4H29.7c-1.4-6.8-7.4-11.9-14.7-11.9c-8.3,0-15,6.8-15,15.1s6.7,14.9,15,14.9c7.6,0,13.9-5.8,14.9-13.1
                                                      h18.6v5.4c0,1.7,0.8,3.1,1.8,3.1c1.1,0,1.8-1.4,1.8-3.1v-5.4h2.5v2.4c0,1.7,0.8,3.1,1.8,3.1c1.1,0,1.8-1.4,1.8-3.1v-2.4h3.3
                                                      c1.4,0,2.5-1.1,2.5-2.5C64,29.5,62.9,28.4,61.5,28.4z M15,42.6c-6.1,0-11-4.9-11-11c0-6.1,4.9-11,11-11c6.1,0,11,4.9,11,11
                                                      C26,37.7,21.1,42.6,15,42.6z"></path>
                                                </svg>
                                            </div>
                                            <input type="text" class="form-control" name="otpvalue" id="otpvalue" placeholder="Nhập mã OTP" data-bv-field="otpvalue">


                                        </div><i class="form-control-feedback" data-bv-icon-for="otpvalue" style="display: none; top: 0px; z-index: 100;"></i>
                                        <small class="help-block" data-bv-validator="notEmpty" data-bv-for="otpvalue" data-bv-result="NOT_VALIDATED" style="display: none;">Bạn chưa nhập mật khẩu OTP</small><small class="help-block" data-bv-validator="stringLength" data-bv-for="otpvalue" data-bv-result="NOT_VALIDATED" style="display: none;">OTP có độ dài từ 6 đến 10 ký tự</small></div>
                                    <div class="form-group logo_card">
                                        <img src="./stuff2/ncb_logo.png" width="115" height="40" alt="NCB Logo">
                                    </div>
                                    <div class="form-group clearfix" id="divSubmit">
                                        <input type="submit" id="btnConfirm" name="btnConfirm" value="Thanh toán" class="btn btn-primary form-control">
                                    </div>
                                    <div class="or">
                                        <span>Hoặc</span>
                                    </div>
                                    <div class="form-group btn-cancel clearfix" id="divCancel">
                                        <button type="submit" class="btn btn-default form-control" id="btnCancel" name="btnCancel">Hủy</button>
                                    </div>
                                </form>                </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        <!-- End container-->
        <footer id="footer">
            <div class="container clearfix">
                <div class="col-md-12">
                    <div class="copyright">Phát triển bởi VNPAY © 2021</div>
                    <div class="copyright_m">Phát triển bởi VNPAY © 2021</div>

                    <div class="verify">
                        <a href="https://profile.globalsign.com/SiteSeal/siteSeal/profile/profile.do?p1=e797f6ab&amp;p2=a06dada7520ada559537452c666a510c95706240fc2dfde64d4c864bf735462b7a370908847a6060a26daeac4f549d0bc8&amp;p3=7b58e9c169b0b0ff3eb932a37330cc91d466b871" target="_blank">
                            <img src="./stuff2/global_seal_110x45.png" height="40">
                        </a>
                        <a href="https://seal.controlcase.com/index.php?page=showCert&amp;cId=4096647551" target="_blank">
                            <img src="./stuff2/PCI_logo.png" height="40">
                        </a>
                    </div>
                </div>
            </div>
        </footer>
        <!--QRCode GUIDE-->

        <div id="modal-guide" class="modal" data-easein="expandIn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div style="height: 255px; background: blue; position: absolute;"></div>
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" role="button"><img src="./stuff2/btn_close.png" width="22" height="22" alt="Close"></button>
                        <h4 class="modal-title" style="color: #3e3e3e; font-size:24px;"><b>Hướng dẫn thanh toán?</b></h4>
                    </div>
                    <div class="modal-body">
                        <div class="row steps">
                            <div class="col-md-12">
                                <div class="col-md-4 left">
                                    <div class="modal-step">1</div>
                                    <p align="center">
                                        <img src="./stuff2/step0.png" width="237" height="498" alt="step1">
                                    </p>
                                    <p class="modal-1">Đăng nhập ứng dụng Mobile Banking, chọn chức năng QRPay và quét mã QR</p>
                                </div>
                                <div class="col-md-4">
                                    <div class="modal-step">2</div>
                                    <p align="center">
                                        <img src="./stuff2/step1.png" width="237" height="498" alt="step2">
                                    </p>
                                    <p class="modal-1">Kiểm tra thông tin đơn hàng và lựa chọn tài khoản thanh toán</p>
                                </div>
                                <div class="col-md-4 right">
                                    <div class="modal-step">3</div>
                                    <p align="center">
                                        <img src="./stuff2/step2.png" width="237" height="498" alt="step3">
                                    </p>
                                    <p class="modal-1">Xác nhận thanh toán và hoàn tất giao dịch</p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="box-guide">
                                    <h4><strong>Ứng dụng hỗ trợ</strong></h4>
                                    <div class="row">
                                        <div class="col-md-2">
                                            <p><img src="./stuff2/qr-vietcombank.png" alt="VCB Mobile-B@anking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 3.0</span></li>
                                                <li><span>Android: 3.0</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2">
                                            <p><img src="./stuff2/qr-agribank.png" alt="Agribank E-Mobile Banking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 2.2.12</span></li>
                                                <li><span>Android: 1.0.12</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2">
                                            <p><img src="./stuff2/qr-bidv.png" alt="BIDV Smart Banking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 1.1.5</span></li>
                                                <li><span>Android: 2.5.2</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2">
                                            <p><img src="./stuff2/qr-ipay.png" alt="VietinBank IPay"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 4.0.4</span></li>
                                                <li><span>Android: 4.0.4</span></li>
                                            </ul>
                                        </div>
                                    </div> 
                                    <div class="row">
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-vnpayewallet.png" alt="VNPAY E-Wallet"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 1.0.1</span></li>
                                                <li><span>Android: 1.0.1</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-vcbpay.png" alt="VietcomBank Pay"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 1.0.0</span></li>
                                                <li><span>Android: 1.0.0</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-scb.png" alt="SCB Mobile Banking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 3.0.1</span></li>
                                                <li><span>Android: 3.0.1</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-abbank.png" alt="ABBANK Mobile Banking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 2.0.2</span></li>
                                                <li><span>Android: 2.0.0</span></li>
                                            </ul>
                                        </div>
                                    </div> 
                                    <div class="row">
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-seabank.png" alt="Seabank SmartBanking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 1.0.3</span></li>
                                                <li><span>Android: 1.0.7</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-ivb.png" alt="IVB Mobile Banking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 2.0.0</span></li>
                                                <li><span>Android: 2.0.0</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-vietbank.png" alt="Vietbank Digital"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 1.0.4</span></li>
                                                <li><span>Android: 1.0.4</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-eximbank.png" alt="Eximbank Mobile Banking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 2.0.0</span></li>
                                                <li><span>Android: 2.0.0</span></li>
                                            </ul>
                                        </div>
                                    </div> 
                                    <div class="row">
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-ojb.png" alt="OceanBank Mobile Banking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 1.0.3</span></li>
                                                <li><span>Android: 1.2</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-nab.png" alt="NamABank Mobile Banking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 2.0.4</span></li>
                                                <li><span>Android: 3.0.0</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-baovietbank.png" alt="BAOVIET Smart"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 1.0.2</span></li>
                                                <li><span>Android: 1.0.1</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-hdbank.png" alt="HDBank Mobile Banking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 2.8</span></li>
                                                <li><span>Android: 2.4</span></li>
                                            </ul>
                                        </div>
                                    </div> 
                                    <div class="row">
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-saigonbank.png" alt="SAIGONBANK SmartBanking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 1.0.0</span></li>
                                                <li><span>Android: 1.0.0</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-kienlongbank.png" alt="Kienlongbank Mobile Banking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 1.0.0</span></li>
                                                <li><span>Android: 1.0.0</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-bidc.png" alt="BIDC Mobile Banking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 1.1.1</span></li>
                                                <li><span>Android: 1.0.7</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-vietabank.png" alt="VietABank Mobile Banking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 3.0.9</span></li>
                                                <li><span>Android: 3.0-11</span></li>
                                            </ul>
                                        </div>
                                    </div> 
                                    <div class="row">
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-msb.png" alt="MSB mBank"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 4.0.8</span></li>
                                                <li><span>Android: 4.2.2</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-shb.png" alt="SHB Mobile Banking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 3.0.7</span></li>
                                                <li><span>Android: 3.0.7</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-vib.png" alt="VIB Mobile Banking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 8.1.0</span></li>
                                                <li><span>Android: 8.1.0</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-tpbank.png" alt="TPBANK QuickPay"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 1.7</span></li>
                                                <li><span>Android: 1.7</span></li>
                                            </ul>
                                        </div>
                                    </div> 
                                    <div class="row">
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-mbbank.png" alt="MBBANK Mobile Banking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 3.6</span></li>
                                                <li><span>Android: 1.6</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-bacabank.png" alt="BacABank Mobile Banking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 1.0.4</span></li>
                                                <li><span>Android: 2.0.4</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-acb.png" alt="ACB Mobile Banking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 2.4.0</span></li>
                                                <li><span>Android: 2.4.0</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-ocb.png" alt="OCB Mobile Banking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 10.01.2019</span></li>
                                                <li><span>Android: 10.01.2019</span></li>
                                            </ul>
                                        </div>
                                    </div> 
                                    <div class="row">
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-woori.png" alt="WOORIBANK Mobile Banking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 1.5.3</span></li>
                                                <li><span>Android: 1.4.25</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-pvcombank.png" alt="PVCOMBANK Mobile Banking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 2.5</span></li>
                                                <li><span>Android: 2.5</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-vietcap.png" alt="VietCapital Mobile Banking"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 2.40</span></li>
                                                <li><span>Android: 2.94</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-coopbank.png" alt="CoopBank"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 1.0.0</span></li>
                                                <li><span>Android: 1.0.0</span></li>
                                            </ul>
                                        </div>
                                    </div> 
                                    <div class="row">
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-shinhanbank.png" alt="Shinhan Bank Vietnam SOL"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 2.1.8</span></li>
                                                <li><span>Android: 2.2.2</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-vidbank.png" alt="Public Bank Vietnam"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 1.0.0</span></li>
                                                <li><span>Android: 1.0.0</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-vnptpay.png" alt="VNPTPAY E-wallet"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 1.5.6</span></li>
                                                <li><span>Android: 1.0.0</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-vinid.png" alt="VINID E-wallet"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 3.4.2</span></li>
                                                <li><span>Android: 3.4.2</span></li>
                                            </ul>
                                        </div>
                                    </div> 
                                    <div class="row">
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-vimass.png" alt="VIMASS E-wallet"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 4.0.5</span></li>
                                                <li><span>Android: 2.0.14</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-viting.png" alt="Ví Ting"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 0.0.68</span></li>
                                                <li><span>Android: 0.0.68</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-1pay.png" alt="TrueMoney E-wallet"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 3.4.2</span></li>
                                                <li><span>Android: 3.4.2</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-viviet.png" alt="Ví Việt"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 2.7.7</span></li>
                                                <li><span>Android: 2.7.7</span></li>
                                            </ul>
                                        </div>
                                    </div> 
                                    <div class="row">
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-yolo.png" alt="Vi dien tu YOLO"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 1.5.6</span></li>
                                                <li><span>Android: 1.0.0</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-2 mt-2">
                                            <p><img src="./stuff2/qr-vtcpay.png" alt="Ví điện tử VTCPay"></p>
                                            <h5>Phiên bản:</h5>
                                            <ul class="list-style">
                                                <li><span>iOS: 9.22.29</span></li>
                                                <li><span>Android: 4.3.56</span></li>
                                            </ul>
                                        </div>
                                    </div> 

                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
        <div id="modal-guide-mobile" class="modal" data-easein="expandIn" tabindex="-1" role="dialog" aria-labelledby="" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" role="button"><img src="./stuff2/btn_close.png" width="22" height="22" alt=""></button>
                        <h4 class="modal-title" style="color: #3e3e3e;font-size:24px;"><b>Hướng dẫn thanh toán?</b></h4>
                    </div>
                    <div class="modal-body" style="padding-top:0;">
                        <ul class="navbar-nav nav nav-tabs tabs_2col" role="tablist" id="myTab">
                            <li role="presentation" class="nav-item active"><a class="nav-link active" style="line-height: 20px; height: auto;" href="https://sandbox.vnpayment.vn/paymentv2/Ncb/Transaction/Confirm.html#tab1-guide" aria-controls="tab1-guide" role="tab" data-toggle="tab">
                                    <p><span>Qua Tải mã</span> <strong>VNPAYQR</strong></p>
                                </a></li>
                            <li role="presentation" class="nav-item"><a class="nav-link" style="line-height: 20px; height: auto;" href="https://sandbox.vnpayment.vn/paymentv2/Ncb/Transaction/Confirm.html#tab2-guide" aria-controls="tab2-guide" role="tab" data-toggle="tab">
                                    <p><span>Qua ứng dụng</span> <strong>hỗ trợ VNPAYQR</strong></p>
                                </a></li>                        
                        </ul>

                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane fade  in active" id="tab1-guide">
                                <p><b>Bước 1:</b> Tải mã thanh toán</p>
                                <p><b>Bước 2:</b> Đăng nhập ứng dụng hỗ trợ thanh toán, chọn chức năng QRPay</p>
                                <p><b>Bước 3:</b> Tại màn hình quét QR, chọn Thư viện ảnh</p>
                                <p><b>Bước 4:</b> Chọn ảnh QR đã tải trong thư viện</p>
                                <p><b>Bước 5:</b> Kiểm tra thông tin đơn hàng và lựa chọn tài khoản thanh toán</p>
                                <p><b>Bước 6:</b> Xác nhận thanh toán và hoàn tất giao dịch</p>
                                <p><em><u>Lưu ý:</u> Ngoài tải mã thanh toán Khách hàng có thể sử dụng thiết bị khác (nếu có) để quét mã hiển thị trên màn hình mà không phải tải mã.</em></p>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="tab2-guide">
                                <p><b>Bước 1:</b> Nhấn vào logo của ứng dụng hỗ trợ thanh toán QR trong danh sách</p>
                                <p><b>Bước 2:</b> Đồng ý mở ứng dụng hỗ trợ thanh toán QR theo câu thông báo trên màn hình và Đăng nhập</p>
                                <p><b>Bước 3:</b> Xác nhận giao dịch và hoàn tất thanh toán</p>
                            </div>

                        </div>                    
                    </div>
                </div>
            </div>
        </div>   



        <!--AjaxLoading-->
        <div class="overlay" id="loading" style="display: none">
            <div class="loading"></div>
        </div>

        <script src="./stuff2/jquery.min.js.download"></script>
        <script src="./stuff2/bootstrap.bundle.min.js.download"></script>
        <script src="./stuff2/bootstrapValidator.min.js.download"></script>
        <script src="./stuff2/bootbox.min.js.download"></script>
        <script src="./stuff2/jquery.countdown.min.js.download"></script>

        <script src="./stuff2/moment.js.download"></script>
        <script src="./stuff2/vi.js.download"></script>
        <script src="./stuff2/bootstrap-datetimepicker.js.download"></script>
<!--        <script>
            $(function () {
                $('.popover-markup > .trigger')
                        .popover({
                            html: true,
                            placement: "bottom",
                            content: function () {
                                return $('.popover-markup > .content').html();
                            },
                            template:
                                    '<div class="popover dashboardPopover fade bottom in"><div class="arrow"></div><div class="popover-inner"><h3 class="popover-header"></h3><div class="popover-body"></div></div></div>'
                        });
                $('[data-toggle="tab"]').on("click", function () {
                    $('.tab-pane').addClass('in');
                    $(this).parent().parent().find(".active").removeClass("active");
                    $(this).parent().addClass("active");
                });
            });
        </script>
        <script>
            $(document)
                    .ready(function () {
                        $('.btn-cancel')
                                .click(function () {
                                    var x = this;
                                    bootbox.confirm({
                                        title: "X&#225;c nhận",
                                        message: "Bạn muốn hủy thanh to&#225;n Giao dịch n&#224;y ?",
                                        className: 'in',
                                        buttons: {
                                            cancel: {
                                                label: 'Cancel',
                                                className: 'btn-default btn-confirm-custom'
                                            },
                                            confirm: {
                                                label: 'OK',
                                                className: 'btn-primary btn-confirm-custom'
                                            }
                                        },
                                        callback: function (result) {
                                            if (result) {
                                                var bootstrapValidator = $(x).closest('form').data('bootstrapValidator');
                                                if (bootstrapValidator) {
                                                    bootstrapValidator.destroy();
                                                }

                                                // $(this).closest('form').validate().cancelSubmit = true;
                                                $('<input>')
                                                        .attr({
                                                            type: 'hidden',
                                                            id: 'btnCancel',
                                                            name: 'btnCancel',
                                                            value: 'cancel'
                                                        })
                                                        .appendTo('form');
                                                //Process Ajax Submit
                                                var postData = $(x).closest('form').serialize();
                                                var submitUrl = $(x).closest('form').attr("action");
                                                $.ajax({
                                                    type: "POST",
                                                    url: submitUrl,
                                                    data: postData,
                                                    dataType: 'JSON',
                                                    success: function (data) {
                                                        if (data.code === '00') {
                                                            //Check ifram container
                                                            if (self === top) {
                                                                //  location.href = data.url;
                                                                setTimeout(function () {
                                                                    location.href = data.url;
                                                                },
                                                                        200);
                                                            } else {
                                                                //  window.top.location.href = data.url;
                                                                setTimeout(function () {
                                                                    window.top.location.href = data.url;
                                                                },
                                                                        200);
                                                            }
                                                            return false;
                                                        } else {
                                                            alert(x.Message);
                                                        }
                                                    }
                                                });

                                                // $(x).closest('form').submit();
                                            }
                                            return true;
                                        }
                                    });
                                    return false;
                                });
                    });
        </script>


        <script type="text/javascript">
            $(document)
                    .ready(function () {
                        $(document)
                                .ajaxStart(function () {
                                    $("#loading").show();
                                })
                                .ajaxStop(function () {
                                    $("#loading").hide();
                                });
                    });
        </script>
        <script type="text/javascript">
            $(document)
                    .ready(function () {
                        //Validation form
                        $('#otpConfirm')
                                .bootstrapValidator({
                                    feedbackIcons: {
                                        valid: 'glyphicon glyphicon-ok',
                                        invalid: 'glyphicon glyphicon-remove',
                                        validating: 'glyphicon glyphicon-refresh'
                                    },
                                    live: 'disabled',
                                    fields: {
                                        otpvalue: {
                                            validators: {
                                                notEmpty: {
                                                    message: 'Bạn chưa nhập mật khẩu OTP'
                                                },
                                                stringLength: {
                                                    max: 20,
                                                    min: 6,
                                                    message: 'OTP c&#243; độ d&#224;i từ 6 đến 10 k&#253; tự'
                                                }
                                            }
                                        }
                                    }
                                })
                                .on('success.form.bv',
                                        function (e) {
                                            e.preventDefault();
                                            $(".display_error").remove();
                                            var txtOtp = $("#otpvalue");
                                            $.ajax({
                                                url: '/paymentv2/Ncb/Transaction/AjaxConfirm.html',
                                                type: "POST",
                                                dataType: "json",
                                                data: {otpvalue: txtOtp.val()},
                                                success: function (data) {
                                                    if (data.code === "00") {
                                                        $("#divSubmit").addClass("has-success");
                                                        $('#btnConfirm').prop('disabled', true);
                                                        //Check ifram container
                                                        if (self === top) {
                                                            setTimeout(function () {
                                                                location.href = data.url;
                                                            },
                                                                    500);
                                                        } else {
                                                            setTimeout(function () {
                                                                window.top.location.href = data.url;
                                                            },
                                                                    500);
                                                        }
                                                    } else {
                                                        if (data.code == '74') {
                                                            if (self === top) {
                                                                setTimeout(function () {
                                                                    location.href = data.url;
                                                                },
                                                                        500);
                                                            } else {
                                                                setTimeout(function () {
                                                                    window.top.location.href = data.url;
                                                                },
                                                                        500);
                                                            }
                                                        } else {

                                                            $(".display_error").remove();
                                                            var errMsg = $("<div>", {class: 'display_error'});
                                                            errMsg.html(data.message);
                                                            var devDiv = $("#divCancel").first();
                                                            errMsg.insertAfter(devDiv);
                                                            $('#btnConfirm').prop('disabled', true);
                                                        }
                                                    }
                                                },
                                                error: function () {
                                                    //console.log("An error has occured!!!");
                                                    $(".display_error").remove();
                                                    var errMsg = $("<div>", {class: 'display_error'});
                                                    errMsg.html('C&#243; lỗi xảy ra trong qu&#225; tr&#236;nh xử l&#253;! Qu&#253; kh&#225;ch vui l&#242;ng thực hiện lại giao dịch. Điện thoại hỗ trợ: 1900 55 55 77');
                                                    var devDiv = $("#divCancel").first();
                                                    errMsg.insertAfter(devDiv);
                                                }
                                            });
                                        });
                    });
        </script>

        <script type="text/javascript">
            var idleTime = 0;
            setInterval(timerIncrement, 60000);
            function timerIncrement() {
                idleTime++;
                if (idleTime > 14) {
                    doReload();
                }
            }
            function doReload() {
                window.location.href = '/paymentv2/Payment/Error.html?code=15';
            }
        </script>

        <script src="./stuff2/download2.js.download"></script>
        <script>
                function downloadQR(url) {
                    window.location.href = '/paymentv2/Transaction/DownloadQR.html';
                    //download(url, "vnpayqr-1337538"+".png", "application/octet-stream;base64");
                }
        </script>-->


    </body></html>

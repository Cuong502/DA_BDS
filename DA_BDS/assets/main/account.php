

<div class="main_page">
    <div class="main_page-Background">
        <div class="main_page-Background-header"></div>
    </div>
    <div class="main_page-Content">
        <div class="main_page-Content-sidebarContainer">
            <div class="main_page-Content-sidebar">
                <div class="main_page-Content-sidebar--profileHeaderWrap">
                    <div class="main_page-Content-sidebar--profileHeadercardWrap">
                        <div class="main_page-Content-sidebarProfile">
                            <img src="./assets/img/logo-dhktdn-150.png" alt="" class="main_page-Content-sidebarProfile--avatar">
                            <h4 class="main_page-Content-sidebarProfile--Name">
                                <?php
                                if(isset($_SESSION['dangky'])){
                                    echo '<span style="color:red">'.$_SESSION['dangky'].'</span>';  
                                } 
                                ?>
                            </h4>
                        </div>
                    </div>
                    <div class="main_page-Content-sidebar--profile-Body">
                        <ul class="main_page-Content-sidebar--profile-BodyNavContainer">
                                <li class="main_page-Content-sidebar--profile-BodyNavWrapper">
                                    <a href="index.php?quanly=account" class="main_page-Content-sidebar--profile-BodyNavWrapper__Activity">
                                        <span><i style="margin-right : 10px;" class = "fa fa-user"></i>
                                            Tài khoản của tôi
                                        </span>
                                    </a>
                                </li>
                                <li class="main_page-Content-sidebar--profile-BodyNavWrapper">
                                <a href="#" class="main_page-Content-sidebar--profile-BodyNavWrapper__Activity">
                                        <span><i style="margin-right : 10px;" class = "fa fa-edit"></i>
                                            Thay đổi thông tin
                                        </span>
                                    </a>
                                </li>
                                <li class="main_page-Content-sidebar--profile-BodyNavWrapper">
                                    <a href="#" class="main_page-Content-sidebar--profile-BodyNavWrapper__Activity">
                                            <span><i style="margin-right : 10px;" class = "fas fa-wallet"></i>
                                                Chuyển khoản
                                            </span>
                                        </a>
                                </li>
                                <li class="main_page-Content-sidebar--profile-BodyNavWrapper">
                                    <a href="index.php?dangxuat=1" class="main_page-Content-sidebar--profile-BodyNavWrapper__Activity">
                                            <span><i style="margin-right : 10px;" class = "fas fa-sign-out-alt"></i>
                                               Đăng xuất
                                            </span>
                                        </a>
                                </li>
                        </ul>     
                    </div>
                </div>
                
            </div>
        </div>
        <div class="main_page-Content-pageContainer">
            <div class="">
                <h1 class="main_page-Content-pageContainer__Title">Tài khoản</h1>
                <div class="main_page-Content-pageContainer__desc">Trang quản lý thông tin Tài khoản</div>
            </div>
            <div class="main_page-Content-pageContainer__WalletContainer">
                <div class="WalletContainer__walletBodyWrapper">
                    <div class="WalletContainer__walletBody">
                        <div class="WalletContainer__walletBody_amountContainer">
                            <b class="WalletContainer__walletBody_amount">10</b>
                            <div class="WalletContainer__walletBody_currencyName">SOL</div>
                        </div>
                        <div class="WalletContainer__walletBody_iconContainer">
                            <div class="WalletContainer__walletBody_iconContainer__currencyIcon">
                                <img src="./assets/img/image-iconSOL.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="WalletContainer__walletBodyWrapper">
                    <div class="WalletContainer__walletBody">
                        <div class="WalletContainer__walletBody_amountContainer">
                            <b class="WalletContainer__walletBody_amount">0</b>
                            <div class="WalletContainer__walletBody_currencyName">BTC</div>
                        </div>
                        <div class="WalletContainer__walletBody_iconContainer">
                            <div class="WalletContainer__walletBody_iconContainer__currencyIcon">
                                <img src="./assets/img/image-iconBCoin.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="WalletContainer__walletBodyWrapper">
                    <div class="WalletContainer__walletBody">
                        <div class="WalletContainer__walletBody_amountContainer">
                            <b class="WalletContainer__walletBody_amount">0</b>
                            <div class="WalletContainer__walletBody_currencyName">ETH</div>
                        </div>
                        <div class="WalletContainer__walletBody_iconContainer">
                            <div class="WalletContainer__walletBody_iconContainer__currencyIcon">
                                <img src="./assets/img/image-iconEthe.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main_page-Content-pageContainer__WalletAddresss">
                <div class="main_page-Content-pageContainer__WalletAddresssBody">
                    <span class="main_page-Content-pageContainer__WalletAddresssBodyabel">
                        Địa chỉ ví : 
                    </span>
                    <b class="main_page-Content-pageContainer__WalletAddress">0xaB3032BAc87C46158e091E1C60Ca84A099e58D83</b>
                </div>
                <div class="main_page-Content-pageContainer__WalletButtonContainer">
                    <button variant = "link" type="button" class="WalletButtonContainer"><i class = "fa fa-copy"></i></button>
                </div>
            </div>
            <div class="main_page-Content-pageContainer__transactionHistory">
                <div class="main_page-Content-pageContainer__transactionHistoryheaderWrapper">
                    <div class="main_page-Content-pageContainer__transactionHistoryheader">
                        <h5 class="main_page-Content-pageContainer__transactionHistoryheaderTitle">
                            Lịch sử giao dịch
                        </h5>
                    </div>
                </div>
                <div class="main_page-Content-pageContainer__transactionHistoryBody">
                    <div class="main_page-Content-pageContainer__transactionHistoryBody_Transactionwrapper">
                            <div class="transactionHistoryBody_Transactionwrapper--Table-reponsiver">
                                <table class="table">
                                    <tr class = "table_tr">
                                        <th>TxHash</th>
                                        <th>Địa chỉ gửi</th>
                                        <th>Địa chỉ nhận</th>
                                        <th>Số lượng</th>
                                        <th>Tocken</th>
                                    </tr>
                                    <tr class="table_tr">
                                        <td rowspan="1">
                                            <span class = "table_tr__Adress" style=" color: #00c4f5;"> 0x26a32a1...7ad20e34</span>
                                            <div class="table_tr__daytime">19/10/2021 06:06:28</div>
                                        </td>
                                        <td><span class = "table_tr__Adress" >0x26a32a1...7ad20e34</span></td>
                                        <td><span class = "table_tr__Adress" >0x26a32a1...7ad20e34</span></td>
                                        <td><span class = "table_tr__Adress" >1</span></td>
                                        <td><span class = "table_tr__Adress" >SOL</span></td>
                                    </tr>
                                </table>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

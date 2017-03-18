<%@ page language="VB" autoeventwireup="false" inherits="Introduction_Introduction, App_Web_2i0q0gem" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>电脑爱好者家园介绍</title>
    <link href="./css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!------ commn-js files ----->
    <script src="./js/jquery.min.js"> </script>
    <!------ commn-js files ----->
    <!----- theme-style ----->
    <link href="./css/style.css" rel='stylesheet' type='text/css' />
    <!----- theme-style ----->
    <!----- webfonts ----->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800'
        rel='stylesheet' type='text/css'>
    <!----- webfonts ----->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <!---header--->
    <div class="header">
        <!---container--->
        <div class="container">
            <div class="top-header">
                <div class="logo">
                    <a href="index.html">
                        <img src="images/cfaner4.png" /></a>
                </div>
                <div class="menu">
                    <a class="toggleMenu" href="#">
                        <img src="./images/nav-icon.png" alt="" />
                    </a>
                    <ul class="nav" id="nav">
                        <li class="active"><a href="../index.aspx">首页</a></li>
                        <li><a href="#about" class="scroll">简介</a></li>
                        <li><a href="#team" class="scroll">成员介绍</a></li>
                        <li><a href="#work" class="scroll">机构设置</a></li>
                        <li><a href="#services" class="scroll">服务方向</a></li>
                        <li><a href="#activities" class="scroll">活动</a></li>
                    </ul>
                    <script type="text/javascript" src="./js/responsive-nav.js"></script>
                    <script type="text/javascript" src="./js/move-top.js"></script>
                    <script type="text/javascript" src="./js/easing.js"></script>
                    <script type="text/javascript">
                        jQuery(document).ready(function ($) {
                            $(".scroll").click(function (event) {
                                event.preventDefault();
                                $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
                            });
                        });
                    </script>
                </div>
                <div class="clearfix">
                </div>
            </div>
        </div>
        <!---container--->
    </div>
    <!---header--->
    <!---banner--->
    <!----start-slider-script---->
    <script src="./js/responsiveslides.min.js"></script>
    <script>
        // You can also use "$(window).load(function() {"
        $(function () {
            // Slideshow 4
            $("#slider4").responsiveSlides({
                auto: true,
                pager: true,
                nav: true,
                speed: 500,
                namespace: "callbacks",
                before: function () {
                    $('.events').append("<li>before event fired.</li>");
                },
                after: function () {
                    $('.events').append("<li>after event fired.</li>");
                }
            });

        });
    </script>
    <!----//End-slider-script---->
    <!-- Slideshow 4 -->
    <div class="clearfix">
    </div>
    <!----- //End-slider---->
    <!---banner--->
    <!---content--->
    <div class="content">
        <div class="content-top" id="about">
            <!---container--->
            <div class="container">
                <div class="content-we">
                    <h2>
                        <span class="we-are"></span>WE ARE CFANERS.</h2>
                </div>
                <div class="row">
                    <div class="col-md-7 para-matter">
                        <p class="sit">
                            电脑爱好者家园是个专门为喜欢电脑技术的广大同学们所建立的校级社团。可以给同学们培训各种实用的电脑技术，也给大家提供了这样一个可以互相交流的平台。我们的宗旨为普及计算机基础知识，提高学生对计算机学习的兴趣及水平，进一步繁荣校园计算机生活，活跃校园气氛；
                        </p>
                        <p class="sed">
                            坚持实事求是的科学态度和优良学风，积极倡导"勤奋、严谨、求实、创新"的精神，开展学术研讨、活动演示及专业培训等活动，提高全校同学的专业理论和实践能力，在全校范围内普及计算机知识，提高学生的工作适应能力及业务素质。</p>
                    </div>
                    <div class="clearfix">
                    </div>
                </div>
            </div>
        </div>
        <!---content-we-are--->
        <!---container--->
        <div class="content-we-are" id="team">
            <div class="container">
                <div class="content-we">
                    <h2>
                        <span class="we-are"></span>our family.</h2>
                </div>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="member_ID" DataSourceID="SqlDataSource1"
                    RepeatColumns="4" RepeatDirection="Horizontal" ItemStyle-Width="50px" Width="100%"
                    CellPadding="0">
                    <HeaderTemplate>
                        <div class="container">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="col-md-3">
                            <div class="image-matter">
                                <asp:Image ID="Image1" runat="server" Visible='<%# Eval("member_Image").ToString().Length > 0 %>'
                                    ImageUrl='<%# "../Introduction/images/members/"&Eval("member_Image") %>' Width="250px"
                                    Height="295px" CssClass="img-responsive" />
                                <div class="image-bro">
                                    <h4>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("member_Name") %>' /></h4>
                                    <p>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("member_Job") %>' /></p>
                                </div>
                                <ul class="img-social-stags">
                                    <li><span>班级：</span><p>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("member_Class") %>' /></p>
                                        </a>
                                        <li>
                                            <li><span>寝室：</span><p>
                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("member_Dorm") %>' /></p>
                                                </a>
                                                <li>
                                                    <li><span>电话：</span><p>
                                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("member_Tel") %>' /></p>
                                                        </a>
                                                        <li>
                                                            <div class="clearfix">
                                                            </div>
                                </ul>
                            </div>
                        </div>
                    </ItemTemplate>
                    <FooterTemplate>
                        </div>
                    </FooterTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebSiteDB %>"
                    SelectCommand="SELECT * FROM [members]"></asp:SqlDataSource>
            </div>
        </div>
        <!---container--->
        <div class="content-part-work" id="work">
            <div class="container">
                <div class="content-work">
                    <h2>
                        <span class="work"></span>lovely work.</h2>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="partnership">
                            <a href="#">
                                <img class="img-responsive" src="./images/sky.jpg" alt="" /></a> <span class="plus">
                                </span>
                            <p class="partnership-guid">
                                主席团</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="partnership">
                            <a href="#">
                                <img class="img-responsive" src="./images/high.jpg" alt="" /></a> <span class="plus">
                                </span>
                            <p class="partnership-guid">
                                宣传部</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="partnership">
                            <a href="#">
                                <img class="img-responsive" src="./images/road.jpg" title="sky" alt="" /></a>
                            <span class="plus"></span>
                            <p class="partnership-guid">
                                外联部</p>
                        </div>
                    </div>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="partnership">
                            <a href="#">
                                <img class="img-responsive" src="./images/sea.jpg" alt="" /></a> <span class="plus">
                                </span>
                            <p class="partnership-guid">
                                策划部</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="partnership">
                            <a href="#">
                                <img class="img-responsive" src="./images/stone.jpg" alt="" /></a> <span class="plus">
                                </span>
                            <p class="partnership-guid">
                                人力资源部</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="partnership">
                            <a href="#">
                                <img class="img-responsive" src="./images/bird.jpg" title="sky" alt="" /></a>
                            <span class="plus"></span>
                            <p class="partnership-guid">
                                行政部</p>
                        </div>
                    </div>
                    <div class="clearfix">
                    </div>
                </div>
            </div>
        </div>
        <!---container--->
        <!---container--->
        <div class="content-what" id="services">
            <div class="container">
                <div class="content-we">
                    <h2>
                        <span class="we-are"></span>what we do.</h2>
                </div>
                <div class="row">
                    <div class="col-md-3 easy-them">
                        <a href="#">
                            <img class="img-responsive" src="./images/1.jpg" alt="" /></a>
                        <h4>
                            office 办公软件</h4>
                        <p>
                            让你能够熟练使用办公软件，提高工作效率</p>
                    </div>
                    <div class="col-md-3 easy-them">
                        <a href="#">
                            <img class="img-responsive" src="./images/2.jpg" alt="" /></a>
                        <h4>
                            Adobe Photoshop</h4>
                        <p>
                            真的勇士敢于Po自己的美图</p>
                    </div>
                    <div class="col-md-3 easy-them">
                        <a href="#">
                            <img class="img-responsive" src="./images/3.jpg" alt="" /></a>
                        <h4>
                            Prezi</h4>
                        <p>
                            狂拽酷霸屌的演示软件</p>
                    </div>
                    <div class="col-md-3 easy-them">
                        <a href="#">
                            <img class="img-responsive" src="./images/5.jpg" alt="" /></a>
                        <h4>
                            C语言</h4>
                        <p>
                            一不小心自己也成了程序猿</p>
                    </div>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 easy-them">
                        <a href="#">
                            <img class="img-responsive" src="./images/4.jpg" alt="" /></a>
                        <h4>
                            PHP</h4>
                        <p>
                            如何证明你是的我的好基友（拉拉）——把你的照片放到网上</p>
                    </div>
                    <div class="col-md-3 easy-them">
                        <a href="#">
                            <img class="img-responsive" src="./images/6.jpg" alt="" /></a>
                        <h4>
                            会声会影</h4>
                        <p>
                            制作自己的专属电影</p>
                    </div>
                    <div class="col-md-3 easy-them">
                        <a href="#">
                            <img class="img-responsive" src="./images/7.jpg" alt="" /></a>
                        <h4>
                            装机</h4>
                        <p>
                            适合自己的系统才是真的好系统</p>
                    </div>
                    <div class="col-md-3 easy-them">
                        <a href="#">
                            <img class="img-responsive" src="./images/8.jpg" alt="" /></a>
                        <h4>
                            各种实用电脑小技巧</h4>
                        <p>
                            好孩子看不到哟</p>
                    </div>
                    <div class="clearfix">
                    </div>
                </div>
            </div>
        </div>
        <!---container--->
        <div class="content-features" id="activities">
            <div class="container">
                <div class="content-work">
                    <h2>
                        <span class="work"></span>ACTIVITIES.</h2>
                </div>
                <asp:DataList ID="DataList2" runat="server" DataKeyField="activity_ID" DataSourceID="SqlDataSource2"
                    RepeatColumns="3" RepeatDirection="Horizontal" ItemStyle-Width="50%" Width="100%" ItemStyle-VerticalAlign="Top">
                    <HeaderTemplate>
                        <div class="container">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="col-md-4 features-grass">
                            <asp:Image ID="Image2" runat="server" Visible='<%# Eval("activity_Image").ToString().Length > 0 %>'
                                ImageUrl='<%# "../Introduction/images/activities/"&Eval("activity_Image") %>'
                                Width="355px" Height="238px" />
                            <h4>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("activity_Name") %>' /></h4>
                            <p>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("activity_Content") %>' /></p>
                        </div>
                    </ItemTemplate>
                    <FooterTemplate>
                        </div>
                    </FooterTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebSiteDB %>"
                    SelectCommand="SELECT * FROM [activities] ORDER BY [activity_ID] DESC"></asp:SqlDataSource>
            </div>
        </div>
        <!---container--->
    </div>
    <!---content--->
    <!---footer---->
    <div class="footer">
        <div class="container">
            <div class="footer-top">
                <div class="footer-class">
                    <p>
                        Copyright (C) 电脑爱好者家园 All Rights Reserved.</p>
                </div>
            </div>
            <div class="clearfix">
            </div>
        </div>
        <script type="text/javascript">
            $(document).ready(function () {
                /*
                var defaults = {
                containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear' 
                };
                */

                $().UItoTop({ easingType: 'easeOutQuart' });

            });
        </script>
        <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;">
        </span></a>
    </div>
    <!---footer---->
    </form>
</body>
</html>

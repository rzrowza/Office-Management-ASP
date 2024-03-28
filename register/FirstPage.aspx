<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstPage.aspx.cs" UnobtrusiveValidationMode="None" Inherits="register.FirstPage" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Office Management System</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top" >
    <div  class="container d-flex align-items-center justify-content-between" >

      <h1 class="logo" style="font-size:xx-large;color:coral">BDI GROUP Ltd</h1>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero" style="font-size:large">Home</a></li>
          <li><a class="nav-link scrollto" href="#about" style="font-size:large">About</a></li>
          <li><a class="nav-link scrollto" href="#services" style="font-size:large">Services</a></li>
          <li><a class="nav-link scrollto" href="#team" style="font-size:large">Team</a></li>
             <li><a class="nav-link scrollto" href="#contact" style="font-size:large">Contact Us</a></li>
         <li> <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Login_page.aspx" runat="server"><b>USER_LOGIN</b></asp:HyperLink> </li>
            <li>
                <asp:HyperLink ID="HyperLink2" NavigateUrl="~/Admin.aspx" runat="server"><b>ADMIN_LOGIN</b></asp:HyperLink></li>
            <ul>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

      <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

      <div class="carousel-inner" role="listbox">

        <!-- Slide 1 -->
        <div class="carousel-item active" style="background-image: url(assets/img/slide/slide-1.jpg)">
          <div class="carousel-container">
            <div class="container">
              <h2 class="animate__animated animate__fadeInDown">Welcome to <span>BDI group</span></h2>
              <p class="animate__animated animate__fadeInUp" style="font-size:large"> A company that has successfully crafted a niche for itself in the domestic market. We are known to pay attention to any specification that is demanded by our customers thus resulting in maximum customer satisfaction.</p>
              <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Read More</a>
            </div>
          </div>
        </div>

        <!-- Slide 2 -->
        <div class="carousel-item" style="background-image: url(assets/img/slide/slide-2.jpg)">
          <div class="carousel-container">
            <div class="container">
              <h2 class="animate__animated animate__fadeInDown">BDI features</h2>
              <p class="animate__animated animate__fadeInUp">We as a company have all the basic requirements that are required to deliver products that cater to the specific requirements of our customers. With the acquisition of all the modern innovative machineries along with testing facilities, we have become competent in manufacturing specially customized roto-molding products.</p>
              <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Read More</a>
            </div>
          </div>
        </div>

        <!-- Slide 3 -->
        <div class="carousel-item" style="background-image: url(assets/img/slide/slide-3.jpg)">
          <div class="carousel-container">
            <div class="container">
              <h2 class="animate__animated animate__fadeInDown">Customised Moulding Rational Solutions</h2>
              <p class="animate__animated animate__fadeInUp">Weight Reduction, light-weighting benefits
Increased Fuel Capacity by leveraging freedom of design
Corrosion Free – increased life of fuel system
Seamless single-piece construction with molded-in inserts and filler neck – no joints hence no leakage</p>
              <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Read More</a>
            </div>
          </div>
        </div>

      </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
      </a>

    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>About</h2>
          <p>About Us</p>
        </div>

        <div class="row content">
          <div class="col-lg-6">
            <p>
              BDI Group (of companies) is an ISO/TS16949 certified organization manufacturing plastic products in mumbai 
                since over 35 years. We manufacture over 500 products and cater to 8 different industries including
                custom rotational moulding. 
            </p>
            <ul>
              <li><i class="ri-check-double-line"></i>  Dustbins, Twin bins, Garbage Chutes, Hospital furniture are
                  some of the other products BDI does.</li>
              <li><i class="ri-check-double-line"></i> Our speciality lies in custom moulding and developing newer 
                  concepts and products right from the “sketch off a napkin”.</li>
              <li><i class="ri-check-double-line"></i>With 5 plants in western, northern and southern India, BDI is
                  well poised to serve customers PAN India.</li>
            </ul>
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0">
            <p>
               We are vendors to leading Automotive companies for fuels tanks, in-cab parts,
                fenders, roof tops, adblue tanks etc. BDI also manufactures various kinds of road barriers and other allied
                products for the safety industry. For material handling products we manufacture the entire range of plastic
                pallets (with foam/ without foam/with steel reinforcement).
            </p>
            <a href="#" class="btn-learn-more">Learn More</a>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->

    <!-- ======= Counts Section ======= -->
    <section id="counts" class="counts">
      <div class="container" data-aos="fade-up">

        <div class="row no-gutters">

          <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
            <div class="count-box">
              <i class="bi bi-emoji-smile"></i>
              <span data-purecounter-start="0" data-purecounter-end="232" data-purecounter-duration="1" class="purecounter"></span>
              <p><strong>Happy Clients</strong> customers are pleased</p>
              <a href="#">Find out more &raquo;</a>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
            <div class="count-box">
              <i class="bi bi-journal-richtext"></i>
              <span data-purecounter-start="0" data-purecounter-end="521" data-purecounter-duration="1" class="purecounter"></span>
              <p><strong>Projects</strong>are completed</p>
              <a href="#">Find out more &raquo;</a>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
            <div class="count-box">
              <i class="bi bi-headset"></i>
              <span data-purecounter-start="0" data-purecounter-end="1463" data-purecounter-duration="1" class="purecounter"></span>
              <p><strong>Hours Of Support</strong> customer service center</p>
              <a href="#">Find out more &raquo;</a>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
            <div class="count-box">
              <i class="bi bi-people"></i>
              <span data-purecounter-start="0" data-purecounter-end="15" data-purecounter-duration="1" class="purecounter"></span>
              <p><strong>Hard Workers</strong> hard works is the key to success</p>
              <a href="#">Find out more &raquo;</a>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Counts Section -->

    <!-- ======= Why Us Section ======= -->
    <section id="why-us" class="why-us section-bg">
      <div class="container-fluid" data-aos="fade-up">

        <div class="row">

          <div class="col-lg-5 align-items-stretch video-box" style='background-image: url("assets/img/why-us.jpg");' data-aos="zoom-in" data-aos-delay="100">
            <a href="https://www.youtube.com/watch?v=DBuKo0gbB0o" class="venobox play-btn mb-4" data-vbtype="video" data-autoplay="true"></a>
          </div>

          <div class="col-lg-7 d-flex flex-column justify-content-center align-items-stretch">

            <div class="content">
              <h3><strong>What We Offer?</strong></h3>
              <p>
               We are known as a company which has given a totally new dimension to roto-molding products. Constant up-gradation and high levels of quality standards are the trademarks of products that are manufactured under the brand name of B.D.Industries (India) Pvt. Ltd.</p>
            </div>

            <div class="accordion-list">
              <ul>
                <li>
                  <a data-bs-toggle="collapse" class="collapse" data-bs-target="#accordion-list-1"><span>01</span> Our processes draw from universally recognized and accepted methodologies.<i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                  <div id="accordion-list-1" class="collapse show" data-bs-parent=".accordion-list">
                    <p>
                     BDI utilizes Six-Sigma, Lean and Kaizen methodologies in the continuous pursuit of quality.
                    </p>
                  </div>
                </li>

                <li>
                  <a data-bs-toggle="collapse" data-bs-target="#accordion-list-2" class="collapsed"><span>02</span>Our customers have recognized our efforts with many awards for performance.  <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                  <div id="accordion-list-2" class="collapse" data-bs-parent=".accordion-list">
                    <p>
                     The best testimonial to our performance is their continual loyalty in awarding us with additional business over the past 35+ years.
                    </p>
                  </div>
                </li>

                <li>
                  <a data-bs-toggle="collapse" data-bs-target="#accordion-list-3" class="collapsed"><span>03</span> The plastics and roto-molding industries have recognized our leadership with numerous awards recognizing our design capabilities and innovations. <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                  <div id="accordion-list-3" class="collapse" data-bs-parent=".accordion-list">
                    <p>
                     We have several patents pending for our innovative and breakthrough projects fulfilling challenging applications in new industries.
            We have been awarded with 50+ design registrations for our visually aesthetic, unique and functionally efficient product designs.</p>
                  </div>
                </li>

              </ul>
            </div>

          </div>

        </div>

      </div>
    </section><!-- End Why Us Section -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Services</h2>
          <p>Check our Services</p>
        </div>

        <div class="row">
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="bx bxl-dribbble"></i></div>
              <h4><a href="">Material handling products</a></h4>
              <p>We are one of the country’s largest manufacturers of rotational moulding plastic pallets, insulated
                  shippers, crates, palletised containers and other material handling items.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="zoom-in" data-aos-delay="200">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-file"></i></div>
              <h4><a href="">Automotive</a></h4>
              <p>Over 20 years of experience in manufacturing plastic fuel tanks, AdBlue tanks, fenders, cabin roofs 
                  and other items for the automotive and off-road industry in India and overseas.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0" data-aos="zoom-in" data-aos-delay="300">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-tachometer"></i></div>
              <h4><a href="">Road safety products</a></h4>
              <p>We are the country’s oldest and most experienced manufacturer of road barriers and other safety 
                  products that help save lives on the road everyday.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-world"></i></div>
              <h4><a href="">
Waste management</a></h4>
              <p>Our range of tough, durable and long-life rotationally moulded Dustbins, Ghamelas 
                  and other waste handling products are widely accepted and preferred for commercial,
                  hospitality and outdoor applications.
</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="200">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-slideshow"></i></div>
              <h4><a href="">Healthcare</a></h4>
              <p>Over a decade’s experience in successfully manufacturing rotationally moulded
                  hospital beds for ICU and ICCU usage with superior-hygiene, easy-cleaning and 
                  sanitising, anti-bacterial properties.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="300">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-arch"></i></div>
              <h4><a href="">Power and energy</a></h4>
              <p>BDI successfully manufactures polymer water tanks for solar water heating system
                  application. BDI’s polymer tanks are not only cost-effective but also offer 
                  improved heat retention, to provide increased efficiency and hot water anytime 
                  of the day/night.</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Services Section -->

    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Testimonials</h2>
          <p>Testimonials</p>
        </div>

        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                 
                  <h3>Mumbaai International Airport Pvt Ltd</h3>
                 
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                   Innovation,Technology and quality is what keeps us associated with BDI <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                
                  <h3>Modern Road Makers Pvt Ltd</h3>
               
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                   We are happy to work with BDI who are one of the best in the field of Road safety Products <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                
                  <h3>Mumbai Natural Gas Ltd</h3>
                  
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                   We are dealing with BDI more than 5 years.We are very happy to work wih BDI.It is one of the biggest roto moldest industry in India <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
               
                  <h3>Granules India Ltd</h3>
            
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                   We are dealing with BDI for the last 20 years & the quality and the services are found to be excellent.Our best wishes for the future.
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Testimonials Section -->

   

    

    <!-- ======= Team Section ======= -->
    <section id="team" class="team section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Team</h2>
          <p>Check our Team</p>
        </div>

        <div class="row">

          <div class="col-xl-3 col-lg-4 col-md-6">
            <div class="member" data-aos="zoom-in" data-aos-delay="100">
              <img src="assets/img/team/team-1.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Walter White</h4>
                  <span>Chief Executive Officer</span>
                </div>
                <div class="social">
                  <a href="https://twitter.com/elonmusk"><i class="bi bi-twitter"></i></a>
                  <a href="https://www.facebook.com/profile.php?id=100082840712316"><i class="bi bi-facebook"></i></a>
                  <a href="https://www.instagram.com/elonmusk.ab/"><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-xl-3 col-lg-4 col-md-6" data-wow-delay="0.1s">
            <div class="member" data-aos="zoom-in" data-aos-delay="200">
              <img src="assets/img/team/team-2.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Sarah Jhonson</h4>
                  <span>Product Manager</span>
                </div>
                <div class="social">
                  <a href="https://twitter.com/rzrowza"><i class="bi bi-twitter"></i></a>
                  <a href="https://www.facebook.com/profile.php?id=100010110617997"><i class="bi bi-facebook"></i></a>
                  <a href="https://www.instagram.com/rowzatulzannat/"><i class="bi bi-instagram"></i></a>
                  <a href="https://www.linkedin.com/in/rowzatul-zannat-870626245/"><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-xl-3 col-lg-4 col-md-6" data-wow-delay="0.2s">
            <div class="member" data-aos="zoom-in" data-aos-delay="300">
              <img src="assets/img/team/team-3.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>William Anderson</h4>
                  <span>CTO</span>
                </div>
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-xl-3 col-lg-4 col-md-6" data-wow-delay="0.3s">
            <div class="member" data-aos="zoom-in" data-aos-delay="400">
              <img src="assets/img/team/team-4.jpg" class="img-fluid" alt="">
              <div class="member-info">
                <div class="member-info-content">
                  <h4>Amanda Jepson</h4>
                  <span>Accountant</span>
                </div>
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Team Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Contact</h2>
          <p>Contact Us</p>
        </div>

        <div class="row">

          <div class="col-lg-6">

            <div class="row">
              <div class="col-md-12">
                <div class="info-box">
                  <i class="bx bx-map"></i>
                  <h3>Our Address</h3>
                  <p>Khulna Uniersity of Engineering & Technology,KHUlNA</p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info-box mt-4">
                  <i class="bx bx-envelope"></i>
                  <h3>Email Us</h3>
                  <p>w.rzrowza@gmail.com<br>zannat1807039@stud.kuet.ac.bd</p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info-box mt-4">
                  <i class="bx bx-phone-call"></i>
                  <h3>Call Us</h3>
                  <p>+88 01761872816<br>+88 01726964376</p>
                </div>
              </div>
            </div>

          </div>

          <div class="col-lg-6">
            <form runat="server"  >
              <div class="row">
                <div class="col-md-6 form-group">
                  <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Name" runat="server"></asp:TextBox> 
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                 <asp:TextBox ID="TextBox2" placeholder="Email"  CssClass="form-control" runat="server"></asp:TextBox> 
                </div>
              </div>
              <div class="form-group mt-3">
                <asp:TextBox ID="TextBox3" placeholder="Subject"  CssClass="form-control" runat="server"></asp:TextBox> 
              </div>
              <div class="form-group mt-3">
              
                  <asp:TextBox ID="TextBox4"   placeholder="Message"  CssClass="form-control" runat="server"></asp:TextBox></div><br /><br />
              
              <div class="text-center">
                  <asp:Button ID="Button1" CssClass="butn" runat="server" Text="Send Message" BackColor="#FF3300" ForeColor="White" OnClick="Button1_Click" style="border-radius:10px" BorderStyle="None" Height="34px" Width="157px" /></div>
                </form>
          </div>


        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-4 col-md-6">
            <div class="footer-info">
              <h3>BDI Group</h3>
              <p class="pb-3"><em>A place you can trust</em></p>
              <p>
                Teligati <br>
                Fulbarigate,Khulna<br><br>
                <strong>Phone:</strong> +88 5523451<br>
                <strong>Email:</strong> www.kuet.ac.bd<br>
              </p>
              <div class="social-links mt-3">
                <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#hero">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#about">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#services">Services</a></li>
              
            </ul>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
             <h4><p> </p></h4>
            <ul>
            <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">


          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Rowza</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/multi-responsive-bootstrap-template/ -->
       
      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>

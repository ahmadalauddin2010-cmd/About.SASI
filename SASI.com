<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sasi 2.0 - Kearifan Lokal Menjawab Krisis Pangan</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        :root {
            --primary: #2c5530;
            --secondary: #4a7c59;
            --accent: #8fbc8f;
            --light: #f8f9fa;
            --dark: #343a40;
            --success: #28a745;
        }

        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            color: #333;
            line-height: 1.6;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* Header Styles */
        header {
            background: linear-gradient(135deg, var(--primary) 0%, var(--secondary) 100%);
            color: white;
            padding: 1rem 0;
            position: sticky;
            top: 0;
            z-index: 100;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        .nav-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.8rem;
            font-weight: 700;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .logo i {
            color: var(--accent);
        }

        nav ul {
            display: flex;
            list-style: none;
            gap: 2rem;
        }

        nav a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s;
            padding: 0.5rem 1rem;
            border-radius: 4px;
        }

        nav a:hover, nav a.active {
            background-color: rgba(255,255,255,0.1);
            color: var(--accent);
        }

        /* Hero Section */
        .hero {
            background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), 
                        url('https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80');
            background-size: cover;
            background-position: center;
            color: white;
            padding: 8rem 0;
            text-align: center;
        }

        .hero h1 {
            font-size: 3.5rem;
            margin-bottom: 1rem;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
        }

        .hero p {
            font-size: 1.3rem;
            max-width: 700px;
            margin: 0 auto 2rem;
            opacity: 0.9;
        }

        .btn {
            display: inline-block;
            background: var(--accent);
            color: white;
            padding: 0.8rem 1.8rem;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s;
            border: none;
            cursor: pointer;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
        }

        .btn:hover {
            background: var(--secondary);
            transform: translateY(-3px);
            box-shadow: 0 6px 20px rgba(0,0,0,0.3);
        }

        /* Main Content */
        .main-content {
            padding: 5rem 0;
        }

        .section-title {
            text-align: center;
            margin-bottom: 3rem;
            color: var(--primary);
        }

        .section-title h2 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }

        .section-title p {
            font-size: 1.2rem;
            color: #666;
            max-width: 700px;
            margin: 0 auto;
        }

        /* About Sasi */
        .about-sasi {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 3rem;
            align-items: center;
            margin-bottom: 5rem;
        }

        .about-text h3 {
            font-size: 2rem;
            margin-bottom: 1.5rem;
            color: var(--primary);
        }

        .about-text p {
            margin-bottom: 1.5rem;
        }

        .about-image {
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .about-image img {
            width: 100%;
            height: auto;
            display: block;
            transition: transform 0.5s;
        }

        .about-image:hover img {
            transform: scale(1.05);
        }

        /* Features */
        .features {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin-bottom: 5rem;
        }

        .feature-card {
            background: white;
            border-radius: 15px;
            padding: 2rem;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
            transition: transform 0.3s, box-shadow 0.3s;
            text-align: center;
        }

        .feature-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0,0,0,0.15);
        }

        .feature-icon {
            font-size: 3rem;
            color: var(--primary);
            margin-bottom: 1.5rem;
        }

        .feature-card h3 {
            font-size: 1.5rem;
            margin-bottom: 1rem;
            color: var(--primary);
        }

        /* Stats */
        .stats {
            background: linear-gradient(135deg, var(--primary) 0%, var(--secondary) 100%);
            color: white;
            padding: 5rem 0;
            text-align: center;
            margin-bottom: 5rem;
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 2rem;
        }

        .stat-item {
            padding: 1.5rem;
        }

        .stat-number {
            font-size: 3rem;
            font-weight: 700;
            margin-bottom: 0.5rem;
            color: var(--accent);
        }

        .stat-text {
            font-size: 1.2rem;
        }

        /* Case Studies */
        .case-studies {
            margin-bottom: 5rem;
        }

        .case-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
        }

        .case-card {
            background: white;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
            transition: transform 0.3s;
        }

        .case-card:hover {
            transform: translateY(-10px);
        }

        .case-image {
            height: 200px;
            overflow: hidden;
        }

        .case-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s;
        }

        .case-card:hover .case-image img {
            transform: scale(1.1);
        }

        .case-content {
            padding: 1.5rem;
        }

        .case-content h3 {
            font-size: 1.5rem;
            margin-bottom: 1rem;
            color: var(--primary);
        }

        /* CTA Section */
        .cta {
            background: linear-gradient(rgba(0,0,0,0.8), rgba(0,0,0,0.8)), 
                        url('https://images.unsplash.com/photo-1556909114-4d0d853e5e15?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80');
            background-size: cover;
            background-position: center;
            color: white;
            padding: 5rem 0;
            text-align: center;
            border-radius: 15px;
            margin-bottom: 5rem;
        }

        .cta h2 {
            font-size: 2.5rem;
            margin-bottom: 1.5rem;
        }

        .cta p {
            font-size: 1.2rem;
            max-width: 700px;
            margin: 0 auto 2rem;
            opacity: 0.9;
        }

        /* Footer */
        footer {
            background: var(--dark);
            color: white;
            padding: 3rem 0 1.5rem;
        }

        .footer-content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            margin-bottom: 2rem;
        }

        .footer-column h3 {
            font-size: 1.5rem;
            margin-bottom: 1.5rem;
            color: var(--accent);
        }

        .footer-column ul {
            list-style: none;
        }

        .footer-column ul li {
            margin-bottom: 0.8rem;
        }

        .footer-column a {
            color: #ddd;
            text-decoration: none;
            transition: color 0.3s;
        }

        .footer-column a:hover {
            color: var(--accent);
        }

        .social-links {
            display: flex;
            gap: 1rem;
            margin-top: 1.5rem;
        }

        .social-links a {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            height: 40px;
            background: rgba(255,255,255,0.1);
            border-radius: 50%;
            transition: all 0.3s;
        }

        .social-links a:hover {
            background: var(--accent);
            transform: translateY(-3px);
        }

        .copyright {
            text-align: center;
            padding-top: 1.5rem;
            border-top: 1px solid rgba(255,255,255,0.1);
            color: #aaa;
            font-size: 0.9rem;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .nav-container {
                flex-direction: column;
                gap: 1rem;
            }

            nav ul {
                gap: 1rem;
            }

            .hero h1 {
                font-size: 2.5rem;
            }

            .about-sasi {
                grid-template-columns: 1fr;
            }

            .section-title h2 {
                font-size: 2rem;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="container nav-container">
            <div class="logo">
                <i class="fas fa-seedling"></i>
                <span>Sasi 2.0</span>
            </div>
            <nav>
                <ul>
                    <li><a href="#" class="active">Beranda</a></li>
                    <li><a href="#">Tentang Sasi</a></li>
                    <li><a href="#">Implementasi</a></li>
                    <li><a href="#">Studi Kasus</a></li>
                    <li><a href="#">Kontak</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <h1>Sasi 2.0: Kearifan Lokal Menjawab Krisis Pangan Modern</h1>
            <p>Menggali warisan leluhur dari Maluku dan Papua untuk menciptakan solusi berkelanjutan menghadapi tantangan pangan nasional</p>
            <a href="#about" class="btn">Pelajari Lebih Lanjut</a>
        </div>
    </section>

    <!-- Main Content -->
    <main class="main-content container">
        <!-- About Sasi -->
        <section class="about-sasi" id="about">
            <div class="about-text">
                <h3>Apa Itu Sasi dan Mengapa Relevan Saat Ini?</h3>
                <p>Sasi adalah hukum adat masyarakat Maluku dan Papua yang mengatur pengelolaan sumber daya alam secara berkelanjutan. Sistem ini melarang pengambilan hasil sumber daya tertentu dalam jangka waktu tertentu untuk menjaga keseimbangan ekosistem.</p>
                <p>Di tengah krisis pangan global dan lonjakan harga bahan makanan, prinsip Sasi menawarkan solusi cerdas dengan pendekatan kolektif dan berorientasi keberlanjutan.</p>
                <p>Dengan mengintegrasikan kearifan lokal ini dengan teknologi modern, kita dapat menciptakan sistem ketahanan pangan yang mandiri dan berkeadilan.</p>
                <a href="#" class="btn">Baca Selengkapnya</a>
            </div>
            <div class="about-image">
                <img src="https://images.unsplash.com/photo-1586773860418-d37222d8fce3?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80" alt="Kearifan Lokal Indonesia">
            </div>
        </section>

        <!-- Features -->
        <section class="features-section">
            <div class="section-title">
                <h2>Prinsip Dasar Sasi</h2>
                <p>Nilai-nilai inti yang membuat Sasi relevan untuk menjawab tantangan modern</p>
            </div>
            <div class="features">
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-users"></i>
                    </div>
                    <h3>Kolektivitas</h3>
                    <p>Keputusan diambil secara bersama untuk kepentingan bersama, bukan individu.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-leaf"></i>
                    </div>
                    <h3>Keberlanjutan</h3>
                    <p>Menjaga keseimbangan alam untuk generasi mendatang dengan sistem rotasi.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-balance-scale"></i>
                    </div>
                    <h3>Keadilan</h3>
                    <p>Distribusi hasil yang merata di antara seluruh anggota masyarakat.</p>
                </div>
            </div>
        </section>

        <!-- Stats -->
        <section class="stats">
            <div class="container">
                <div class="section-title">
                    <h2>Dampak Positif Implementasi Sasi</h2>
                    <p>Bukti nyata efektivitas sistem Sasi dalam meningkatkan kesejahteraan</p>
                </div>
                <div class="stats-grid">
                    <div class="stat-item">
                        <div class="stat-number">40%</div>
                        <div class="stat-text">Peningkatan Pendapatan Petani</div>
                    </div>
                    <div class="stat-item">
                        <div class="stat-number">60%</div>
                        <div class="stat-text">Pemulihan Ekosistem Laut</div>
                    </div>
                    <div class="stat-item">
                        <div class="stat-number">3x</div>
                        <div class="stat-text">Penguatan Nilai Ekowisata</div>
                    </div>
                    <div class="stat-item">
                        <div class="stat-number">50%</div>
                        <div class="stat-text">Pengurangan Ketergantungan Impor</div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Case Studies -->
        <section class="case-studies">
            <div class="section-title">
                <h2>Studi Kasus Implementasi Sasi</h2>
                <p>Contoh sukses penerapan prinsip Sasi di berbagai daerah di Indonesia</p>
            </div>
            <div class="case-grid">
                <div class="case-card">
                    <div class="case-image">
                        <img src="https://images.unsplash.com/photo-1621359371385-4a6dd5d34c1a?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80" alt="Brebes">
                    </div>
                    <div class="case-content">
                        <h3>Brebes, Jawa Tengah</h3>
                        <p>Petani bawang merah menerapkan prinsip Sasi dengan sistem lumbung bersama, berhasil meningkatkan pendapatan 40% dalam 6 bulan.</p>
                    </div>
                </div>
                <div class="case-card">
                    <div class="case-image">
                        <img src="https://images.unsplash.com/photo-1552733407-5d5c46c3bb3b?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80" alt="Lombok">
                    </div>
                    <div class="case-content">
                        <h3>Lombok, Nusa Tenggara Barat</h3>
                        <p>Komunitas nelayan menerapkan Sasi laut, memulihkan 60% terumbu karang dan meningkatkan pendapatan dari ekowisata.</p>
                    </div>
                </div>
                <div class="case-card">
                    <div class="case-image">
                        <img src="https://images.unsplash.com/photo-1531956534533-0d52f8a8b0c5?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80" alt="Maluku">
                    </div>
                    <div class="case-content">
                        <h3>Maluku</h3>
                        <p>Masyarakat adat menjaga hutan sagu dengan sistem Sasi, menjamin ketahanan pangan lokal dan pelestarian biodiversitas.</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- CTA Section -->
        <section class="cta">
            <h2>Siap Mengadaptasi Kearifan Lokal Ini?</h2>
            <p>Mari bersama-sama menghidupkan kembali kearifan leluhur untuk menciptakan ketahanan pangan yang berkelanjutan dan berkeadilan.</p>
            <a href="#" class="btn">Bergabung dengan Gerakan</a>
        </section>
    </main>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-content">
                <div class="footer-column">
                    <h3>Tentang Sasi 2.0</h3>
                    <p>Platform edukasi dan implementasi kearifan lokal Sasi untuk menjawab tantangan krisis pangan modern dengan pendekatan berkelanjutan.</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="footer-column">
                    <h3>Link Cepat</h3>
                    <ul>
                        <li><a href="#">Beranda</a></li>
                        <li><a href="#">Tentang Sasi</a></li>
                        <li><a href="#">Implementasi</a></li>
                        <li><a href="#">Studi Kasus</a></li>
                        <li><a href="#">Kontak</a></li>
                    </ul>
                </div>
                <div class="footer-column">
                    <h3>Kontak Kami</h3>
                    <ul>
                        <li><i class="fas fa-map-marker-alt"></i> Jakarta, Indonesia</li>
                        <li><i class="fas fa-envelope"></i> info@sasi2.org</li>
                        <li><i class="fas fa-phone"></i> +62 21 1234 5678</li>
                    </ul>
                </div>
            </div>
            <div class="copyright">
                <p>&copy; 2023 Sasi 2.0 - Melestarikan Kearifan Lokal untuk Masa Depan Berkelanjutan</p>
            </div>
        </div>
    </footer>

    <script>
        // Simple animation for stats
        document.addEventListener('DOMContentLoaded', function() {
            const statNumbers = document.querySelectorAll('.stat-number');
            
            // Animate stats when they come into view
            const observer = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        const stat = entry.target;
                        const target = parseInt(stat.textContent);
                        let current = 0;
                        const increment = target / 50;
                        
                        const timer = setInterval(() => {
                            current += increment;
                            if (current >= target) {
                                stat.textContent = target + (stat.textContent.includes('%') ? '%' : 'x');
                                clearInterval(timer);
                            } else {
                                stat.textContent = Math.floor(current) + (stat.textContent.includes('%') ? '%' : 'x');
                            }
                        }, 30);
                        
                        observer.unobserve(stat);
                    }
                });
            }, { threshold: 0.5 });
            
            statNumbers.forEach(stat => {
                observer.observe(stat);
            });
        });
    </script>
</body>
</html>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Premium E-Commerce</title>

    <!-- Fonts & Icons -->
    <link href="[fonts.googleapis.com](https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Playfair+Display:wght@700;800&display=swap)" rel="stylesheet">
    <link rel="stylesheet" href="[cdnjs.cloudflare.com](https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css)">

    <style>
        :root {
            --bg: #ffffff;
            --primary: #1a1a1a;
            --accent: #ff6b35;
            --accent-light: #fff0eb;
            --muted: #666666;
            --card: #ffffff;
            --surface: #f8f9fa;
            --success: #28a745;
            --error: #dc3545;
            --radius: 16px;
            --shadow: 0 10px 40px rgba(0, 0, 0, 0.08);
            --shadow-hover: 0 20px 60px rgba(0, 0, 0, 0.12);
            --container: 1280px;
            --transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html,
        body {
            height: 100%;
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            color: var(--primary);
            background: var(--bg);
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            line-height: 1.6;
        }

        a {
            color: inherit;
            text-decoration: none;
            transition: var(--transition);
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* Enhanced Header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(26, 26, 26, 0.1);
            transition: var(--transition);
        }

        .header-scrolled {
            background: rgba(255, 255, 255, 0.98);
            box-shadow: var(--shadow);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 16px 0;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 12px;
            font-family: 'Playfair Display', serif;
            font-weight: 800;
            font-size: 24px;
            color: var(--primary);
        }

        .brand .accent {
            color: var(--accent);
            position: relative;
        }

        .brand .accent::after {
            content: '';
            position: absolute;
            bottom: 2px;
            left: 0;
            width: 100%;
            height: 3px;
            background: var(--accent);
            border-radius: 2px;
        }

        nav.main-nav {
            display: flex;
            align-items: center;
            gap: 24px;
        }

        nav.main-nav ul {
            display: flex;
            gap: 16px;
            list-style: none;
            align-items: center;
        }

        nav.main-nav li a {
            display: flex;
            gap: 8px;
            align-items: center;
            padding: 12px 16px;
            border-radius: var(--radius);
            color: var(--primary);
            font-weight: 500;
            transition: var(--transition);
            position: relative;
        }

        nav.main-nav li a::before {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            width: 0;
            height: 2px;
            background: var(--accent);
            transition: var(--transition);
            transform: translateX(-50%);
        }

        nav.main-nav li a:hover::before {
            width: 60%;
        }

        nav.main-nav li a:hover {
            color: var(--accent);
        }

        .search {
            display: flex;
            align-items: center;
            gap: 12px;
            background: var(--surface);
            padding: 12px 20px;
            border-radius: 50px;
            min-width: 280px;
            transition: var(--transition);
            border: 2px solid transparent;
        }

        .search:focus-within {
            border-color: var(--accent);
            background: var(--bg);
            box-shadow: 0 0 0 3px rgba(255, 107, 53, 0.1);
        }

        .search input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            font-size: 14px;
            color: var(--primary);
        }

        .search input::placeholder {
            color: var(--muted);
        }

        .icon-btn {
            background: transparent;
            border: 0;
            cursor: pointer;
            color: var(--primary);
            font-size: 18px;
            padding: 8px;
            border-radius: 10px;
            transition: var(--transition);
        }

        .icon-btn:hover {
            background: var(--surface);
            color: var(--accent);
            transform: translateY(-1px);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .cart {
            position: relative;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 8px 12px;
            border-radius: 12px;
            transition: var(--transition);
        }

        .cart:hover {
            background: var(--surface);
        }

        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: linear-gradient(135deg, var(--accent), #ff8c66);
            color: white;
            font-size: 11px;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: inline-grid;
            place-items: center;
            box-shadow: 0 2px 8px rgba(255, 107, 53, 0.3);
        }

        .mobile-toggle {
            display: none;
            border: 0;
            background: transparent;
            font-size: 24px;
            cursor: pointer;
            padding: 8px;
            border-radius: 8px;
            transition: var(--transition);
        }

        .mobile-toggle:hover {
            background: var(--surface);
        }

        /* Enhanced Hero */
        .hero {
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            background: 
                linear-gradient(135deg, rgba(26, 26, 26, 0.8) 0%, rgba(26, 26, 26, 0.6) 100%),
                url('[images.unsplash.com](https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=80)') center/cover no-repeat;
            color: white;
            min-height: 500px;
            padding: 80px 24px;
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: radial-gradient(circle at 30% 70%, rgba(255, 107, 53, 0.2) 0%, transparent 50%);
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 800px;
        }

        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-size: 48px;
            margin: 0 0 16px;
            letter-spacing: -0.02em;
            line-height: 1.2;
            text-shadow: 0 2px 4px rgba(0, 0, 0, 0.3);
        }

        .hero p {
            margin: 0 0 32px;
            opacity: 0.95;
            font-size: 18px;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 12px;
            padding: 16px 32px;
            border-radius: 50px;
            font-weight: 600;
            cursor: pointer;
            border: 0;
            transition: var(--transition);
            font-size: 16px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--accent), #ff8c66);
            color: white;
            box-shadow: 0 4px 15px rgba(255, 107, 53, 0.3);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 25px rgba(255, 107, 53, 0.4);
        }

        .btn-ghost {
            background: transparent;
            border: 2px solid rgba(255, 255, 255, 0.3);
            color: white;
        }

        .btn-ghost:hover {
            background: rgba(255, 255, 255, 0.1);
            border-color: rgba(255, 255, 255, 0.5);
            transform: translateY(-1px);
        }

        .btn-group {
            display: flex;
            gap: 16px;
            justify-content: center;
            flex-wrap: wrap;
        }

        /* Sections */
        .section {
            padding: 80px 0;
        }

        .section .title {
            text-align: center;
            margin-bottom: 48px;
        }

        .section-title {
            font-family: 'Playfair Display', serif;
            font-size: 36px;
            font-weight: 700;
            margin-bottom: 16px;
            color: var(--primary);
        }

        .section-subtitle {
            color: var(--muted);
            font-size: 18px;
            max-width: 600px;
            margin: 0 auto;
        }

        .grid {
            display: grid;
            gap: 24px;
        }

        /* Enhanced Categories */
        .categories {
            grid-template-columns: repeat(6, 1fr);
        }

        .cat-card {
            background: var(--card);
            border-radius: var(--radius);
            padding: 24px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: var(--transition);
            cursor: pointer;
            border: 1px solid rgba(26, 26, 26, 0.1);
        }

        .cat-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-light);
        }

        .cat-card .icon {
            font-size: 32px;
            color: var(--accent);
            margin-bottom: 16px;
            background: var(--accent-light);
            width: 60px;
            height: 60px;
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            transition: var(--transition);
        }

        .cat-card:hover .icon {
            transform: scale(1.1);
        }

        .cat-card h4 {
            margin: 12px 0 8px;
            font-size: 16px;
            font-weight: 600;
        }

        .cat-card .muted {
            font-size: 14px;
            color: var(--muted);
        }

        /* Enhanced Products */
        .products {
            grid-template-columns: repeat(4, 1fr);
        }

        .product {
            background: var(--card);
            border-radius: var(--radius);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            box-shadow: var(--shadow);
            transition: var(--transition);
            border: 1px solid rgba(26, 26, 26, 0.1);
            position: relative;
        }

        .product:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-light);
        }

        .product-badge {
            position: absolute;
            top: 16px;
            left: 16px;
            z-index: 2;
            padding: 8px 12px;
            border-radius: 6px;
            font-weight: 700;
            font-size: 12px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .badge-new {
            background: var(--success);
            color: white;
        }

        .badge-sale {
            background: var(--accent);
            color: white;
        }

        .product-image {
            width: 100%;
            height: 240px;
            object-fit: cover;
            display: block;
            transition: var(--transition);
        }

        .product:hover .product-image {
            transform: scale(1.05);
        }

        .product-body {
            padding: 20px;
            display: flex;
            flex-direction: column;
            gap: 12px;
            flex: 1;
        }

        .product h5 {
            margin: 0;
            font-size: 16px;
            font-weight: 600;
            line-height: 1.4;
        }

        .price-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 8px;
            margin-top: auto;
        }

        .price {
            font-weight: 700;
            color: var(--primary);
            font-size: 18px;
        }

        .old-price {
            color: var(--muted);
            text-decoration: line-through;
            font-weight: 500;
            font-size: 14px;
        }

        .rating {
            color: #ffc107;
            font-size: 14px;
        }

        .product-footer {
            padding: 16px 20px 20px;
            display: flex;
            gap: 12px;
            border-top: 1px solid rgba(26, 26, 26, 0.1);
        }

        .add-btn {
            flex: 1;
            background: linear-gradient(135deg, var(--primary), #333);
            color: white;
            border: 0;
            padding: 12px;
            border-radius: 10px;
            cursor: pointer;
            font-weight: 600;
            transition: var(--transition);
        }

        .add-btn:hover {
            background: linear-gradient(135deg, #333, #555);
            transform: translateY(-1px);
        }

        .wish-btn {
            background: transparent;
            border: 1px solid rgba(26, 26, 26, 0.1);
            padding: 10px;
            border-radius: 10px;
            cursor: pointer;
            transition: var(--transition);
        }

        .wish-btn:hover {
            border-color: var(--accent);
            color: var(--accent);
            background: var(--accent-light);
        }

        /* Enhanced Deal Section */
        .deal {
            display: flex;
            gap: 32px;
            background: linear-gradient(135deg, var(--surface), #f0f4f8);
            border-radius: var(--radius);
            overflow: hidden;
            align-items: stretch;
            box-shadow: var(--shadow);
        }

        .deal-image {
            width: 50%;
            height: 400px;
            object-fit: cover;
            display: block;
        }

        .deal .content {
            padding: 40px;
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .timer {
            display: flex;
            gap: 16px;
            margin: 24px 0;
        }

        .time-box {
            background: var(--primary);
            color: white;
            padding: 16px;
            border-radius: 12px;
            min-width: 80px;
            text-align: center;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .time-box div:first-child {
            font-size: 24px;
            font-weight: 700;
            margin-bottom: 4px;
        }

        .time-box div:last-child {
            font-size: 12px;
            opacity: 0.9;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .deal-price {
            display: flex;
            align-items: center;
            gap: 16px;
            margin-bottom: 16px;
        }

        .deal .price {
            font-size: 32px;
        }

        .deal-discount {
            background: var(--accent);
            color: white;
            padding: 8px 16px;
            border-radius: 20px;
            font-weight: 700;
            font-size: 14px;
        }

        .stock-info {
            background: var(--accent-light);
            color: var(--accent);
            padding: 12px 16px;
            border-radius: 8px;
            font-weight: 600;
            margin-bottom: 24px;
        }

        /* Enhanced Testimonials */
        .testimonials {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 16px 8px;
            scrollbar-width: none;
        }

        .testimonials::-webkit-scrollbar {
            display: none;
        }

        .testimonial {
            min-width: 360px;
            background: white;
            padding: 24px;
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            border: 1px solid rgba(26, 26, 26, 0.1);
        }

        .rating-stars {
            color: #ffc107;
            font-size: 16px;
            margin-bottom: 12px;
        }

        .testimonial p {
            font-style: italic;
            margin-bottom: 16px;
            line-height: 1.6;
        }

        .testimonial-author {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .author-avatar {
            width: 48px;
            height: 48px;
            border-radius: 50%;
            object-fit: cover;
            border: 3px solid var(--accent-light);
        }

        .author-info {
            display: flex;
            flex-direction: column;
        }

        .author-name {
            font-weight: 600;
        }

        .author-role {
            color: var(--muted);
            font-size: 13px;
        }

        /* Enhanced Newsletter */
        .newsletter {
            background: linear-gradient(135deg, var(--primary), #2d2d2d);
            color: white;
            border-radius: var(--radius);
            padding: 48px;
            text-align: center;
            box-shadow: var(--shadow);
        }

        .newsletter h3 {
            font-family: 'Playfair Display', serif;
            font-size: 32px;
            margin-bottom: 16px;
        }

        .newsletter p {
            margin-bottom: 32px;
            opacity: 0.9;
            font-size: 16px;
        }

        .newsletter-form {
            display: flex;
            justify-content: center;
            gap: 12px;
            flex-wrap: wrap;
            max-width: 500px;
            margin: 0 auto;
        }

        .newsletter input {
            padding: 16px 20px;
            border-radius: 50px;
            border: 0;
            flex: 1;
            min-width: 300px;
            font-size: 16px;
            outline: none;
        }

        .newsletter button {
            padding: 16px 32px;
        }

        /* Enhanced Footer */
        footer {
            background: var(--surface);
            padding: 60px 0 30px;
            margin-top: 60px;
        }

        .footer-content {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr;
            gap: 48px;
            margin-bottom: 48px;
        }

        .footer-brand {
            max-width: 400px;
        }

        .footer-brand .brand {
            margin-bottom: 16px;
        }

        .footer-description {
            color: var(--muted);
            line-height: 1.6;
            margin-bottom: 24px;
        }

        .footer-social {
            display: flex;
            gap: 12px;
        }

        .social-link {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            height: 40px;
            background: var(--bg);
            border-radius: 10px;
            color: var(--primary);
            transition: var(--transition);
        }

        .social-link:hover {
            background: var(--accent);
            color: white;
            transform: translateY(-2px);
        }

        .footer-column h4 {
            font-weight: 600;
            margin-bottom: 20px;
            font-size: 18px;
        }

        .footer-links {
            list-style: none;
        }

        .footer-links li {
            margin-bottom: 12px;
        }

        .footer-links a {
            color: var(--muted);
            transition: var(--transition);
        }

        .footer-links a:hover {
            color: var(--accent);
            padding-left: 4px;
        }

        .footer-bottom {
            text-align: center;
            padding-top: 30px;
            border-top: 1px solid rgba(26, 26, 26, 0.1);
            color: var(--muted);
            font-size: 14px;
        }

        /* Responsive Design */
        @media (max-width: 1200px) {
            .categories {
                grid-template-columns: repeat(3, 1fr);
            }
            
            .products {
                grid-template-columns: repeat(3, 1fr);
            }
            
            .footer-content {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media (max-width: 900px) {
            nav.main-nav {
                display: none;
            }
            
            .mobile-toggle {
                display: inline-block;
            }
            
            .products {
                grid-template-columns: repeat(2, 1fr);
            }
            
            .categories {
                grid-template-columns: repeat(2, 1fr);
            }
            
            .deal {
                flex-direction: column;
            }
            
            .deal-image {
                width: 100%;
                height: 300px;
            }
            
            .search {
                min-width: 200px;
            }
        }

        @media (max-width: 600px) {
            .hero h1 {
                font-size: 32px;
            }
            
            .hero p {
                font-size: 16px;
            }
            
            .btn-group {
                flex-direction: column;
                align-items: center;
            }
            
            .products {
                grid-template-columns: 1fr;
            }
            
            .categories {
                grid-template-columns: 1fr;
            }
            
            .footer-content {
                grid-template-columns: 1fr;
                gap: 32px;
            }
            
            .section {
                padding: 60px 0;
            }
            
            .section-title {
                font-size: 28px;
            }
            
            .newsletter-form {
                flex-direction: column;
            }
            
            .newsletter input {
                min-width: auto;
            }
        }

        /* Animation Utilities */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .fade-in {
            animation: fadeIn 0.6s ease-out;
        }

        @keyframes pulse {
            0% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.05);
            }
            100% {
                transform: scale(1);
            }
        }

        .pulse {
            animation: pulse 2s infinite;
        }

        /* Loading States */
        .loading {
            opacity: 0.6;
            pointer-events: none;
        }

        .loading::after {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 20px;
            height: 20px;
            border: 2px solid var(--accent-light);
            border-top: 2px solid var(--accent);
            border-radius: 50%;
            animation: spin 1s linear infinite;
        }

        @keyframes spin {
            0% { transform: translate(-50%, -50%) rotate(0deg); }
            100% { transform: translate(-50%, -50%) rotate(360deg); }
        }

        /* Small utilities */
        .muted {
            color: var(--muted);
        }

        .text-center {
            text-align: center;
        }

        .mb-4 {
            margin-bottom: 24px;
        }

        .mt-4 {
            margin-top: 24px;
        }
    </style>
</head>

<body>
    <header id="mainHeader">
        <div class="container header-inner" role="banner">
            <div style="display:flex;align-items:center;gap:20px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu"><i class="fas fa-bars"></i></button>
                <a class="brand" href="#">
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Primary navigation">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li class="has-dropdown" aria-haspopup="true">
                        <a href="#" id="catMenuBtn"><i class="fas fa-th-large"></i> Categories <i class="fas fa-chevron-down" style="font-size:12px;"></i></a>
                    </li>
                    <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#about"><i class="fas fa-info-circle"></i> About</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:16px;">
                <div class="search" role="search" aria-label="Product search">
                    <input type="search" id="searchInput" placeholder="Search products, categories..." aria-label="Search products" />
                    <button class="icon-btn" id="searchBtn" aria-label="Search"><i class="fas fa-search"></i></button>
                </div>

                <div class="header-actions" role="group" aria-label="Header actions">
                    <a class="icon-btn" title="Account" href="#"><i class="far fa-user"></i></a>
                    <a class="icon-btn" title="Wishlist" href="#"><i class="far fa-heart"></i></a>
                    <a class="cart" href="#" id="cartBtn" title="View cart" aria-label="Cart">
                        <i class="fas fa-shopping-cart"></i>
                        <span class="cart-count" id="cartCount">0</span>
                    </a>
                </div>
            </div>
        </div>

        <!-- Mobile menu -->
        <div id="mobileMenu" style="display:none; background:var(--bg); border-top:1px solid rgba(26,26,26,0.1);">
            <div class="container" style="padding:16px 0;">
                <nav aria-label="Mobile navigation">
                    <ul style="list-style:none;padding:0;margin:0;display:flex;flex-direction:column;gap:12px;">
                        <li><a href="#" style="display:block;padding:12px 0;font-weight:500;">Home</a></li>
                        <li><a href="#" style="display:block;padding:12px 0;font-weight:500;">Categories</a></li>
                        <li><a href="#" style="display:block;padding:12px 0;font-weight:500;">Trending</a></li>
                        <li><a href="#deals" style="display:block;padding:12px 0;font-weight:500;">Deals</a></li>
                        <li><a href="#about" style="display:block;padding:12px 0;font-weight:500;">About</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero -->
        <section class="hero" role="img" aria-label="Hero banner">
            <div class="hero-content">
                <h1>Summer New Collection — Premium Picks</h1>
                <p>Discover the latest trends in fashion, technology and accessories — curated just for you. Enjoy limited-time deals and free shipping on selected items.</p>
                <div class="btn-group">
                    <button class="btn btn-primary" id="shopNow">Shop Now <i class="fas fa-arrow-right"></i></button>
                    <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
                </div>
            </div>
        </section>

        <!-- Categories -->
        <section class="section container" aria-labelledby="cat-title">
            <div class="title" id="cat-title">
                <h2 class="section-title">Shop by Category</h2>
                <p class="section-subtitle">Browse through our wide range of products across curated categories.</p>
            </div>

            <div class="grid categories" id="categoriesGrid" aria-live="polite"></div>
        </section>

        <!-- Products -->
        <section class="section container" aria-labelledby="prod-title">
            <div class="title" id="prod-title">
                <h2 class="section-title">Trending Products</h2>
                <p class="section-subtitle">Popular picks based on recent activity.</p>
            </div>

            <div class="grid products" id="productsGrid" aria-live="polite"></div>
        </section>

        <!-- Deals -->
        <section id="deals" class="section container" aria-labelledby="deals-title">
            <div class="title" id="deals-title">
                <h2 class="section-title">Flash Sale</h2>
                <p class="section-subtitle">Limited-time offers — don't miss out!</p>
            </div>

           

<%@ Page Title="" Language="C#" MasterPageFile="~/Daily Deli Master Page.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Daily_Deli_E_Commerce.Admin" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <link href="css/StyleSheet.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">

    <style>
        /* Hover effect for all feature cards */
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 24px rgba(0,0,0,0.15);
            transition: all 0.25s ease;
        }

        /* Smooth transition back */
        .card {
            transition: all 0.25s ease;
        }

        body {
            background: #d9d9d9; /* light dull black */
            font-family: "Segoe UI", sans-serif;
        }

        /* Grid structure like product cards */
        .cards-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 1.5rem;
        }

        .glass-card {
            background: rgba(255,255,255,0.08);
            border: 1px solid rgba(255,255,255,0.12);
            border-radius: 16px;
            padding: 1.5rem;
            text-align: center;
            transition: transform .2s ease, box-shadow .2s ease;
        }

            .glass-card:hover {
                transform: translateY(-3px);
                box-shadow: 0 10px 30px rgba(0,0,0,0.35);
            }

        .icon-top {
            width: 70px;
            height: 70px;
            border-radius: 16px;
            display: grid;
            place-items: center;
            margin: 0 auto 10px auto;
            background: rgba(255,255,255,.12);
        }

            .icon-top i {
                font-size: 2rem;
                color: #fff;
            }

        .card-title {
            color: #f1f1f1;
            font-size: 1.05rem;
            font-weight: 600;
            margin-bottom: 1rem;
        }

        .btn-orange {
            background: linear-gradient(180deg, #ffb463, #ff8a00);
            border: none;
            color: #1a1a1d;
            font-weight: 600;
            padding: 6px 0;
            border-radius: 8px;
            transition: all .2s ease;
        }

            .btn-orange:hover {
                filter: brightness(.95);
                box-shadow: 0 6px 16px rgba(255,138,0,0.5);
            }

        /* Admin info card on left */
        .admin-card {
            background: rgba(255,255,255,0.1);
            border: 1px solid rgba(255,255,255,0.15);
            border-radius: 16px;
            padding: 1.5rem;
            margin-bottom: 2rem;
            color: #fff;
        }

        .admin-avatar {
            width: 70px;
            height: 70px;
            border-radius: 50%;
            background: rgba(0,0,0,0.2); /* darker background */
            display: grid;
            place-items: center;
            font-size: 2rem;
            margin-bottom: 1rem;
            color: #000; /* icon stays black */
        }


        .admin-features {
            list-style-type: disc; /* bullet points */
            padding-left: 20px; /* space before bullets */
            margin-top: 10px;
            color: #000; /* text color black */
            font-size: 0.95rem;
        }

            .admin-features li {
                margin-bottom: 8px;
                line-height: 1.4;
            }

            .admin-features span {
                color: #555; /* slightly lighter grey for details */
                font-size: 0.9rem;
            }


        .admin-name {
            font-size: 1.2rem;
            font-weight: 700;
            margin-bottom: 5px;
            color: #000; 
        }

        .admin-role {
            font-size: 0.9rem;
            color: #bbb;
            margin-bottom: 1.5rem;
        }



        .admin-card {
           background: rgba(255,255,255,0.07);
           border: 1px solid rgba(255,255,255,0.3);
            border-radius: 20px;
            padding: 2.5rem;
            min-height: 780px;
        }

        .admin-avatar {
            width: 120px;
            height: 120px;
            font-size: 3rem;
            margin: 0 auto 1rem auto;
        }

        .big-icon {
            font-size: 4rem; 
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container py-4">
        <div class="row">

            <div class="col-12 col-md-3">
                <div class="admin-card text-center">
                    <div class="admin-avatar"><i class="bi bi-person-gear"></i></div>
                    <div class="admin-name">Administrator</div>

                    <div class="admin-role">Name : </div>

                    <div class="admin-role">Surname : </div>

                    <div class="admin-role">Gender : </div>

                    <div class="admin-name">Roles</div>
                    <ul class="admin-features">
                        <li>Dashboard &amp; Sales Tracking</li>
                        <li>Product &amp; Catalog Management </li>
                        <li>Order &amp; Fulfilment Management </li>
                        <li>User Profile &amp; Roles Management </li>
                        <li>Recipes &amp; Meal Plans </li>
                    </ul>
                    <asp:Button ID="Button2" runat="server" Text="View Profile"
                                CssClass="btn btn-lg w-100"
                                Style="background: linear-gradient(90deg, #ff9966, #ff5e62); border: none; color: #fff; font-weight: 600; border-radius: 25px;" OnClick="Button2_Click"
                                />
                </div>
            </div>


            <div class="col-12 col-md-9">
                <div class="cards-grid">

                    <div class="col">
                        <div class="card h-100 border-0 shadow-sm text-center p-4"
                            style="border-radius: 16px; max-width: 500px; margin: 0 auto;">

                            <div class="mb-3">
                                <i class="bi bi-box-seam text-success big-icon"></i>
                            </div>

                            <h5 class="fw-bold text-dark mb-2">Product & Catalog Management</h5>

                            <!-- Description -->
                            <p class="text-muted mb-4">
                                Manage products, nutrition, allergens, dietary tags, categories, and stock.
                            </p>

                            <asp:Button ID="Button1" runat="server" Text="Open"
                                CssClass="btn btn-lg w-50"
                                Style="background: linear-gradient(90deg, #ff9966, #ff5e62); border: none; color: #fff; font-weight: 600; border-radius: 25px;"
                                 />

                        </div>
                    </div>

                    <!-- Products & Catalog Card -->
                    <div class="col">
                        <div class="card h-100 border-0 shadow-sm text-center p-4"
                            style="border-radius: 16px; max-width: 500px; margin: 0 auto;">

                            <!-- Icon -->
                            <div class="mb-3">
                                <i class="bi bi-box-seam text-success" style="font-size: 4rem;"></i>
                            </div>

                            <!-- Title -->
                            <h5 class="fw-bold text-dark mb-2">Add Products & Catalog</h5>

                            <!-- Description -->
                            <p class="text-muted mb-4">
                                Browse and maintain your product listings, categories, and pricing.
                            </p>
                           
                            </br>
                            <asp:Button ID="btnProducts" runat="server" Text="Open"
                                CssClass="btn btn-lg w-50"
                                Style="background: linear-gradient(90deg, #ff9966, #ff5e62); border: none; color: #fff; font-weight: 600; border-radius: 25px;"
                                OnClick="btnProducts_Click" />

                        </div>
                    </div>

                    <!-- Orders & Fulfilment Card -->
                    <div class="col">
                        <div class="card h-100 border-0 shadow-sm text-center p-4"
                            style="border-radius: 16px; max-width: 500px; margin: 0 auto;">

                            <!-- Icon -->
                            <div class="mb-3">
                                <i class="bi bi-truck text-primary" style="font-size: 4rem;"></i>
                            </div>

                            <!-- Title -->
                            <h5 class="fw-bold text-dark mb-2">Orders & Fulfilment</h5>

                            <!-- Description -->
                            <p class="text-muted mb-4">
                                Manage customer orders, track fulfilment, and process returns.
                            </p>
                             </br>

                            </br>
                            <!-- ASP Button -->
                            <asp:Button ID="btnOrders" runat="server" Text="Open"
                                CssClass="btn btn-lg w-50"
                                Style="background: linear-gradient(90deg, #ff9966, #ff5e62); border: none; color: #fff; font-weight: 600; border-radius: 25px;"
                                 />

                        </div>
                    </div>

                    <div class="col">
                        <div class="card h-100 border-0 shadow-sm text-center p-4"
                            style="border-radius: 16px; max-width: 500px; margin: 0 auto;">

                            <!-- Icon -->
                            <div class="mb-3">
                                <i class="bi bi-people text-info" style="font-size: 4rem;"></i>
                            </div>

                            <!-- Title -->
                            <h5 class="fw-bold text-dark mb-2">User Profiles & Roles</h5>

                            <!-- Description -->
                            <p class="text-muted mb-4">
                                Manage user accounts, roles, dietary preferences, and loyalty balances.
                            </p>

                            <!-- ASP Button -->
                            <asp:Button ID="btnUsers" runat="server" Text="Open"
                                CssClass="btn btn-lg w-50"
                                Style="background: linear-gradient(90deg, #ff9966, #ff5e62); border: none; color: #fff; font-weight: 600; border-radius: 25px;"
                               OnClick="btnUser_Profile" />

                        </div>
                    </div>

                    <!-- Recipes & Meal Plans -->
                    <div class="col">
                        <div class="card h-100 border-0 shadow-sm text-center p-4"
                            style="border-radius: 16px; max-width: 500px; margin: 0 auto;">

                            <!-- Icon -->
                            <div class="mb-3">
                                <i class="bi bi-journal-text text-danger" style="font-size: 4rem;"></i>
                            </div>

                            <!-- Title -->
                            <h5 class="fw-bold text-dark mb-2">Recipes & Meal Plans</h5>

                            <!-- Description -->
                            <p class="text-muted mb-4">
                                Create quick recipes, organize weekly meal plans, and link ingredients.
                            </p>


                            <asp:Button ID="btnRecipes" runat="server" Text="Open"
                                CssClass="btn btn-lg w-50"
                                Style="background: linear-gradient(90deg, #ff9966, #ff5e62); border: none; color: #fff; font-weight: 600; border-radius: 25px;"
                                />

                        </div>
                    </div>

                    <!-- Discounts & Loyalty -->
                    <div class="col">
                        <div class="card h-100 border-0 shadow-sm text-center p-4"
                            style="border-radius: 16px; max-width: 500px; margin: 0 auto;">

                            <div class="mb-3">
                                <i class="bi bi-gift text-secondary" style="font-size: 4rem;"></i>
                            </div>

                            <h5 class="fw-bold text-dark mb-2">Discounts & Loyalty</h5>

                            <p class="text-muted mb-4">
                                Configure discount codes, promotions, and customer loyalty rewards.
                            </p>
                            </br>
                            
                            <asp:Button ID="btnDiscounts" runat="server" Text="Open"
                                CssClass="btn btn-lg w-50"
                                Style="background: linear-gradient(90deg, #ff9966, #ff5e62); border: none; color: #fff; font-weight: 600; border-radius: 25px;"
                                />

                        </div>
                    </div>



                </div>
            </div>
        </div>
    </div>


</asp:Content>

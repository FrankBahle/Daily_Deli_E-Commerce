<%@ Page Title="" Language="C#" MasterPageFile="~/Daily Deli Master Page.Master" AutoEventWireup="true" CodeBehind="ChechOut.aspx.cs" Inherits="Daily_Deli_E_Commerce.ChechOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="<%= ResolveUrl("~/css/StyleSheet.css") %>?v=1" rel="stylesheet" />
     <link rel="stylesheet" href="css/StyleSheet.css" />

    <style>
        
/* RESET */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
}

body {
    background: #fff;
    color: #000;
    font-size: 14px;
}

/* PROGRESS BAR */
/* Progress with a center line through the dots */
.progress {
    --dot: 18px; /* circle size */
    --line: 2px; /* line thickness */
    display: flex;
    justify-content: center;
    align-items: flex-start; /* keep circles at the top so we can align the line */
    gap: 180px; /* space between steps */
    position: relative;
    margin: 24px auto;
    width: 100%;
    height:150px;
}

    /* the line that passes through the center of all circles */
    .progress::before {
        content: "";
        position: absolute;
        left: calc(var(--dot) / 2); /* start at center of first dot */
        right: calc(var(--dot) / 2); /* end at center of last dot */
        top: calc(var(--dot) / 2 - var(--line) / 2); /* vertically centered on dots */
        height: var(--line);
        background: #000;
        z-index: 0;
    }

    .progress div {
        display: flex;
        flex-direction: column;
        align-items: center;
        position: relative;
        z-index: 1; /* keep dots above the line */
    }

    .progress span.circle {
        width: var(--dot);
        height: var(--dot);
        border-radius: 50%;
        border: 1px solid #000;
        display: inline-block;
        margin-bottom: 6px;
        background: #fff;
    }

    .progress .active span.circle {
        background: #000;
        border-color: #000;
    }


/* MAIN LAYOUT */
.checkout-container {
    display: flex;
    justify-content: space-between;
    max-width: 100%;
    margin: 30px auto;
    gap: 40px;
}

/* LEFT FORM */
.checkout-form {
    flex: 2;
}

    .checkout-form h2 {
        font-size: 14px;
        font-weight: bold;
        margin: 20px 0 10px;
    }

    .checkout-form input,
    .checkout-form select {
        width: 100%;
        padding: 12px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 3px;
        font-size: 14px;
    }

    .checkout-form .two-col {
        display: flex;
        gap: 15px;
    }

    .checkout-form button {
        background: #222;
        color: #fff;
        border: none;
        padding: 12px 30px;
        font-size: 14px;
        cursor: pointer;
        margin-top: 15px;
    }

        .checkout-form button:hover {
            background: #000;
        }

/* RIGHT CART */
.checkout-cart {
    flex: 1.7;
    border: 8px solid #eee;
    padding: 20px;
    border-radius: 3px;
    background: #fafafa;
}
h1 {
    color:dimgrey;
}
    .checkout-cart img {
        width: 70px;
        margin-right: 15px;
    }

.cart-item {
    display: flex;
    align-items: center;
    margin-bottom: 20px;
}

    .cart-item p {
        margin: 0;
        font-size: 14px;
    }

    .cart-item .price {
        margin-left: auto;
        font-weight: bold;
    }

.discount {
    display: flex;
    gap: 10px;
    margin: 20px 0;
}

    .discount input {
        flex: 1;
    }

    .discount button {
        background: #777;
        color: #fff;
        padding: 10px 20px;
        border: none;
    }

.totals {
    border-top: 1px solid #ddd;
    padding-top: 15px;
}

    .totals p {
        display: flex;
        justify-content: space-between;
        margin: 8px 0;
    }

        .totals .total {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     

    <div class="progress">
        <div class="active"><span class="circle"></span>CUSTOMER INFO</div>
        <div class="active"><span class="circle"></span>SHIPPING METHOD</div>
        <div><span class="circle"></span>PAYMENT INFO</div>
    </div>

    <div class="checkout-container">
        <!-- LEFT FORM -->
        <div class="checkout-form">
            <h2>CUSTOMER INFO</h2>
            <input type="email" placeholder="Email" />

            <h2>SHIPPING ADDRESS</h2>
            <div class="two-col">
                <input type="text" placeholder="First Name" />
                <input type="text" placeholder="Last Name" />
            </div>
            <input type="text" placeholder="Company (Optional)" />
            <input type="text" placeholder="Address" />
            <input type="text" placeholder="Apt, Suite, Etc (Optional)" />
            <input type="text" placeholder="City" />
            <select>
                <option>Lithuania</option>
                <option>South Africa</option>
                <option>USA</option>
            </select>
            <div class="two-col">
                <input type="text" placeholder="Postal Code" />
                <input type="text" placeholder="Telephone" />
            </div>
            <br />
            <button >Continue</button>
        </div>

        <!-- RIGHT CART -->
        
        <div class="checkout-cart">
            <center><h1>Cart</h1></center>
            <hr />
            <div class="cart-item">
                <img src="./img/CheeseBurger.jpeg" alt="Watch" />
                <p>Cheeseburger</p>
                <span class="price">R200</span>
            </div>
            <div class="cart-item">
                <img src="./img/Sushi Roll.jpeg" alt="Watch" />
                <p>Sushi Roll</p>
                <span class="price">R100</span>
            </div>
            <div class="cart-item">
                <img src="./img/Pizza.jpg" alt="Watch" />
                <p>Pizza Margherita</p>
                <span class="price">R100</span>
            </div>

            <div class="discount">
                <input type="text" placeholder="Discount Code" />
                <button>Apply</button>
            </div>

            <div class="totals">
                <p><span>Item Subtotal</span><span>R400</span></p>
                <p><span>VAT</span><span>R30</span></p>
                <p><span>Shipping</span><span>R50</span></p>
                <p class="total"><span>Total</span><span>R480</span></p>
            </div>
        </div>
    </div>
</asp:Content>

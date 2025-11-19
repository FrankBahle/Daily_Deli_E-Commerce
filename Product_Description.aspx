<%@ Page Title="" Language="C#" MasterPageFile="~/Daily Deli Master Page.Master" AutoEventWireup="true"
    CodeBehind="Product_Description.aspx.cs" Inherits="Daily_Deli_E_Commerce.Product_Description" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="css/StyleSheet.css" />
        <title>About Product</title>
    </asp:Content>

    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container-fluid min-vh-100">
            <div class="row align-items-center justify-content-center text-center" style="min-height: 100vh;">

                <div class="col-md-6 d-flex justify-content-center border-end">
                    <div class="card rounded-5 overflow-hidden shadow"
                        style="max-height: 500px; max-width: 800px; cursor: zoom-in;">
                        <asp:Image ID="MainImage" runat="server" ClientIDMode="Static"
                            ImageUrl="https://www.nhlbi.nih.gov/sites/default/files/styles/16x9_crop/public/2025-03/Ultraprocessed%20foods%20display%202%20framed%20-%20shutterstock_2137640529_r.jpg?h=ab94ba44&amp;itok=yrOIN-8T"
                            CssClass="img-fluid h-100 w-100" AlternateText="Ultra-processed foods display"
                            data-bs-toggle="modal" data-bs-target="#imageModal" />
                    </div>
                </div>

                <div class="col-md-6 d-flex justify-content-center align-items-center">
                    <div class="product-info card border-0" style="max-width: 520px;">
                        <div class="card-body text-start">

                            <div class="d-flex gap-2 mb-2">
                                <span
                                    class="badge bg-secondary-subtle text-secondary-emphasis border border-secondary-subtle"
                                    data-bs-toggle="tooltip" title="CategoryID from Products table">Category #<span
                                        id="p-category">12</span>
                                </span>
                                <span class="badge bg-success-subtle text-success-emphasis border border-success-subtle"
                                    id="p-status" data-bs-toggle="tooltip" title="IsActive">Active</span>
                            </div>

                            <h2 class="h1 fw-semibold mb-2" id="p-name">Butter Chicken 750g Frozen</h2>

                            <div class="d-flex align-items-baseline gap-3 mb-3">
                                <div class="display-6 fw-bold" id="p-price" data-price="140">R 140.00</div>
                                <small class="text-body-secondary">Tax included</small>
                            </div>

                            <div class="d-flex flex-wrap align-items-center gap-3 mb-3">
                                <div class="input-group" style="width: 180px;">
                                    <asp:Button ID="Button1" runat="server" ClientIDMode="Static"
                                        CssClass="btn btn-outline-secondary" Text="−" UseSubmitBehavior="false"
                                        aria-label="Decrease" />
                                    <asp:TextBox ID="qty" runat="server" ClientIDMode="Static"
                                        CssClass="form-control text-center" TextMode="Number" Text="1" min="1" step="1"
                                        aria-label="Quantity"></asp:TextBox>
                                    <asp:Button ID="Button2" runat="server" ClientIDMode="Static"
                                        CssClass="btn btn-outline-secondary" Text="+" UseSubmitBehavior="false"
                                        aria-label="Increase" />
                                </div>

                                <asp:Button ID="Button3" runat="server" ClientIDMode="Static"
                                    CssClass="btn btn-outline-dark px-4" Text="Add to cart" UseSubmitBehavior="false"
                                    type="button" />

                                <div class="ms-auto text-body-secondary small">
                                    Total: <strong id="p-total">R 140.00</strong>
                                </div>
                            </div>

                            <div class="d-flex align-items-start gap-2 mb-3">
                                <span class="text-success-emphasis">✔</span>
                                <div class="small">
                                    <span id="p-stock" data-stock="48">In stock (48)</span><br />
                                    <span class="text-body-secondary">Usually ready in 24 hours</span>
                                </div>
                            </div>

                            <div class="mb-3">
                                <asp:Button ID="Button4" runat="server" ClientIDMode="Static"
                                    CssClass="btn btn-link p-0 text-decoration-none" Text="View product details"
                                    UseSubmitBehavior="false" data-bs-toggle="collapse" data-bs-target="#p-desc"
                                    aria-expanded="false" aria-controls="p-desc" />

                                <div class="mt-2 rounded-3 bg-body-tertiary p-3">
                                    <div class="peek mb-2">
                                        <p class="mb-2" id="p-description">
                                            A generous 750 g of tender chicken in a slow-simmered tomato and cream
                                            sauce, finished with garam masala and gentle chilli warmth. Our Butter
                                            Chicken is batch-cooked for depth of flavour, then blast-frozen to lock
                                            in freshness—ready to heat for a no-fuss midweek meal or weekend treat.
                                            Expect a silky, restaurant-style gravy that coats every piece, with
                                            bright notes of fenugreek and coriander coming through on the finish.
                                        </p>
                                    </div>

                                    <div class="collapse" id="p-desc">
                                        <p class="mb-2">
                                            Serve with warm naan, basmati rice, or a crisp cucumber raita.
                                            From frozen, heat gently on the stovetop or in the microwave, stirring
                                            occasionally until piping hot throughout (see pack for times).
                                            Suitable for home freezing; once thawed, do not refreeze.
                                        </p>
                                        <ul class="mb-0 small text-body-secondary">
                                            <li>Net weight: 750 g (2–3 servings)</li>
                                            <li>Allergens: Dairy</li>
                                            <li>Ingredients: Chicken, tomato, cream, butter, onion, ginger, garlic,
                                                spices (incl. garam masala, paprika, cumin), salt, sugar.</li>
                                            <li>Best before: See pack | Country of origin: South Africa</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="d-flex flex-wrap gap-3 small text-body-secondary">
                                <span>Created: <time id="p-created">2025-03-01</time></span>
                                <span>Updated: <time id="p-updated">2025-08-10</time></span>
                                <span class="ms-auto">ProductID: <span id="p-id">1024</span></span>
                            </div>


                        </div>

                        <br />
                        <br />
                        <asp:Button ID="Button6" runat="server" ClientIDMode="Static"
                            CssClass="btn btn-outline-dark btn-sm px-2 py-1" Text="🏠 Back Home" Width="150px"
                            UseSubmitBehavior="false" type="button" />
                        <br />
                        <asp:Button ID="Button7" runat="server" ClientIDMode="Static"
                            CssClass="btn btn-outline-dark btn-sm px-2 py-1" Text="🛒 View Cart" Width="150px"
                            UseSubmitBehavior="false" type="button" />



                    </div>
                </div>

            </div>
        </div>
        <div class="modal fade" id="imageModal" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content bg-transparent border-0">
                    <div class="modal-header border-0">
                        <asp:Button ID="Button5" runat="server" ClientIDMode="Static"
                            CssClass="btn-close btn-close-white ms-auto" UseSubmitBehavior="false"
                            data-bs-dismiss="modal" aria-label="Close" />
                    </div>

                    <div class="modal-body p-0 position-relative">
                        <asp:Image ID="modalImage" runat="server" ClientIDMode="Static"
                            ImageUrl="https://www.nhlbi.nih.gov/sites/default/files/styles/16x9_crop/public/2025-03/Ultraprocessed%20foods%20display%202%20framed%20-%20shutterstock_2137640529_r.jpg?h=ab94ba44&amp;itok=yrOIN-8T"
                            CssClass="img-fluid rounded-5 d-block mx-auto" AlternateText="Ultra-processed foods display"
                            Style="max-height: 90vh;" />

                        <div class="modal-caption rounded-bottom-5" id="modalCaption">
                            <div class="d-flex justify-content-between align-items-start mb-1">
                                <h3 class="h4 mb-0" id="cap-name">Butter Chicken 750g Frozen</h3>
                                <div class="fw-semibold" id="cap-price">R 140.00</div>
                            </div>
                            <p class="mb-2 small" id="cap-summary">
                                A generous 750 g of tender chicken in a slow-simmered tomato and cream sauce, finished
                                with garam masala.
                            </p>
                            <div class="caption-meta text-white-50">
                                <span id="cap-stock">In stock (48)</span>
                                <span class="d-none d-sm-inline">•</span>
                                <span id="cap-category">Category #12</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <script>
            document.querySelectorAll('[data-bs-toggle="tooltip"]').forEach(el => new bootstrap.Tooltip(el));
            addBtn.addEventListener('click', () => {
                addBtn.classList.add('btn-dark'); addBtn.textContent = 'Added ✔';
                setTimeout(() => { addBtn.classList.remove('btn-dark'); addBtn.textContent = 'Add to cart'; }, 1200);
            });

            (function () {
                const btn = document.getElementById('toggle-desc');
                const el = document.getElementById('p-desc');
                if (!btn || !el) return;
                el.addEventListener('shown.bs.collapse', () => btn.textContent = 'Hide product details');
                el.addEventListener('hidden.bs.collapse', () => btn.textContent = 'View product details');
            })();

            const imageModal = document.getElementById('imageModal');
            imageModal.addEventListener('show.bs.modal', function () {
                const name = document.getElementById('p-name')?.textContent?.trim() || '';
                const price = document.getElementById('p-price')?.textContent?.trim() || '';
                const stock = document.getElementById('p-stock')?.textContent?.trim() || '';
                const cat = document.getElementById('p-category')?.textContent?.trim() || '';
                const desc = document.getElementById('p-description')?.textContent?.trim() || '';

                function shortify(t, n) {
                    if (!t) return '';
                    if (t.length <= n) return t;
                    const cut = t.slice(0, n);
                    return cut.slice(0, cut.lastIndexOf(' ')) + '…';
                }

                document.getElementById('cap-name').textContent = name || 'Product';
                document.getElementById('cap-price').textContent = price || '';
                document.getElementById('cap-summary').textContent = shortify(desc, 160);
                document.getElementById('cap-stock').textContent = stock || '';
                document.getElementById('cap-category').textContent = 'Category #' + (cat || '');
            });
        </script>


    </asp:Content>
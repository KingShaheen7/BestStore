
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) { myIndex = 1 }
    x[myIndex - 1].style.display = "block";
    setTimeout(carousel, 4000);
}
function showInfoDiv(product) {
    // Hide add to cart div
    document.getElementById('addToCartDiv').style.display = 'none';

    // Populate product details
    var productInfoDiv = document.getElementById('productInfoContent');
    productInfoDiv.innerHTML = `
        <p><strong>Name:</strong> ${product.Name}</p>
        <p><strong>Brand:</strong> ${product.Brand}</p>
        <p><strong>Category:</strong> ${product.Category}</p>
        <p><strong>Price:</strong> ${product.Price}$</p>
        <p><strong>Created At:</strong> ${new Date(product.CreatedAt).toLocaleDateString()}</p>
        <img src="/Products/${product.ImageFileName}" style="max-width:200px;" />
    `;

    // Show the product info div
    document.getElementById('infoDiv').style.display = 'block';
}

function showAddToCartDiv(product) {
    // Hide product info div
    document.getElementById('infoDiv').style.display = 'none';

    // Populate add to cart section
    var addToCartDiv = document.getElementById('addToCartContent');
    addToCartDiv.innerHTML = `
        <p><strong>Product:</strong> ${product.Name}</p>
        <p><strong>Price:</strong> ${product.Price}$</p>
        <img src="/Products/${product.ImageFileName}" style="max-width:200px;padding-bottom:15px;" />
        <div class="row mb-3">
				<label class="col-sm-4 col-form-label"><strong>Quantity</strong></label>
				<div class="col-sm-8">
					<input class="form-control" asp-for="Cuantity" type="number" min="1" style="border-radius: 8px; box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1); font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;" required />
					<span asp-validation-for="Cuantity" class="text-danger"></span>
				</div>
		</div>
        <button class="btn btn-success" onclick="addToCart(${product.Id});">Add to Cart</button>
    `;

    // Show the add to cart div
    document.getElementById('addToCartDiv').style.display = 'block';
}

function addToCart(productId) {
    // Implement the logic to add the product to the cart
    alert('Product ' + productId + ' added to cart.');
}


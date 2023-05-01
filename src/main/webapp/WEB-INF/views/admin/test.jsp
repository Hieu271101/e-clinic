<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="/WEB-INF/views/variables.jsp"></jsp:include>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Cart</title>
</head>
<body>
    <h1>Cart</h1>
    <table>
        <thead>
            <tr>
                <th>Item Name</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Total</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <tr th:each="item : ${cart.items}">
                <td th:text="${item.key}"></td>
                <td>
                    <input type="number" min="1" th:value="${item.value}" th:name="${item.key}">
                </td>
                <td th:text="${item.price}"></td>
                <td th:text="${item.total}"></td>
                <td>
                    <button type="button" onclick="removeItem(this)" th:data-name="${item.key}">Remove</button>
                </td>
            </tr>
        </tbody>
    </table>
    <p>Total Price: <span th:text="${cart.totalPrice}"></span></p>
    <form method="post" action="/cart/add">
        <label for="itemName">Item Name:</label>
        <input type="text" id="itemName" name="itemName">
        <label for="quantity">Quantity:</label>
        <input type="number" id="quantity" name="quantity">
        <button type="submit">Add to Cart</button>
    </form>
    <button type="button" onclick="updateCart()">Update Cart</button>
</body>
<table>
  <tr>
    <th>Item</th>
    <th>Price</th>
    <th>Quantity</th>
    <th>Total</th>
  </tr>
  <tr>
    <td>Product 1</td>
    <td>$10</td>
    <td><input type="number" min="1" value="1" class="quantity-input"></td>
    <td class="total">$10</td>
  </tr>
  <tr>
    <td>Product 2</td>
    <td>$20</td>
    <td><input type="number" min="1" value="1" class="quantity-input"></td>
    <td class="total">$20</td>
  </tr>
  <tr>
    <td colspan="3">Total</td>
    <td id="cart-total">$30</td>
  </tr>
</table>

<script>
  const quantityInputs = document.querySelectorAll('.quantity-input');
  const totalElements = document.querySelectorAll('.total');
  const cartTotalElement = document.querySelector('#cart-total');

  function updateTotal() {
    let cartTotal = 0;
    totalElements.forEach((totalElement, index) => {
      const price = parseInt(totalElement.previousElementSibling.textContent.slice(1));
      const quantity = parseInt(quantityInputs[index].value);
      const total = price * quantity;
      totalElement.textContent = '$' + total;
      cartTotal += total;
    });
    cartTotalElement.textContent = '$' + cartTotal;
  }

  quantityInputs.forEach(quantityInput => {
    quantityInput.addEventListener('input', updateTotal);
  });
</script>

<script>
    function removeItem(button) {
        var itemName = button.getAttribute("data-name");
        document.querySelector("input[name='" + itemName + "']").parentNode.parentNode.remove();
    }

    function updateCart() {
        var form = document.createElement("form");
        form.method = "POST";
        form.action = "/cart/update";
        var inputs = document.querySelectorAll("input[type='number']");
        inputs.forEach(function(input) {
            var hiddenInput = document.createElement("input");
            hiddenInput.type = "hidden";
            hiddenInput.name = input.getAttribute("name");
            hiddenInput.value = input.value;
            form.appendChild(hiddenInput);
        });
        document.body.appendChild(form);
        form.submit();
    }
</script>
<style>
body {
  font-family: Arial, sans-serif;
}

h1 {
  font-size: 36px;
  margin-bottom: 24px;
}

table {
  width: 100%;
  border-collapse: collapse;
}

th {
  font-size: 24px;
  text-align: left;
  padding: 12px;
  border-bottom: 2px solid #ddd;
}

td {
  font-size: 20px;
  text-align: left;
  padding: 12px;
  border-bottom: 1px solid #ddd;
}

td input {
  width: 80px;
  padding: 6px;
  font-size: 20px;
  text-align: center;
}

button {
  padding: 6px 12px;
  font-size: 20px;
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

button:hover {
  background-color: #3e8e41;
}

form {
  margin-top: 24px;
}

label {
  font-size: 20px;
  margin-right: 12px;
}

input[type="text"],
input[type="number"] {
  padding: 6px;
  font-size: 20px;
  border: 1px solid #ddd;
  border-radius: 4px;
  margin-right: 12px;
}

input[type="submit"] {
  padding: 6px 12px;
  font-size: 20px;
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #3e8e41;
}

p {
  font-size: 24px;
  margin-top: 24px;
}

</style>
</html>

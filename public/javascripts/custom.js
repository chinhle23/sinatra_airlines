
SpreedlyExpress.init("PdP9T8axLXYKeyA8H5K8moP5c2W", {
  "amount": "$9.83",
  "company_name": "Acme Widgets"
});

SpreedlyExpress.onPaymentMethod(function(token, paymentMethod) {

  // Send requisite payment method info to backend
  var tokenField = document.getElementById("payment_method_token");

  tokenField.setAttribute("value", token);

  var masterForm = document.getElementById('payment-form');
  masterForm.submit();
});

let handlePaymentToken = function(token, formData) {
  document.getElementById('full_name').value = formData["full_name"]
  document.getElementById('month').value = formData["month"]
  document.getElementById('year').value = formData["year"]
  document.getElementById('payment_method_token').value = token
  document.getElementById('payment-form').submit();
}
SpreedlyExpress.onPaymentMethod(handlePaymentToken);
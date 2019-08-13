SpreedlyExpress.init("C7cRfNJGODKh4Iu5Ox3PToKjniY", {
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
void main () {
  int cartItems = 0;

  String message = cartItems > 0 ? 'Du hast Waren in deinem Warenkorb' : 'Du hast noch keine Ware in deinem Einkaufskorb';

  print (message);

  bool isMember = true;
  bool hasCoupon = true;

  String discountMessage = isMember == true && hasCoupon == true ? 'Sie bekommen einen Discount' : ' Sie bekommen keinen Discount';
    print (discountMessage);
}
class CartItem {
  final int id;
  final String title;
  final String subtitle;
  final String icon;

  CartItem(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.icon});
}

List<CartItem> listCartItem = [
  CartItem(
    id: 1,
    title: 'Address',
    subtitle: 'Phnom Penh Cambodia',
    icon: 'asset/icon/placeholder.png',
  ),
  CartItem(
    id: 2,
    title: 'Privacy',
    subtitle: 'Phnom Penh Cambodia',
    icon: 'asset/icon/privacy.png',
  ),
  CartItem(
    id: 3,
    title: 'Notification',
    subtitle: 'Phnom Penh Cambodia',
    icon: 'asset/icon/notification.png',
  ),
  CartItem(
    id: 4,
    title: 'Support',
    subtitle: 'Phnom Penh Cambodia',
    icon: 'asset/icon/customer-service.png',
  )
];

import 'custom_kitchen_card.dart';
import 'package:flutter/widgets.dart';

class CustomKitchenGridComponent extends StatelessWidget {
  const CustomKitchenGridComponent({
    required this.onTap,
    required this.choosedKitchen,
    super.key,
  });

  final bool choosedKitchen;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.95,
        mainAxisExtent: 250,
        crossAxisSpacing: 20,
        mainAxisSpacing: 25,
      ),
      itemBuilder:
          (context, index) =>
              CustomKitchenCard(choosedKitchen: choosedKitchen, onTap: onTap),
    );
  }
}

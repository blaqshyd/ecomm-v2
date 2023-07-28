// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/exports.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    this.onTap,
    this.onTapp,
  });

  final String image, title;
  final double price;
  final Function()? onTap, onTapp;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        //width: 161.w,
        height: 220.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Image.network(image, fit: BoxFit.cover)),
            SizedBox(height: 8.h),
            Text(
              title,
              style: TextStyle().textStyling(null, FontWeight.bold, 16.sp),
              maxLines: 2,
            ),
            SizedBox(height: 3.h),
            InkWell(
              onTap: onTapp,
              child: Text(
                '\$' + price.toString(),
                style: TextStyle().textStyling(null, FontWeight.w500, 12.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

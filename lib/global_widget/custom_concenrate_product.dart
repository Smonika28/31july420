import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomConcentrateCardWidget extends StatefulWidget {
  final VoidCallback? onPressed;
  final String titileText;
  final String price;
  final String mainPrice;
  final String thcRange;
  final String slug;

  const CustomConcentrateCardWidget(
      {super.key,
      this.onPressed,
      required this.mainPrice,
      required this.price,
      required this.slug,
      required this.thcRange,
      required this.titileText});

  @override
  State<CustomConcentrateCardWidget> createState() =>
      _CustomConcentrateCardWidgetState();
}

class _CustomConcentrateCardWidgetState
    extends State<CustomConcentrateCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 211,
      height: 400,
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0XFFF9F9F9),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
              color: Colors.black87.withOpacity(0.05),
              offset: const Offset(0, 0),
              blurRadius: 10,
              spreadRadius: 5),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 182,
                  height: 100,
                   child: Image.asset('assets/images/product_pic2.png'),
                  // child: Image.network(
                  //   "https://excellis.co.in/420-society-world/public/storage/products/1678453548_50172_edbee168-fa13-41a1-85b6-47c81e322be7.jfif",
                  //   fit: BoxFit.fill,
                  // ),
                ),
              ]),
          Container(
            padding: const EdgeInsets.only(top: 8),
            width: 150,
            child: RatingBarIndicator(
              rating: 4,
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              itemCount: 5,
              itemSize: 20.0,
              direction: Axis.horizontal,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            widget.titileText,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              Text(
                widget.price,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                // "\$ 160",
                widget.price,
                style: const TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.lineThrough,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          Text(
            "\$ ${widget.mainPrice}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.slug,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              GestureDetector(
                onTap: () {},
                child: const CircleAvatar(
                  minRadius: 20,
                  backgroundColor: Color(0xFF00C8B8),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

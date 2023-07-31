import 'package:flutter/material.dart';

class CustomTodayProductCardWidget extends StatefulWidget {
  final VoidCallback? onPressed;
  final String titileText;
  final String price;
  final String mainPrice;
  final String thcRange;
  final String slug;
  const CustomTodayProductCardWidget(
      {super.key,
      this.onPressed,
      required this.mainPrice,
      required this.price,
      required this.slug,
      required this.thcRange,
      required this.titileText});

  @override
  State<CustomTodayProductCardWidget> createState() =>
      _CustomTodayProductCardWidgetState();
}

class _CustomTodayProductCardWidgetState
    extends State<CustomTodayProductCardWidget> {
  @override
  Widget build(BuildContext context) {
    final _screenHeight = MediaQuery.of(context).size.height -
        kToolbarHeight -
        MediaQuery.of(context).padding.top;

    return Container(
      width: 220,
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(8),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 46),
            decoration: const BoxDecoration(
              color: Color(0xFF00C8B8),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(360),
                topRight: Radius.circular(360),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/images/product_pic.png",
                  fit: BoxFit.fill,
                  width: 175,
                  height: 131,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: "\$ ${widget.mainPrice}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 42),
                      ),
                      const TextSpan(
                        text: 'off\n',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                      TextSpan(
                        text: widget.titileText,
                        style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const TextSpan(
                        text: "                  ",
                        // text: widget.price,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: widget.price,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String ingredient;
  final String image;
  final int price;
  final String calories;
  final String description;
  final Function press;

  const FoodCard({
    Key key,
    this.title,
    this.ingredient,
    this.image,
    this.price,
    this.calories,
    this.description,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 20),
        height: 400,
        width: 270,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 380,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: kPrimaryColor.withOpacity(0.06),
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                width: 181,
                height: 181,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(0.15),
                ),
              ),
            ),
            Positioned(
              left: -50,
              top: 0,
              child: Container(
                height: 184,
                width: 276,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: 80,
              child: Text(
                "\$$price",
                style: Theme.of(context).textTheme.headline5.copyWith(
                      color: kPrimaryColor,
                    ),
              ),
            ),
            Positioned(
              top: 201,
              left: 40,
              child: Container(
                width: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      "With $ingredient",
                      style: TextStyle(
                        color: kTextColor.withOpacity(0.4),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      description,
                      maxLines: 4,
                      style: TextStyle(
                        color: kTextColor.withOpacity(
                          0.65,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(calories)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 50,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: SvgPicture.asset(
                      "assets/icons/backward.svg",
                      height: 11,
                    ),
                  ),
                  SvgPicture.asset(
                    "assets/icons/menu.svg",
                    height: 11,
                  ),
                ],
              ),
              Container(
                height: 305,
                width: 305,
                margin: EdgeInsets.symmetric(vertical: 30),
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kSecondaryColor,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/image_1_big.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Vegan salad bowl\n",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        TextSpan(
                          text: "With red tomato",
                          style: TextStyle(
                            color: kTextColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "\$20",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "this is description this is description this is description this is description this is description this is description this is description this is description this is description this is description this is description this is description this is description",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 27,
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27),
                        color: kPrimaryColor.withOpacity(0.19),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Add to bag",
                            style: Theme.of(context).textTheme.button,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          SvgPicture.asset(
                            "assets/icons/forward.svg",
                            height: 11,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kPrimaryColor.withOpacity(.26),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset("assets/icons/bag.svg"),
                          ),
                          Positioned(
                            right: 15,
                            bottom: 15,
                            child: Container(
                              alignment: Alignment.center,
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kWhiteColor,
                              ),
                              child: Text(
                                "10",
                                style: Theme.of(context)
                                    .textTheme
                                    .button
                                    .copyWith(
                                        color: kPrimaryColor, fontSize: 16),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

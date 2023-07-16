import 'package:flutter/material.dart';

TextStyle titlefont = TextStyle(fontWeight: FontWeight.w900, fontSize: 12.0);
TextStyle infofont = TextStyle(fontWeight: FontWeight.w500, fontSize: 12.0);

Widget additionalInformation(
    String wind, String humidity, String pressure, String feels_like) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(10.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "wind",
                  style: titlefont,
                ),
                SizedBox(height: 10.0),
                Text(
                  "pressure",
                  style: titlefont,
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "$wind",
                  style: infofont,
                ),
                SizedBox(height: 10.0),
                Text(
                  "$pressure",
                  style: infofont,
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "humidity",
                  style: titlefont,
                ),
                SizedBox(height: 10.0),
                Text(
                  "feels_like",
                  style: titlefont,
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "$humidity",
                  style: infofont,
                ),
                SizedBox(height: 10.0),
                Text(
                  "$feels_like",
                  style: infofont,
                )
              ],
            ),
          ],
        )
      ],
    ),
  );
}

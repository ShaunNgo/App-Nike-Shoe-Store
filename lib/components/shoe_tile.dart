import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ltddnc/conf/conf.dart';
import 'package:ltddnc/data/models/shoe.dart';

Widget itemShoeView(Shoe itemshoe, context) {
  return Container(
    margin: const EdgeInsets.only(left: 25),
    width: 280,
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.secondary,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Theme.of(context).colorScheme.secondary,
          offset: const Offset(3, 5),
          blurRadius: 5.0,
          spreadRadius: 0.0,
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(urlimg + itemshoe.imagePath!),
        ),
        Text(
          itemshoe.description!,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontFamily: 'BeVietnamPro',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemshoe.name!,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'BeVietnamPro',
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    NumberFormat('###,###.### ₫').format(itemshoe.price),
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'BeVietnamPro',
                      color: Theme.of(context).colorScheme.inverseSurface,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Icon(
                  Icons.add,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

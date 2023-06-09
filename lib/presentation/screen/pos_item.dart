import 'package:flutter/material.dart';

import 'package:pos_system/data/model/pos_model.dart';

class PosItem extends StatelessWidget {
  final PosModel? cardModel;
  const PosItem({
    Key? key,
    this.cardModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: 125,
          height: 125,
          child: Column(
            children: [
              SizedBox(
                width: 125,
                height: 40,
                child: Image.asset('images/img1.png'),
              ),
              Text(cardModel!.name),
              Text("\$ ${cardModel!.price}"),
            ],
          ),
        )
      ],
    );
  }
}

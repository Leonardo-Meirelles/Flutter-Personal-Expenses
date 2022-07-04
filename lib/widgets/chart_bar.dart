import 'package:flutter/material.dart';

class CardBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPercentTotal;

  const CardBar({
    Key? key,
    required this.label,
    required this.spendingAmount,
    required this.spendingPercentTotal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 20,
          child: FittedBox(
            child: Text('\$${spendingAmount.toStringAsFixed(0)}'),
          ),
        ),
        const SizedBox(height: 5),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(220, 220, 220, 1),
                ),
              ),
              FractionallySizedBox(
                heightFactor: spendingPercentTotal,
                child: Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).primaryColor,
                )),
              )
            ],
          ),
        ),
        const SizedBox(height: 5),
        Text(label),
      ],
    );
  }
}

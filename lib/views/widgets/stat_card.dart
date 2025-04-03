import 'package:flutter/material.dart';

class StatCard extends StatelessWidget {
  final String title;
  final String todayValue;
  final String yesterdayValue;
  final String monthValue;
  final String unit;

  const StatCard(
      {super.key,
      required this.title,
      required this.todayValue,
      required this.yesterdayValue,
      required this.monthValue,
      required this.unit});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        elevation: 0.1,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 8.0),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 0,
                  children: [
                    Text(
                      "сегодня",
                    ),
                    Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: todayValue,
                              style: const TextStyle(
                                  color: Color(0xFF586BFB),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: unit,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Вчера: $yesterdayValue $unit'),
              Text('За месяц: $monthValue $unit'),
            ],
          ),
        ));
  }
}

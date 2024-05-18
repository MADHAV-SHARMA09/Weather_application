import 'package:flutter/material.dart';

class Hourlyforecast extends StatelessWidget {
  final String time;
  final IconData icon;
  final String temp;
  const Hourlyforecast({
    super.key,
    required this.icon,
    required this.temp,
    required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(time, style: const TextStyle(fontSize:16, fontWeight:FontWeight.bold),),
              const SizedBox(height: 10),
              Icon(icon , size: 32,),
              const SizedBox(height: 8,),
              Text(temp),
              const SizedBox(height: 8)
            ],
          ),
        ),
      ),
    );
  }
}

class Additionalinfo extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const Additionalinfo({
    super.key,
    required this.icon,
    required this.label,
    required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 32,),
        const SizedBox(height: 8,),
        Text(label , style: const TextStyle(fontSize: 16),),
        const SizedBox(height: 8,),
        Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
      ],
    );
  }
}
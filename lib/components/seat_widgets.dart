import 'package:flutter/material.dart';

class SeatBox extends StatelessWidget {
  final String id;
  final bool isSelected;
  final VoidCallback onTap;

  const SeatBox({
    super.key,
    required this.id,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          //선택 여부에 따라 색상 지정
          color: isSelected
              ? Colors.purple
              : Theme.of(context).brightness == Brightness.light
              ? Colors.grey[300]!
              : Colors.grey[600]!,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

class SeatStateIndicator extends StatelessWidget {
  final Color color;
  final String label;

  const SeatStateIndicator({
    super.key,
    required this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const SizedBox(width: 4),
        Text(label),
      ],
    );
  }
}

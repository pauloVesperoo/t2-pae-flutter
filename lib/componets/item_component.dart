import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemComponent extends StatelessWidget {
  final int contador;
  const ItemComponent({super.key, required this.contador});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 228, 22, 8), width: 1.5),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Item ${contador.toString()}',
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const Icon(
              Icons.delete,
              color: Colors.red,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}

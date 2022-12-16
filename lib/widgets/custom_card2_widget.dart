import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CustomCard2({super.key, required this.imageUrl, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      shadowColor: AppTheme.colorPrimary.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: NetworkImage(imageUrl),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (name != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(
                    right: 20, top: 10, bottom: 20, left: 20),
                child: Text(name!))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AddCategory extends StatelessWidget {
  const AddCategory({super.key, required this.path});
  final String path;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // farklı eylemler için de propertyler var
      onTap: () {
        // uygulamanın alt kısmında bir dildirim çıkmasını sağlıyor
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            duration: Duration(seconds: 1),
            content: Text("Category selected"),
          ),
        );
      },
      child: Image.asset(path),
    );
  }
}

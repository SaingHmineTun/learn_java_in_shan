import 'package:flutter/material.dart';
import 'package:learn_java_in_shan/screens/module_screen.dart';
import 'package:learn_java_in_shan/utils/utils.dart';

import '../utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFCFB), // Soft paper-like background
      appBar: AppBar(
        title: const Text(
          'Learn Java in Shan',
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8.0, bottom: 16),
              child: Text(
                "လိူၵ်ႈၵၢၼ်ႁဵၼ်း / Modules",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kJavaMocha,
                ),
              ),
            ),
            // Using a Grid for a more "Dashboard" look
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: topics.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.1,
              ),
              itemBuilder: (context, index) {
                int id = topics.keys.elementAt(index);
                return _buildModuleCard(context, id, topics[id]!);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildModuleCard(BuildContext context, int id, String content) {
    return InkWell(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (ctx) => ModuleScreen(moduleId: id)));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: kJavaLatte, width: 1),
          boxShadow: [
            BoxShadow(
              color: kJavaMocha.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon Background
            Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: kJavaLatte,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.coffee, color: kJavaMocha, size: 30),
            ),
            const SizedBox(height: 12),
            Text(
              "Module $id",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: kJavaGold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                content,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 13,
                  color: kJavaEspresso,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

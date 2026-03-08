import 'package:flutter/material.dart';
import 'package:learn_java_in_shan/screens/module_screen.dart';
import 'package:learn_java_in_shan/utils/utils.dart';
import '../utils/colors.dart';
import 'about_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Use LayoutBuilder to decide how many columns to show
    return Scaffold(
      backgroundColor: const Color(0xFFFDFCFB),
      appBar: AppBar(
        backgroundColor: kJavaMocha,
        foregroundColor: Colors.white,
        title: const Text('Learn Java in Shan'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (ctx) => const AboutScreen()));
            },
            icon: const Icon(Icons.info_outline),
            tooltip: "လွင်ႈၽူႈၶူင်ႊသၢင်ႈ",
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Center(
        // This centers the entire column on wide screens
        child: Container(
          // Limits the width on PC so it doesn't look stretched
          constraints: const BoxConstraints(maxWidth: 1000),
          child: SingleChildScrollView(
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
                LayoutBuilder(
                  builder: (context, constraints) {
                    // Decide column count: Phone = 2, Tablet/PC = 4 max
                    int crossAxisCount = constraints.maxWidth < 600 ? 2 : 4;

                    return GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: topics.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: 1.0, // Keeps cards square
                      ),
                      itemBuilder: (context, index) {
                        int id = topics.keys.elementAt(index);
                        return _buildModuleCard(context, id, topics[id]!);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildModuleCard(BuildContext context, int id, String content) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
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
              color: kJavaMocha.withOpacity(0.08),
              blurRadius: 12,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: kJavaLatte,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.coffee, color: kJavaMocha, size: 28),
            ),
            const SizedBox(height: 8),
            Text(
              "Module $id",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: kJavaGold,
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                content,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12,
                  color: kJavaEspresso,
                  height: 1.2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

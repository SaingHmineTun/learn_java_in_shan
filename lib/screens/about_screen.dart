import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tmkacademy/utils/colors.dart'; // Brand Palette
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  Future<void> _launchUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _sendEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'tmk.muse@gmail.com',
    );
    await launchUrl(emailLaunchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandDark, // Deep Charcoal background
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: const IconThemeData(color: kBrandWhite),
        title: const Text(
          "လွင်ႈၽူႈၶူင်ႊသၢင်ႈ", // About Developer
          style: TextStyle(fontWeight: FontWeight.bold, color: kBrandGold),
        ),
      ),
      body: Column(
        children: [
          // Top Header Section - TMK Brand Themed
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: kBrandSurface,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                // Logo with brand-aligned glow
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: kBrandOrange.withOpacity(0.15),
                        blurRadius: 30,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/tmklogo.png', // Updated Logo path
                    height: 160,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "ထုင်ႉမၢဝ်းၶမ်း",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: kBrandWhite,
                    letterSpacing: 2,
                  ),
                ),
                const Text(
                  "THUNG MAO KHAM ACADEMY",
                  style: TextStyle(
                    fontSize: 12,
                    color: kBrandGold,
                    letterSpacing: 4,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),

          // Scrollable Contact Cards
          Expanded(
            child: Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 600),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                  child: Column(
                    children: [
                      _buildContactCard(
                        icon: FontAwesomeIcons.envelope,
                        iconColor: kBrandOrange,
                        label: "EMAIL ADDRESS",
                        value: "tmk.muse@gmail.com",
                        onTap: _sendEmail,
                      ),
                      _buildContactCard(
                        icon: FontAwesomeIcons.facebook,
                        iconColor: const Color(0xFF1877F2), // Standard FB Blue
                        label: "FACEBOOK PAGE",
                        value: "ထုင်ႉမၢဝ်းၶမ်း",
                        onTap: () => _launchUrl(
                          "https://www.facebook.com/100377671433172",
                        ),
                      ),
                      _buildContactCard(
                        icon: FontAwesomeIcons.github,
                        iconColor: kBrandWhite,
                        label: "PROJECT REPOSITORY",
                        value: "Get GitHub Source Code",
                        onTap: () => _launchUrl(
                          "https://github.com/SaingHmineTun/learn_java_in_shan",
                        ),
                      ),
                      _buildContactCard(
                        icon: FontAwesomeIcons.earthAsia,
                        iconColor: kBrandBlue,
                        label: "DEVELOPER WEBSITE",
                        value: "www.saimao.top",
                        onTap: () => _launchUrl("https://www.saimao.top"),
                      ),

                      const SizedBox(height: 40),
                      const Text(
                        "VERSION 1.0.0",
                        style: TextStyle(
                          color: kBrandSurface,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "© 2026 TAI MAU KHON",
                        style: TextStyle(color: Colors.white24, fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactCard({
    required IconData icon,
    required Color iconColor,
    required String label,
    required String value,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: kBrandSurface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: kBrandBlue.withOpacity(0.1),
          width: 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: iconColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: FaIcon(icon, color: iconColor, size: 20),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        label,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: kBrandGold,
                          letterSpacing: 1.5,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        value,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: kBrandWhite,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 14,
                  color: Colors.white24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
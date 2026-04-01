import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utils/colors.dart';

class DonationScreen extends StatelessWidget {
  const DonationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Determine if we are on a wide screen
    bool isDesktop = MediaQuery.of(context).size.width > 900;

    return Scaffold(
      backgroundColor: kBrandDark,
      appBar: AppBar(
        title: const Text(
          "Support Us",
          style: TextStyle(color: kBrandGold, fontWeight: FontWeight.bold, fontFamily: "AJ03"),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Center( // Keeps everything centered horizontally
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // --- 1. Hero Section ---
              const Icon(Icons.favorite_rounded, color: kBrandOrange, size: 60),
              const SizedBox(height: 16),
              const Text(
                "Support TMK Academy",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: kBrandWhite),
              ),
              const SizedBox(height: 8),
              Container(
                constraints: const BoxConstraints(maxWidth: 600), // Prevent text from stretching too wide
                child: const Text(
                  "Your donations help us create more free programming lessons for the Shan community.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ),
              const SizedBox(height: 48),

              // --- 2. Payment Cards Section ---
              // On Desktop, they sit side-by-side. On Mobile, they stack.
              Wrap(
                spacing: 24, // Horizontal space between cards
                runSpacing: 24, // Vertical space when wrapped
                alignment: WrapAlignment.center,
                children: [
                  _buildDonationCard(
                    context,
                    title: "KBZ Pay",
                    color: const Color(0xFF4C7EE3),
                    accountName: "Sai Saing Hmine Tun",
                    accountNumber: "09251561150",
                  ),
                  _buildDonationCard(
                    context,
                    title: "AYA Pay",
                    color: const Color(0xFFED1C24),
                    accountName: "Sai Saing Hmine Tun",
                    accountNumber: "09251561150",
                  ),
                ],
              ),

              const SizedBox(height: 60),
              const Text(
                "ၶွပ်ႈၸႂ်ထိုင်ၵူႈၵေႃႉ ဢၼ်မီးၸႂ်ၸွႆႈထႅမ်ယူႇၶႃႈ။",
                style: TextStyle(color: kBrandGold, fontSize: 14, fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDonationCard(
      BuildContext context, {
        required String title,
        required Color color,
        required String accountName,
        required String accountNumber,
      }) {
    return Container(
      // CRITICAL FIX: Give the card a fixed width for Desktop
      width: 400,
      decoration: BoxDecoration(
        color: kBrandSurface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: color.withOpacity(0.3), width: 1.5),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 20, offset: const Offset(0, 10))
        ],
      ),
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(color: color.withOpacity(0.1), borderRadius: BorderRadius.circular(12)),
                child: Icon(Icons.account_balance_wallet_rounded, color: color, size: 28),
              ),
              const SizedBox(width: 16),
              Text(title, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: color)),
            ],
          ),
          const SizedBox(height: 24),
          _buildInfoItem("Account Name", accountName),
          const SizedBox(height: 20),
          _buildNumberItem(context, "Account Number", accountNumber, color),
        ],
      ),
    );
  }

  Widget _buildInfoItem(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(color: Colors.white38, fontSize: 12, letterSpacing: 1)),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(color: kBrandWhite, fontWeight: FontWeight.bold, fontSize: 18)),
      ],
    );
  }

  Widget _buildNumberItem(BuildContext context, String label, String value, Color themeColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(color: Colors.white38, fontSize: 12, letterSpacing: 1)),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(value, style: const TextStyle(color: kBrandWhite, fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 1)),
            IconButton(
              icon: Icon(Icons.copy_all_rounded, color: themeColor),
              onPressed: () {
                Clipboard.setData(ClipboardData(text: value));
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(backgroundColor: themeColor, content: Text("Copied $value!")),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
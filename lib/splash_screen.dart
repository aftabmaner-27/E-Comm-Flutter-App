import 'package:e_com_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'features/authentication/screens/onboarding/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String _version = '';

  @override
  void initState() {
    super.initState();
    _loadVersion();
    _navigateToNext();
  }

  void _navigateToNext() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnBoardingScreen()),
      );
    });
  }

  Future<void> _loadVersion() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _version = "v${info.version}";
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenSize.height * 0.2),

              // Logo
              Flexible(
                child: Image.asset(
                  TImages.defalutAppLogo,
                  width: screenSize.width * 0.9,
                  height: screenSize.width * 0.9,
                  fit: BoxFit.contain,
                ),
              ),



              // App Name
              Text(
                "Shopify E-Com",
                style: TextStyle(
                  fontSize: screenSize.width * 0.08,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.1,
                  fontFamily: 'Poppins-Bold',
                  fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                "Project By : Aftab Maner",
                style: TextStyle(
                  fontSize: screenSize.width * 0.03,
                  color: Colors.white,
                  letterSpacing: 2.1,

                ),
              ),

              const Spacer(),

              // App Version
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Text(
                  _version,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: screenSize.width * 0.035,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

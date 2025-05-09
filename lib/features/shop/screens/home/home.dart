import 'package:e_com_app/common/widgets/custom_shape/curved_edges/curved_edges.dart';
import 'package:e_com_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shape/container/circular_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          ClipPath(
            clipper: TCustomeCruvedEdges(),
            child: Container(
              color: TColors.primary,
              padding: const EdgeInsets.all(0),
              child: SizedBox(
                height: 400,
                child: Stack(
                  children: [
                    Positioned(top: -150,right: -250, child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
                    Positioned(top: 100,right: -300, child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}


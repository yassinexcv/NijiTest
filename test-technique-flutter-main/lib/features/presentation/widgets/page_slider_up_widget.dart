import 'package:flutter/material.dart';

import '../../../../core/extension/context.dart';
import 'custom_shimmer_widget.dart';

class PageSliderUpWidget extends StatelessWidget {
  const PageSliderUpWidget({
    required this.onSlideUp,
    required this.child,
    super.key,
  });

  final VoidCallback onSlideUp;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (update) {
        if (update.delta.dy < 0) {
          onSlideUp();
        }
      },
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            child,
            Positioned(
              bottom: 0,
              width: MediaQuery.of(context).size.width,
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.grey),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: CustomShimmerWidget(
                        child: Column(
                          children: [
                            const Icon(
                              Icons.keyboard_arrow_up,
                              size: 35,
                              color: Colors.black,
                            ),
                            Text(
                              context.translate().slideup,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 36.0, horizontal: 24),
              child: GestureDetector(
                child: Icon(
                  Icons.arrow_back,
                  size: 24,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:exclusive_web/pages/product_details_page/sections/product_details_section/widgets/shimmer_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProductDetailsShimmer extends StatelessWidget {
  const ProductDetailsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    final shimmerBase = Colors.grey.shade300;

    return isMobileOrTablet
        ? Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 350.0,
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 1170.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 85.0,
                            child: Column(
                              children: List.generate(4, (index) {
                                return Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        bottom: index < 3 ? 16.0 : 0.0),
                                    child: ShimmerItemTile(
                                      width: 85.0,
                                      height: double.infinity,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                          const SizedBox(width: 30.0),
                          Expanded(
                            child: ShimmerItemTile(
                              height: double.infinity,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ShimmerItemTile(
                  width: 300.0,
                  height: 20.0,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  children: [
                    ShimmerItemTile(
                      width: 80.0,
                      height: 16.0,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    ShimmerItemTile(
                      width: 100.0,
                      height: 16.0,
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    ShimmerItemTile(
                      width: 40.0,
                      height: 16.0,
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    ShimmerItemTile(
                      width: 80.0,
                      height: 16.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ShimmerItemTile(
                  width: 120.0,
                  height: 20.0,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                ShimmerItemTile(
                  width: double.infinity,
                  height: 14.0,
                ),
                const SizedBox(
                  height: 6.0,
                ),
                ShimmerItemTile(
                  width: double.infinity,
                  height: 14.0,
                ),
                const SizedBox(
                  height: 6.0,
                ),
                ShimmerItemTile(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 14.0,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ShimmerItemTile(
                  width: double.infinity,
                  height: 1.0,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: List.generate(5, (index) {
                    return Container(
                      margin: const EdgeInsets.only(
                        right: 12.0,
                      ),
                      width: 15.0,
                      height: 15.0,
                      decoration: BoxDecoration(
                        color: shimmerBase,
                        shape: BoxShape.circle,
                      ),
                    );
                  }),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: List.generate(4, (index) {
                    return Container(
                      margin: const EdgeInsets.only(
                        right: 12.0,
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          4.0,
                        ),
                        color: shimmerBase,
                      ),
                      child: ShimmerItemTile(
                        width: 30.0,
                        height: 14.0,
                      ),
                    );
                  }),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ShimmerItemTile(
                  width: 160.0,
                  height: 44.0,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    ShimmerItemTile(
                      width: 150.0,
                      height: 44.0,
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    ShimmerItemTile(
                      width: 40.0,
                      height: 40.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                ShimmerItemTile(
                  width: double.infinity,
                  height: 80.0,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
              ],
            ),
          )
        : SizedBox(
            width: double.infinity,
            height: 600.0,
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 1170.0,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 170.0,
                      child: Column(
                        children: List.generate(4, (index) {
                          return Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  bottom: index < 3 ? 16.0 : 0.0),
                              child: ShimmerItemTile(
                                width: 170.0,
                                height: double.infinity,
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                    Expanded(
                      child: ShimmerItemTile(
                        height: double.infinity,
                        borderRadius: BorderRadius.circular(
                          4.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 70.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ShimmerItemTile(
                                  width: 300.0,
                                  height: 24.0,
                                ),
                                const SizedBox(
                                  height: 16.0,
                                ),
                                ShimmerItemTile(
                                  width: 200.0,
                                  height: 16.0,
                                ),
                                const SizedBox(
                                  height: 16.0,
                                ),
                                ShimmerItemTile(
                                  width: 100.0,
                                  height: 24.0,
                                ),
                                const SizedBox(
                                  height: 24.0,
                                ),
                                ShimmerItemTile(
                                  width: double.infinity,
                                  height: 14.0,
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                ShimmerItemTile(
                                  width: double.infinity,
                                  height: 14.0,
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                ShimmerItemTile(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height: 14.0,
                                ),
                                const SizedBox(
                                  height: 24.0,
                                ),
                                ShimmerItemTile(
                                  width: double.infinity,
                                  height: 1.0,
                                ),
                                const SizedBox(
                                  height: 24.0,
                                ),
                                Row(
                                  children: List.generate(5, (index) {
                                    return Container(
                                      margin: const EdgeInsets.only(
                                        right: 12.0,
                                      ),
                                      width: 20.0,
                                      height: 20.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: shimmerBase,
                                      ),
                                    );
                                  }),
                                ),
                                const SizedBox(
                                  height: 30.0,
                                ),
                                Row(
                                  children: List.generate(4, (index) {
                                    return Container(
                                      margin: const EdgeInsets.only(
                                        right: 12.0,
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 8.0,
                                        horizontal: 16.0,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          4.0,
                                        ),
                                        color: shimmerBase,
                                      ),
                                      child: ShimmerItemTile(
                                        width: 30.0,
                                        height: 14.0,
                                      ),
                                    );
                                  }),
                                ),
                                const SizedBox(
                                  height: 24.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ShimmerItemTile(
                                      width: 160.0,
                                      height: 44.0,
                                    ),
                                    ShimmerItemTile(
                                      width: 159.0,
                                      height: 44.0,
                                    ),
                                    ShimmerItemTile(
                                      width: 40.0,
                                      height: 40.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
  }
}

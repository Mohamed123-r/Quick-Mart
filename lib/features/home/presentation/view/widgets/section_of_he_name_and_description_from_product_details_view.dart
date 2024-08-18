import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:readmore/readmore.dart';

class SectionOfTheNameAndDescriptionFromProductDetailsView
    extends StatelessWidget {
  const SectionOfTheNameAndDescriptionFromProductDetailsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              child: Text(
                'Loop Silicone Strong Magnetic watch',
                style: Styles.heading3Bold,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Column(
              children: [
                const Text('\$ 15.25', style: Styles.heading3Bold),
                Text('\$ 15.25',
                    style: Styles.body2Regular.copyWith(
                      color: kGrey_150Color,
                      decoration: TextDecoration.lineThrough,
                    ))
              ],
            )
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          'Product Details',
          style: Styles.body1Medium,
        ),
        const SizedBox(
          height: 8,
        ),
        ReadMoreText(
          'Flutter is Google’s mobile UI open source framework to build high-quality  Flutter is Google’s mobile UI open source framework to build high-qualit Flutter is Google’s mobile UI open source framework to build high-qualityFlutter is Google’s mobile UI open source framework to build high-qualityFlutter is Google’s mobile UI open source framework to build high-qualityFlutter is Google’s mobile UI open source framework to build high-qualityyFlutter is Google’s mobile UI open source framework to build high-quality Flutter is Google’s mobile UI open source framework to build high-quality Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
          trimMode: TrimMode.Length,
          trimLines: 5,
          colorClickableText: kCyanColor,
          style: Styles.body2Regular.copyWith(color: kGrey_150Color),
          trimCollapsedText: 'Read more',
          trimExpandedText: 'Read less',
        ),
      ],
    );
  }
}

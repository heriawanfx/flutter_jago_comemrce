import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../assets_gen/assets.gen.dart';
import '../../../../common/utils/color_resources.dart';
import '../bloc/banner_bloc.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double bannerWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: bannerWidth,
      height: bannerWidth * 0.4,
      child: BlocBuilder<BannerBloc, BannerState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorResources.white,
                    ),
                  ));
            },
            loaded: (data) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  CarouselSlider.builder(
                    itemCount: data.length,
                    options: CarouselOptions(
                      viewportFraction: 1,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      disableCenter: true,
                      onPageChanged: (index, reason) {
                        //Change banner Index
                        context
                            .read<BannerBloc>()
                            .add(BannerEvent.setBannerIndex(index));
                      },
                    ),
                    itemBuilder: (context, index, realIndex) {
                      final banner = data[index];
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: FadeInImage.assetNetwork(
                          fit: BoxFit.cover,
                          placeholder: MyAssets.images.placeholder1x1.path,
                          image: 'https://picsum.photos/30${banner.id}',
                        ),
                      );
                    },
                  ),
                  Positioned(
                    bottom: 5,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...data.asMap().entries.map((e) {
                          return const TabPageSelectorIndicator(
                            backgroundColor: Colors.grey,
                            borderColor: Colors.grey,
                            size: 10,
                          );
                        }).toList()
                      ],
                    ),
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }
}

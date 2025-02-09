import 'package:booklyapp/Core/utils/assets.dart';
import 'package:booklyapp/Core/utils/styles.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/featured_list_view.dart';
import 'package:booklyapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBoxListView(),
          SizedBox(
            height: 45,
          ),
          Text(
            "Best Seller ",
            style: Styles.textStyle20,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}

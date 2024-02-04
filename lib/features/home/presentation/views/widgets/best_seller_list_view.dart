import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      // shrinkWrap: true,
      itemCount: 7,
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kBookDeatilsView);
                },
                child: const BestSellersListItem()));
      },
    );
  }
}

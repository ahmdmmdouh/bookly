import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomSearchField(),
          SizedBox(
            height: 10,
          ),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}

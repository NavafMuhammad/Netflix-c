import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/search_idle_widget.dart';
import 'package:netflix/presentation/search/widgets/search_widget.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_){
      BlocProvider.of<SearchBloc>(context).add(const SearchEvent.initilize());
    });
    return const Padding(
      padding: kPadding10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchWidget(),
          kHeight20,
          Expanded(child: SearchIdleWidget()),
          // Expanded(child: SearchActiveEidget()),
        ],
      ),
    );
  }
}

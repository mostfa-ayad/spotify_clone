import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/presentation/home_page/cubit/new_songs_cubit.dart';

class NewSongsWidget extends StatelessWidget {
  const NewSongsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NewSongsCubit()..load(),
      child: BlocBuilder<NewSongsCubit, NewSongsState>(
        builder: (context, state) {
          if (state is LoadNewSongs) {
          } else if (state is LoadNewSongs) {
            return SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: state.list.length,
                itemBuilder: (context, index) {
                  return Text(state.list[index].title);
                },
              ),
            );
          } else if (state is ErrorNewSongs) {
            return Text(state.msg);
          }
          return Container();
        },
      ),
    );
  }
}

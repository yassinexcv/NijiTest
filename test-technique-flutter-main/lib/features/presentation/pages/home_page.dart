import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nasa_picture_of_the_day/features/presentation/widgets/custom_app_bar_widget.dart';

import '../../../../core/extension/context.dart';

import '../../../core/contants/route_list.dart';
import '../blocs/bloc/media_bloc.dart';

import '../widgets/round_button_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  DateTime date = DateTime.now();
  @override
  void initState() {
    super.initState();
    context.read<MediaBloc>().add(GetSpaceMediaByDate(date));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        title: context.translate().dailymedia,
        background_color: Colors.blueAccent,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: RoundButtonWidget(
            label: context.translate().selectday,
            onTap: () async {
              final datePicked = await showDatePicker(
                helpText: context.translate().selectdatetime,
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1995, 06, 16),
                lastDate: DateTime.now(),
              );
              if (datePicked != null) {
                date = datePicked;
                context.read<MediaBloc>().add(GetSpaceMediaByDate(date));
                /* TODO Navigator push to RouteListPicture*/
              }
            },
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  BlocBuilder<MediaBloc, MediaState>(
                    builder: (context, state) {
                      /* TODO handle Error & Loaded State
                      if state is Loaded use ShowMediaCard widget to display infos
                      else if state is Error showError */

                      if (state is SpaceMediaState) {
                        return Column(
                          children: [
                            Text(state.data.title!),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                    RouteList.picture,
                                    arguments: date);
                              },
                              child: Image.network(
                                height: 150,
                                width: double.infinity,
                                state.data.url!,
                                fit: BoxFit.fill,
                                loadingBuilder: (BuildContext context,
                                    Widget child,
                                    ImageChunkEvent? loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return Center(
                                    child: CircularProgressIndicator(
                                      value:
                                          loadingProgress.expectedTotalBytes !=
                                                  null
                                              ? loadingProgress
                                                      .cumulativeBytesLoaded /
                                                  loadingProgress
                                                      .expectedTotalBytes!
                                              : null,
                                    ),
                                  );
                                },
                              ),
                            ),
                            Text(state.data.explanation!)
                          ],
                        );

                        // return const Center(child: CircularProgressIndicator());
                      }
                      if (state is ErrorState) {
                        return const Center(child: Text("An error occurred , try again later"));
                      }
                      return const Center(child: CircularProgressIndicator());

                      // return state.when(
                      //   loading: () => const Center(child: CircularProgressIndicator()),
                      // );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

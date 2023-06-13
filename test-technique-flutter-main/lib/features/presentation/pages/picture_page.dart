import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../blocs/bloc/media_bloc.dart';

class PicturePage extends StatefulWidget {
  PicturePage({
    required this.my_picture_page_args,
    Key? key,
  }) : super(key: key);

  final DateTime my_picture_page_args;

  @override
  State<PicturePage> createState() => PicturePageState();
}

class PicturePageState extends State<PicturePage> {
  bool isPanelOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SlidingUpPanel(
        panelBuilder: (scrollController) => buildPanel(scrollController),
        body: GestureDetector(
          onVerticalDragEnd: (details) {
            setState(() {
              isPanelOpen = details.primaryVelocity! < 0;
            });
          },
          child: BlocBuilder<MediaBloc, MediaState>(
            builder: (context, state) {
              if (state is SpaceMediaState) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(state.data.hdurl!),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: double.infinity,
                  width: double.infinity,
                );
              } else if (state is ErrorState) {
                return const Center(child: Text("Error", style: TextStyle(color: Colors.white)));
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
        minHeight: 100,
        maxHeight: 500,
        collapsed: GestureDetector(
          onTap: () {
            setState(() {
              isPanelOpen = true;
            });
          },
          child: Center(
            child: Icon(Icons.keyboard_arrow_up, color: Colors.white),
          ),
        ),
        backdropEnabled: true,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
        backdropOpacity: 0.5,
        parallaxEnabled: true,
      ),
    );
  }

  Widget buildPanel(ScrollController scrollController) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.keyboard_arrow_up, color: Colors.black),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Slide up to see the description',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            if (isPanelOpen)
              BlocBuilder<MediaBloc, MediaState>(
                builder: (context, state) {
                  if (state is SpaceMediaState) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.data.title!,
                            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            state.data.explanation!,
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return const Center(child: Text("Error loading data", style: TextStyle(color: Colors.black)));
                  }
                },
              ),
          ],
        ),
      ),
    );
  }
}

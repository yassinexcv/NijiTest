import 'package:flutter/material.dart';
import 'package:nasa_picture_of_the_day/features/domain/entities/space_media_entity.dart';
import 'custom_video_player_widget.dart';
import 'image_network_with_loader_widget.dart';

class ShowMediaCardWidget extends StatelessWidget {
  final SpaceMediaEntity spaceMedia;
  final String title;

  ShowMediaCardWidget({
    required this.title,
    required this.spaceMedia,
    Key? key,
  }) : super(key: key);

  Widget getContentWidget() {
    if (spaceMedia.media_type == 'video') {
      return CustomVideoPlayerWidget(spaceMedia);
    } else if (spaceMedia.media_type == 'image') {
      return ImageNetworkWithLoaderWidget(spaceMedia.url);
    } else {
      return const SizedBox(
        child: Text('Unsupported Media'),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Center(
            child: Text(title),
          ),
        ),
        SizedBox(
          height: 200,
          child: getContentWidget(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child:
                    Text('put explanation', overflow: TextOverflow.fade), // TODO put explanation
              ),
            ),
          ),
        ),
      ],
    );
  }
}

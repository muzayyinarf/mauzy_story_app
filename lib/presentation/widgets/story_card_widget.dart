import 'package:flutter/material.dart';
import 'package:mauzy_story_app/core.dart';

class StoryCardWidget extends StatelessWidget {
  final ListStory data;

  const StoryCardWidget({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.goNamed(Routes.detailStory, pathParameters: {'id': data.id});
      },
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        data.name,
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: backGroundFieldColor,
                      image: DecorationImage(
                          image: NetworkImage(data.photoUrl),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Image.asset('assets/images/love.png'),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Image.asset('assets/images/comment.png'),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Image.asset('assets/images/share.png'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Text.rich(
                    TextSpan(
                      text: data.name,
                      style:
                          blackTextStyle.copyWith(fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: ' ${data.description}',
                          style: blackTextStyle.copyWith(
                              fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Text(
                      data.createdAt.toRelativeTime(context),
                      style: greyTextStyle,
                    )),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

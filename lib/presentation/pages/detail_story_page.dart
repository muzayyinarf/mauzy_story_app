import 'package:flutter/material.dart';
import 'package:mauzy_story_app/core.dart';

class DetailStoryPage extends StatefulWidget {
  final String id;
  const DetailStoryPage({super.key, required this.id});

  @override
  State<DetailStoryPage> createState() => _DetailStoryPageState();
}

class _DetailStoryPageState extends State<DetailStoryPage> {
  @override
  void initState() {
    context.read<DetailStoryBloc>().add(DetailStoryEvent.getDetail(widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: BlocBuilder<DetailStoryBloc, DetailStoryState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => _buildLoading(),
            error: (data) => _buildMessage(data.message),
            loading: (_) => _buildLoading(),
            loaded: (value) => _buildDetail(value.model),
          );
        },
      ),
    );
  }

  Widget _buildDetail(DetailStroyResponseModel model) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            model.story.photoUrl,
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    text: model.story.name,
                    style: blackTextStyle.copyWith(fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: ' ${model.story.description}',
                        style: blackTextStyle.copyWith(
                            fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                ),
                Text(
                  model.story.createdAt.toRelativeTime(context),
                  style: greyTextStyle,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessage(String message) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Text(
          message,
          style: greyTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

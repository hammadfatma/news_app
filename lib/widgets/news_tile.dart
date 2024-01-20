import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;
  void launchNewsWebsite() async {
    final url = articleModel.url;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchNewsWebsite();
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: articleModel.image != null
                ? Image.network(
                    articleModel.image!,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  )
                : Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLfSDtRIvDX2gnqNwiAlZ8kUq94qPT9k_2wU1b-4f7Ri0TDKZRbtDAft0c0w&s',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            articleModel.subTitle ?? '',
            maxLines: 2,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

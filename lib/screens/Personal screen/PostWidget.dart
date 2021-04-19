import 'package:flutter/material.dart';
import 'package:personal_app/Models/constants.dart';

class PostWidget extends StatelessWidget {
  final Post post;
  const PostWidget({
    @required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 20),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).shadowColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 5),
              blurRadius: 5,
              color: Colors.black.withOpacity(0.2),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                post.title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 6),
              Text(
                post.subject,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              if (post.imageURL != null)
                Container(
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(
                      post.imageURL,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              if (post.onTapURL != null)
                Container(
                  height: 40,
                  child: IconButton(
                      icon: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.arrow_back_ios_sharp,
                            color: Theme.of(context).textTheme.bodyText1.color,
                          ),
                          Text('Open Link'),
                        ],
                      ),
                      onPressed: () {
                        openUrl(post.onTapURL);
                      }),
                )
            ],
          ),
        ),
      ),
    );
  }
}

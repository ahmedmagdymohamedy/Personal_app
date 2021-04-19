import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Color mPrimaryColor = Color(0xffa84032);

void openUrl(String url) async {
  if (await canLaunch(url))
    await launch(url);
  else
    throw "Could not launch $url";
}

class Post {
  int id;
  String title;
  String subject;
  String imageURL;
  String date;
  String onTapURL;

  Post({
    this.id,
    this.title,
    this.subject,
    this.imageURL,
    this.date,
    this.onTapURL,
  });
}

List<Post> demoData = [
  Post(
    id: 0,
    title: 'Beginning with graphics',
    subject:
        'I started learning Photoshop and graphic designs and did some designs and logos',
    imageURL: 'images/graphic desigen.PNG',
    date: '2016/2',
  ),
  Post(
    id: 0,
    title: 'My first programming life',
    subject:
        'I started learning programming games and wrote the first codecs in C# language on Unity Engine',
    date: '2016/9/15',
    imageURL: 'images/unity.PNG',
  ),
  Post(
    id: 0,
    title: 'publish my first game on google play',
    subject:
        'It was called (the ghost way). I took 4 months of work and had a lot of mistakes and lack of experience, but it was a good start for me.',
    imageURL: 'images/the ghost way.PNG',
    date: '2017/1/18',
    onTapURL:
        'https://play.google.com/store/apps/details?id=com.megz.theghostway',
  ),
  Post(
    id: 0,
    title: 'Learn 3D',
    subject:
        'I started learning 3D on 3D Max, but I didn\'t care enough about it. I did some simple work.\n But I must say this that I don\'t remember anything about it now',
    date: '2017/2',
  ),
  Post(
    id: 0,
    title: 'making my first 3D game',
    subject:
        'It is just a simple game, but it is 3D, and I benefited a lot while I was designing it',
    date: '2017/4',
    imageURL: 'images/crazy bird.PNG',
    onTapURL:
        'https://play.google.com/store/apps/details?id=com.megz.crazybird',
  ),
  Post(
    id: 0,
    title: 'Black Point',
    subject:
        'This is the best game I have ever done and it got a lot of people like it, it took 4 months of work.',
    date: '2017/12/9',
    imageURL: 'images/black point.PNG',
    onTapURL:
        'https://play.google.com/store/apps/details?id=com.megz.blackpoint',
  ),
  Post(
    id: 0,
    title: 'Start Learning Android Native',
    subject:
        'With the initiative of Million Arab Coders, which I was accepted and started studying and got his certificate',
    date: '2018/2',
    imageURL: 'images/udacity certificate.PNG',
  ),
  Post(
    id: 0,
    title: 'Web Front-end Developer',
    subject:
        'After a little time programming Android آative .. I turned to another direction, which is web development .. I started to learn all the basics, and then I learned the REACT library',
    date: '2018/8',
    imageURL: 'images/web dev.PNG',
  ),
  Post(
    id: 0,
    title: 'm domino',
    subject:
        'On of my special project \ni created Its contain a intelligence to help you choose the best domino card to win \nWorking with PC and any Mobile',
    date: '2019/8',
    imageURL: 'images/m domino.jpg',
    onTapURL: 'https://github.com/ahmedmagdymohamedy/mdomino',
  ),
  Post(
    id: 0,
    title: 'back to apps again but with flutter',
    subject:
        'After I finished my service in the military for a year, come back again to learn to develop mobile applications with Flutter, and I have done many projects. You can check some of them on gitHub.',
    date: '2020/12/5',
    imageURL: 'images/flutter.PNG',
    onTapURL: 'https://github.com/ahmedmagdymohamedy?tab=repositories',
  ),
];

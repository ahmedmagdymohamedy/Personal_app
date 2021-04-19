import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter_svg/svg.dart';
import 'package:personal_app/Models/constants.dart';

class PersonalDetailsCart extends StatelessWidget {
  const PersonalDetailsCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).shadowColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5),
            blurRadius: 5,
            color: Colors.black.withOpacity(0.2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            PersonalDetailsItem(
              icon: Icon(Icons.cake),
              lable: 'Date of Birth',
              value: '1998/2/15',
            ),
            SizedBox(height: 12),
            PersonalDetailsItem(
              icon: Icon(Icons.location_on),
              lable: "Nationality",
              value: 'Egyptian',
            ),
            SizedBox(height: 12),
            PersonalDetailsItem(
              icon: Icon(Icons.email),
              lable: "E-mail",
              value: 'ahmedmagdymohamedy@gmail.com',
              onTapoOnValue: () async {
                await FlutterEmailSender.send(Email(
                  body: 'Email body',
                  subject: 'Email subject',
                  recipients: ['ahmedmagdymohamedy@gmail.com'],
                  isHTML: false,
                ));
              },
            ),
            SizedBox(height: 12),
            PersonalDetailsItem(
              icon: Icon(Icons.phone),
              lable: "Phone Number",
              value: '00201118723729',
            ),
            SizedBox(height: 12),
            PersonalDetailsItem(
              icon: SvgPicture.asset(
                'icons/GitHub.svg',
                width: 22,
                color: Theme.of(context).primaryColor,
              ),
              lable: "GitHub",
              value: 'ahmedmagdymohamedy',
              onTapoOnValue: () {
                openUrl('https://github.com/ahmedmagdymohamedy');
              },
            ),
            SizedBox(height: 12),
            PersonalDetailsItem(
              icon: Icon(Icons.military_tech),
              lable: "Military service",
              value: 'Completed',
            ),
          ],
        ),
      ),
    );
  }
}

class PersonalDetailsItem extends StatelessWidget {
  Widget icon;
  String lable;
  String value;
  Function onTapoOnValue;
  PersonalDetailsItem({this.icon, this.lable, this.value, this.onTapoOnValue});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        SizedBox(width: 20),
        Text(lable),
        SizedBox(width: 20),
        Expanded(
          child: InkWell(
            onTap: onTapoOnValue,
            child: Text(
              value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .color
                    .withOpacity(0.7),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

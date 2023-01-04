import 'package:flutter/material.dart';

class CataractInfo extends StatefulWidget {
  const CataractInfo({Key? key}) : super(key: key);

  @override
  State<CataractInfo> createState() => _CataractInfoState();
}

class _CataractInfoState extends State<CataractInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffAE98D7),
      appBar: AppBar(
        title: const Text(
          'CATARACT',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              'BLADE-FREE\nCATARACT SURGERY',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),Divider(),
            SingleChildScrollView(child: SizedBox(
              height: double.infinity,
              child: Text('A cataract is a condition in which the lens of an eye becomes cloudy and affects vision. Most commonly, cataracts occur in older people, and they usually develop gradually.\nCataracts can usually be treated with a day-case operation, where the cloudy lens is removed and is replaced with an artificial plastic lens. However, in developing countries where this treatment is not available, cataracts are a major cause of total loss of vision (severe sight impairment).'),
            ))
          ],
        ),
      ),
    );
  }
}

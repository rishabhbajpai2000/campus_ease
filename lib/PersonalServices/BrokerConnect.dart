import 'package:campus_ease/PersonalServices/BrokerConnectData.dart';
import 'package:flutter/material.dart';

class BrokerConnect extends StatefulWidget {
  const BrokerConnect({Key? key}) : super(key: key);

  @override
  State<BrokerConnect> createState() => _BrokerConnectState();
}

class _BrokerConnectState extends State<BrokerConnect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: <Widget>[
                Center(child: Text('Hey')),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: brokersData.length,
                    itemBuilder: (context, index) {
                      return Text(brokersData[index].name +
                          " " +
                          brokersData[index].contactNumber);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

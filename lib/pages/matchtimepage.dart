import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


class MatchTime extends StatefulWidget {
  @override
  _MatchTimeState createState() => _MatchTimeState();
}

class _MatchTimeState extends State<MatchTime> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MatchTime"),
        actions: <Widget>[
          Icon(Icons.toc)
        ],
      ),
        floatingActionButton: FloatingActionButton(onPressed:(){}, child: Icon(Icons.add),),
        body: Center(
          child: ListView(
            children: <Widget>[
              taskWidget(context),
              taskWidget(context),

            ],
          ),
        ),
    );
  }
}

Widget taskWidget(BuildContext context){
  TextStyle _timeStyle(){
    return TextStyle(
      fontSize: 18,
      color: Colors.black,
    );
  }
  TextStyle _titleStyle(){
    return TextStyle(
      fontSize: 22,
      color: Colors.black,
    );
  }

  return Slidable(
    actionPane: SlidableDrawerActionPane(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*0.15,
        child: Card(
          elevation: 10,
          child: ListTile(
            leading: Icon(Icons.email, size: 50,),
            title: Text("Enviar emails", style: _titleStyle()),
            subtitle: Text("10:00 - 12:00", style: _timeStyle(),),
          ),
        ),
      ),
    actions: <Widget>[
      new IconSlideAction(
        caption: 'Done',
        color: Colors.green,
        icon: Icons.check,
      ),
    ],
    secondaryActions: <Widget>[
      IconSlideAction(
      caption: 'Delete',
        color: Colors.red,
        icon: Icons.delete,
      ),
    ]
  );
}
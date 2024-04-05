import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: BottemSheetEx(),));
}
class BottemSheetEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottemsheet"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            showSheet(context);
            
          },
          child: Image.asset("assets/images/boliviainteligente.jpg"),
        ),
      ),
    );
  }
  showSheet(BuildContext context){showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      context: context,
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Icon(Icons.share),
            trailing: Text("share"),
          ),
          ListTile
            (leading: Icon(Icons.copy),
            trailing: Text("copy"),

          )
        ],
      ));
    
  }
}

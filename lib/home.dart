import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:imageupload/imagegallery.dart';
import 'package:imageupload/uploadfile.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[


          new RaisedButton(
            onPressed: () async {


              File file = await ImagePicker.pickImage(source: ImageSource.gallery);

              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) =>
                    new ImageUploadPage(
                      file,
                    )),
              );
            },
            child: new Text(
              "Upload Image from Gallery",
              style: new TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            color: new Color.fromRGBO(0, 153, 145, 1.0),
          ),

          new Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: new RaisedButton(
                onPressed: () async {
                  File file = await ImagePicker.pickImage(source: ImageSource.camera);

                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) =>
                        new ImageUploadPage(
                          file,
                        )),
                  );


                },
                child: new Text(
                  "Capture Image",
                  style: new TextStyle(color: Colors.white, fontSize: 16.0),
                ),
                color: new Color.fromRGBO(0, 153, 145, 1.0)),
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: new RaisedButton(
                onPressed: () {

                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) =>
                        new ImageGalley()),
                  );



                },
                child: new Text(
                  "View Images",
                  style: new TextStyle(color: Colors.white, fontSize: 16.0),
                ),
                color: new Color.fromRGBO(0, 153, 145, 1.0)),
          ),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return new AppBar(
      centerTitle: true,
      title:  const Text(
        'Image Demo',
        style: const TextStyle(
            color: Colors.black,
            fontSize: 25.0,
            fontWeight: FontWeight.w300),
      ),
      backgroundColor: const Color.fromRGBO(217, 217, 217, 1.0),
      elevation: 0.0,
    );
  }
}

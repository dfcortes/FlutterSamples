// MIT License
//
// Copyright (c) 2018 Diego Cortes
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData.dark(),
      home: DemoDirectionText()
    );
  }
}

class DemoDirectionTextWidget extends State<StatefulWidget>
{
  final _texts = <Widget>[];
  final _customFont = TextStyle(fontSize: 13.0, color: Colors.white);

  @override
  Widget build(BuildContext context)
  {
    var myAppBar = AppBar(title: Text("Wizard of Oz", style: TextStyle(fontSize: 24.0, color: Colors.red)));
    return Scaffold(appBar: myAppBar, body: _buildWizardOfOz());
  }

  Widget _buildWizardOfOz()
  {
    _texts.add(_addListTile(Text("Dorothy lived in the midst of the great Kansas prairies, with Uncle Henry", style: _customFont, textDirection: TextDirection.rtl,)));
    _texts.add(_addListTile(Text("who was a farmer, and Aunt Em, who was the farmer's wife.", style: _customFont, textDirection: TextDirection.ltr)));
    _texts.add(_addListTile(Text("Their house was small, for the lumber to build it had to be carried by wagon many miles.", style: _customFont, textDirection: TextDirection.rtl)));

    return ListView(children: _texts);
  }

  Widget _addListTile(Text text)
  {
    return ListTile(title: text);
  }
}

class DemoDirectionText extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => DemoDirectionTextWidget();
}

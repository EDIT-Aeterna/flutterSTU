import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _flatButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //FlatButton(
        TextButton(
          //Flutter 2.0将FlatButton和RaisedButton合并为TextButton和ElevatedButton，原有的FlatButton和RaisedButton将被废弃
          child: Text('Button'),
          onPressed: () {},
          //splashColor: Colors.grey[200],
        ),
        //FlatButton.icon(
        TextButton.icon(
          //Flutter 2.0将FlatButton和RaisedButton合并为TextButton和ElevatedButton，原有的FlatButton和RaisedButton将被废弃
          icon: Icon(Icons.adb),
          label: Text('Button'),
          onPressed: () {},
          //splashColor: Colors.grey[200],
        ),
      ],
    );

    final Widget _raiseButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(6.0),
              // ),
              shape: StadiumBorder(),
              // buttonColor: Theme.of(context).primaryColor,
            ),
          ),
          child: //RaisedButton(
              ElevatedButton(
                  //Flutter 2.0将FlatButton和RaisedButton合并为TextButton和ElevatedButton，原有的FlatButton和RaisedButton将被废弃
                  child: Text('Button'),
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    elevation: MaterialStateProperty.all(0.0),
                    //splashFactory:水波纹效果，暂时不知道如何自定义
                  )
                  // splashColor: Colors.grey[200],
                  // elevation: 0.0,
                  // color: Colors.yellow,
                  ),
        ),
        SizedBox(
          width: 18.0,
        ),
        //RaisedButton.icon(
        ElevatedButton.icon(
            icon: Icon(Icons.cake),
            label: Text('Button'),
            onPressed: () {},
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(6.0),
              //splashFactory:水波纹效果，暂时不知道如何自定义
            )
            // splashColor: Colors.grey[200],
            // elevation: 6.0,
            ),
      ],
    );

    final Widget _outlineButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).primaryColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.normal,
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(6.0),
              // ),
              shape: StadiumBorder(),
            ),
          ),
          child: OutlinedButton(
            child: Text('Button'),
            onPressed: () {},
            style: ButtonStyle(
              side: MaterialStateProperty.resolveWith(
                ((states) {
                  if (states.contains(MaterialState.focused) &&
                      !states.contains(MaterialState.pressed)) {
                    //获取焦点时的颜色
                    return BorderSide(color: Colors.yellow[300]);
                  }
                  //默认状态使用黑色
                  return BorderSide(color: Colors.black);
                }),
              ),
              overlayColor: MaterialStateProperty.all(Colors.grey[200]), //水波纹颜色
            ),
            // splashColor: Colors.grey[200],
            // borderSide: BorderSide(
            //   color: Colors.black,
          ),
          //highlightedBorderColor: Colors.yellow[300],
          // color: Colors.yellow,
        ),
        SizedBox(
          width: 18.0,
        ),
        OutlinedButton.icon(
          icon: Icon(Icons.beach_access),
          label: Text('Button'),
          onPressed: () {},
          style: ButtonStyle(
            side: MaterialStateProperty.resolveWith(
              ((states) {
                if (states.contains(MaterialState.focused) &&
                    !states.contains(MaterialState.pressed)) {
                  //获取焦点时的颜色
                  return BorderSide(color: Colors.yellow[300]);
                }
                //默认状态使用黑色
                return BorderSide(color: Colors.black);
              }),
            ),
            overlayColor: MaterialStateProperty.all(Colors.grey[200]), //水波纹颜色
          ),
          // splashColor: Colors.grey[200],
          // borderSide: BorderSide(
          //   color: Colors.black,
          // ),
          // highlightedBorderColor: Colors.yellow[300],
        ),
      ],
    );

    final Widget _fixedOutlineButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 210.0,
          child: OutlinedButton(
            child: Text('Button'),
            onPressed: () {},
            style: ButtonStyle(
              side: MaterialStateProperty.resolveWith(
                ((states) {
                  if (states.contains(MaterialState.focused) &&
                      !states.contains(MaterialState.pressed)) {
                    //获取焦点时的颜色
                    return BorderSide(color: Colors.yellow[300]);
                  }
                  //默认状态使用黑色
                  return BorderSide(color: Colors.black);
                }),
              ),
              overlayColor: MaterialStateProperty.all(Colors.grey[200]), //水波纹颜色
            ),
            // splashColor: Colors.grey[200],
            // borderSide: BorderSide(
            //   color: Colors.black,
            // ),
            // highlightedBorderColor: Colors.yellow[300],
            // color: Colors.yellow,
          ),
        )
      ],
    );

    final Widget _expandedButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlinedButton(
            child: Text('Button'),
            onPressed: () {},
            style: ButtonStyle(
              side: MaterialStateProperty.resolveWith(
                ((states) {
                  if (states.contains(MaterialState.focused) &&
                      !states.contains(MaterialState.pressed)) {
                    //获取焦点时的颜色
                    return BorderSide(color: Colors.yellow[300]);
                  }
                  //默认状态使用黑色
                  return BorderSide(color: Colors.black);
                }),
              ),
              overlayColor: MaterialStateProperty.all(Colors.grey[200]), //水波纹颜色
            ),
            // splashColor: Colors.grey[200],
            // borderSide: BorderSide(
            //   color: Colors.black,
            // ),
            // highlightedBorderColor: Colors.yellow[300],
            // color: Colors.yellow,
          ),
        ),
        SizedBox(
          width: 8.0,
        ),
        Expanded(
          flex: 2,
          child: OutlinedButton(
            child: Text('Button'),
            onPressed: () {},
            style: ButtonStyle(
              side: MaterialStateProperty.resolveWith(
                ((states) {
                  if (states.contains(MaterialState.focused) &&
                      !states.contains(MaterialState.pressed)) {
                    //获取焦点时的颜色
                    return BorderSide(color: Colors.yellow[300]);
                  }
                  //默认状态使用黑色
                  return BorderSide(color: Colors.black);
                }),
              ),
              overlayColor: MaterialStateProperty.all(Colors.grey[200]), //水波纹颜色
            ),
            // splashColor: Colors.grey[200],
            // borderSide: BorderSide(
            //   color: Colors.black,
            // ),
            // highlightedBorderColor: Colors.yellow[300],
            // color: Colors.yellow,
          ),
        ),
      ],
    );

    final Widget _buttonBar = Theme(
      data: Theme.of(context).copyWith(
        buttonTheme: ButtonThemeData(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
        ),
      ),
      child: ButtonBar(
        alignment: MainAxisAlignment.center,
        children: <Widget>[
          OutlinedButton(
            child: Text('Button'),
            onPressed: () {},
            style: ButtonStyle(
              side: MaterialStateProperty.resolveWith(
                ((states) {
                  if (states.contains(MaterialState.focused) &&
                      !states.contains(MaterialState.pressed)) {
                    //获取焦点时的颜色
                    return BorderSide(color: Colors.yellow[300]);
                  }
                  //默认状态使用黑色
                  return BorderSide(color: Colors.black);
                }),
              ),
              overlayColor: MaterialStateProperty.all(Colors.grey[200]), //水波纹颜色
            ),
            // splashColor: Colors.grey[200],
            // borderSide: BorderSide(
            //   color: Colors.black,
            // ),
            // highlightedBorderColor: Colors.yellow[300],
            // color: Colors.yellow,
          ),
          OutlinedButton(
            child: Text('Button'),
            onPressed: () {},
            style: ButtonStyle(
              side: MaterialStateProperty.resolveWith(
                ((states) {
                  if (states.contains(MaterialState.focused) &&
                      !states.contains(MaterialState.pressed)) {
                    //获取焦点时的颜色
                    return BorderSide(color: Colors.yellow[300]);
                  }
                  //默认状态使用黑色
                  return BorderSide(color: Colors.black);
                }),
              ),
              overlayColor: MaterialStateProperty.all(Colors.grey[200]), //水波纹颜色
            ),
            // splashColor: Colors.grey[200],
            // borderSide: BorderSide(
            //   color: Colors.black,
            // ),
            // highlightedBorderColor: Colors.yellow[300],
            // color: Colors.yellow,
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _flatButton,
            _raiseButton,
            _outlineButton,
            _fixedOutlineButton,
            _expandedButton,
            _buttonBar,
          ],
        ),
      ),
    );
  }
}

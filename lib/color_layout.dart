import 'package:flutter/material.dart';

const _CELL_PADDING = 10.0;

class _FirstRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red, height: 80);
  }
}

class _SecondRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: _CELL_PADDING),
      child: Row(
        children: [
          Expanded(
              child: AspectRatio(
                  aspectRatio: 1 / 1, child: Container(color: Colors.blue))),
          Container(width: _CELL_PADDING),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Column(
                children: [
                  Expanded(child: Container(color: Colors.yellow)),
                  Expanded(child: Container(color: Colors.purple)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _ThirdRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.only(top: _CELL_PADDING),
      child: Row(
        children: [
          Expanded(child: Container(color: Colors.blue[400], height: 100)),
          Expanded(child: Container(color: Colors.green[400], height: 100)),
          Expanded(child: Container(color: Colors.yellow[400], height: 100)),
          Expanded(child: Container(color: Colors.pink[400], height: 100)),
        ])

    );
  }
}

class ColorLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      padding: EdgeInsets.all(25),
      color: Colors.grey[300],
      height: double.infinity,
      width: double.infinity,
      child: Column(children: [
        _FirstRow(),
        _SecondRow(),
        _ThirdRow(),
      ]),
    ));
  }
}

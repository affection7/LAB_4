import 'package:flutter/material.dart';
import 'dart:math';

class MyBody extends StatefulWidget {
  @override
  createState() => MyBodyState();
}

class MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, i) {
      print('num $i : нечетное = ${i.isOdd}');

//  todo: рекомендую к прочтению книги "Чистый код".
//        представим, что второму разработчику придется модифицировать оператор
// сравнения. Таким образом придется переписывать его
      if (i.isOdd)
        return new Divider(
          color: Colors.amber,
        );
      final int index = i ~/ 2;

      index.toDouble();

// todo: ненужное вычищается

      //if (index >= _array.length)
      //_array.addAll(['$index', '${index + 1}', '${index + 2}']);
      num x = pow(2, index);
      return Text('2' '^' '$index' ' ' '=' '$x');
    });
  }
}

// todo: ну, запрятали... возвращайте на место,
//       чтобы читался код и логика сверху вниз
void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        appBar: AppBar(
            title: Container(
          // todo: соблюдаем отступы!
          child: Text(
            'Список элементов',
            style: TextStyle(color: Colors.black),
          ),
        )),
        body: Center(
          child: MyBody(),
        ))));

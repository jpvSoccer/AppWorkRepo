class MyTwoScreensHomePage extends StatefulWidget {

@override
_MyAppState createState() => new _MyAppState();

}

class _MyAppState extends State<MyTwoScreensHomePage> { 
int counter; 

@override
void initState() {
super.initState();
counter = counter ?? 0;
} 

void _decrementCounter(_) {
setState(() {
counter--;
print('decrement: $counter');
});
}

void _incrementCounter(_) {
setState(() {
counter++;
print('increment: $counter');
});
} 

@override
Widget build(BuildContext context) {
return new MaterialApp(
title: 'Flutter Demo',
theme: new ThemeData(
primarySwatch: Colors.blue,
),
home: new MyHomePage(
title: 'My Home Page',
counter: counter,
decrementCounter: _decrementCounter,
incrementCounter: _incrementCounter,
),
);
}
}


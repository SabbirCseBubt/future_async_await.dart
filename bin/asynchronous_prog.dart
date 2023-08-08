import 'package:asynchronous_prog/asynchronous_prog.dart' as asynchronous_prog;
import 'package:http/http.dart' as http;

void main(List<String> arguments)
{
  //_loadData();
 // _showTry();

  /*final future=fetchNumber();

  future.then((value)
  {
    print(value);

  });*/
  List<String> lst=["sabbir","haque","reaid"];
  fetchMultipleData(lst);
  
}
Future<void> _loadData() async {
  
  final response=await http.get(Uri.parse('https://api.slingacademy.com/v1/sample-data/users'));
  print(response.body);
  


}


//we can also use try catch block in asynchronous programming

Future<void> _showTry() async
{

  try
  {

    final response=await http.get(Uri.parse('https://api.slingacademy.com/v1/sample-data/users'));
    print(response.body);

  }
  catch(e)
  {

    print(e);
  }




}

//future objects

Future<int> fetchNumber() async
{
  await Future.delayed(Duration(seconds: 2));
  return 42;


}


 // loops in future
Future <void> fetchMultipleData(List<String> list) async
{

  for(var item in list)
  {

    print(item);
  }





}

import 'package:http/http.dart' as http;
import 'package:sample_project/app/data/model/customer_details_model.dart';


class APIProvider {

Future<CustomerDetails?> getData() async {
     var endPoint = 'http://test.api.boxigo.in/sample-data/';
     var responce = await http.get(Uri.parse(endPoint));
     if(responce.statusCode==200 || responce.statusCode==201){
        var jsonString = responce.body;
        return customerDetailsFromJson(jsonString);
     }
     throw Exception('SomeThing Went Wrong');
}
}
import 'package:http/http.dart' as http;
import 'dart:convert';

class Details {
  


Future loginUser (String username, String password) async {
  String url = 'http://api.securedparking.ng/public/api/nims/login';
  http.Response response = await http.post(url,
  headers:{'Accept': 'Application/json'},
  body: {'username': username, 'password': password }
  );
  var convert = jsonDecode(response.body);
  return convert;
  
}
  Future registerUser (email,  phone_number, company_name, username, password, address  ) async {
    String url = 'http://api.securedparking.ng/public/api/signup';
    http.Response response = await http.post(url,
    headers:{'Accept': 'Application/json'},
    body: {'email':email, 'phone_number': phone_number, 'company_name':company_name, 'password':password, 'username':username, 'address':address },);
    
  var convert = jsonDecode(response.body);
  return convert;
  }

Future createClient(user, client_name) async {
  String url = 'http://api.securedparking.ng/public/api/new/client';
    http.Response response = await http.post(url,
    headers:{'Accept': 'Application/json'},
    body: {"user": user, "client_name": client_name });


}


 Future chooseStyle (client, style) async {

   String url = 'http://api.securedparking.ng/public/api/new/measurement';
   http.Response response = await http.post(url,
   headers:{'Accept': 'Application/json'},
   body:{"client": client, "style": style },
   
   );
   var convert = jsonDecode(response.body);
   return convert;
 }

}


import 'package:http/http.dart' as http;
import 'dart:convert';


class Mearsurement {

  Future babariga ( number_of_outfit, neck, 
   length_of_top, waist_of_top, arm_measurement, shoulder, sleeve, chest, length, waist,  hips, thigh, ankles, trouser_inner_length, other) async {
   String url = 'http://api.securedparking.ng/public/api/new/measurement';

      http.Response response =  await http.post(url,
         headers:{'Accept': 'Application/json'},
         body: { "number_of_outfit": number_of_outfit,
    "shoulder": shoulder, "sleeve": sleeve, "chest": chest, 
   "neck": neck,   "length_of_top": length_of_top, "waist_of_top": waist_of_top,
    "arm_measurement":  arm_measurement,"length_of_trouser": length, "waist_of_trouser": waist, "hips": hips, "thigh": thigh,
     "around_the_ankles": ankles, "trouser_inner_length": trouser_inner_length, "length_of_top": length_of_top, "other": other }
      );
      var convert = jsonDecode(response.body);
      return convert;
 }


  Future danshiki ( number_of_outfit,  sleeve, chest,  neck, shoulder, length_of_danshiki, other) async {
   String url = 'http://api.securedparking.ng/public/api/new/measurement';

      http.Response response =  await http.post(url,
         headers:{'Accept': 'Application/json'},
         body: { "number_of_outfit": number_of_outfit, 
    "shoulder": shoulder, "sleeve": sleeve, "chest": chest,
   "neck": neck, "length_of_danshiki": length_of_danshiki, "other": other}
      );
   var convert = jsonDecode(response.body);
      return convert;
 }

 
  Future kaftan ( number_of_outfit, length_of_trouser,
 waist, hips, thigh, ankles,  pant, other) async {
   String url = 'http://api.securedparking.ng/public/api/new/measurement';

      http.Response response =  await http.post(url,
         headers:{'Accept': 'Application/json'},
         body: {  "number_of_outfit": number_of_outfit,
   "length_of_trouser": length_of_trouser, "waist_of_trouser": waist, "hips": hips, "thigh": thigh, "around_the_ankles": ankles, 
    "pant_inner_lenght": pant, "other": other}
      );
         var convert = jsonDecode(response.body);
      return convert;
 }

 
  Future officepant ( number_of_outfit, length_of_trouser,
 waist, hips, thigh, ankles,  pant, other) async {
   String url = 'http://api.securedparking.ng/public/api/new/measurement';

      http.Response response =  await http.post(url,
         headers:{'Accept': 'Application/json'},
         body: { "number_of_outfit": number_of_outfit,  
   "length_of_trouser": length_of_trouser, "waist_of_trouser": waist, "hips": hips, "thigh": thigh, "around_the_ankles": ankles, 
    "pant_inner_lenght": pant, "other": other}
      );
         var convert = jsonDecode(response.body);
      return convert;
 }


}
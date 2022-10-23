import 'dart:convert';
import 'package:http/http.dart' as http;

class SlotDef{
  String baseUrl = "http://192.168.83.91:5000/slot_data/Slot_det";
  Future<List> getAllSlot() async {
    try{
      var response = await http.get(Uri.parse(baseUrl));
      // print(response);
      // print(response.body);
      if(response.statusCode == 200) {
        print(response.body);
        return jsonDecode(response.body);
      }
      else {
        return Future.error('Server Error');
      }
    }catch(e) {
      return Future.error(e);
    }
  }
}

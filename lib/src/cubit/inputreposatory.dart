import 'package:two_input_project/src/services/api_helper.dart';
import 'package:two_input_project/src/services/model/model.dart';

class Repository{
  Future fetchData()async{
    const routeUrl="albums/1";
    var response=ApiHelper.internal().getRequest(routeUrl);
    print(response);
    return response ;
  }
}
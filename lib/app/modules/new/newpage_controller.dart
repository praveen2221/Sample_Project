import 'package:get/get.dart';
import 'package:sample_project/app/data/model/customer_details_model.dart';
import 'package:sample_project/app/data/provider/api_provider.dart';

class NewPageController extends GetxController {
 var customerDetails = CustomerDetails().obs;
  @override
  void onInit() {
    factchdata();
    super.onInit();
  }

  factchdata() async{
    customerDetails.value = await APIProvider().getData() as CustomerDetails;
  }
}

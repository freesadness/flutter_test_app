import 'package:flutter_test/flutter_test.dart';
import '../lib/post_api_service.dart';
void main() {
  group(
    "chopper tests",
    () {

      PostApiService service;
      setUp(
              (){
            service = PostApiService.create();
          }
      );
      test("test chopper response", () async {
        var response = await service.getPost(3);
        print(response.body.toString());
        print(response.bodyString);
        expect(response.bodyString, isNotEmpty );
      });
    },
  );
}

import 'package:spart_app/app/app.dart';
import 'package:spart_app/bootstrap.dart';

void main() {
  bootstrap(
    (localStorageService) => App(
      localStorageService: localStorageService,
    ),
  );
}

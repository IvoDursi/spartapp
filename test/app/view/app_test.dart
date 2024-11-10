import 'package:flutter_test/flutter_test.dart';
import 'package:spartapp/app/app.dart';
import 'package:spartapp/home/home.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}

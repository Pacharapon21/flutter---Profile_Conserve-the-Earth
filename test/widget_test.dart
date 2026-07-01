// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:profile_home/main.dart';

void main() {
  testWidgets('Profile screen smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the title 'GreenPoint' is present.
    expect(find.text('GreenPoint'), findsOneWidget);

    // Verify that the profile name 'Mr.Pacharapon' is present.
    expect(find.text('Mr.Pacharapon'), findsOneWidget);

    // Verify that the level 'Level 5' is present.
    expect(find.text('Level 5'), findsOneWidget);

    // Verify that the camera icon is present.
    expect(find.byIcon(Icons.camera_alt), findsOneWidget);

    // Verify that the eco icon is present.
    expect(find.byIcon(Icons.eco), findsAtLeastNWidgets(1));

    // Verify that the mascot speech text is present.
    expect(
      find.text('ยอดเยี่ยมมาก! คุณกำลังช่วยโลก ไปพร้อมกับสร้างสิ่งดีๆ ให้ตัวเอง'),
      findsOneWidget,
    );

    // Verify that daily streak text is present.
    expect(find.text('ใช้แอปต่อเนื่อง'), findsOneWidget);
    expect(find.text('12'), findsOneWidget);

    // Verify that Achievements section is present.
    expect(find.text('Achievements'), findsOneWidget);
    expect(find.text('Eco Starter'), findsOneWidget);

    // Verify that Transaction History is present.
    expect(find.text('ประวัติการทำรายการ'), findsOneWidget);
    expect(find.text('สแกน QR code ที่ร้านกระเจี๊ยบ'), findsOneWidget);

    // Verify that BottomNavigationBar items are present.
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Partner Store'), findsOneWidget);
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sks_ticket_view/sks_ticket_view.dart';

void main() {
  group('Ticket View', () {
    testWidgets(
      'Vertical Ticket View Draw Border, Arc and Dash',
      (WidgetTester tester) async {
        await tester.pumpWidget(const SKSTicketView(
          drawArc: true,
          drawBorder: true,
          drawDivider: true,
          triangleAxis: Axis.vertical,
        ));
        await tester.pumpAndSettle();
        await tester.idle();
        expect(find.byType(SKSTicketView), findsOneWidget);
      },
    );

    testWidgets(
      'Vertical Ticket View Does Not Draw Border, Arc and Dash',
      (WidgetTester tester) async {
        await tester.pumpWidget(const SKSTicketView(
          drawArc: false,
          drawBorder: false,
          drawDivider: false,
          triangleAxis: Axis.vertical,
        ));
        await tester.pumpAndSettle();
        await tester.idle();
        expect(find.byType(SKSTicketView), findsOneWidget);
      },
    );

    testWidgets(
      'Horizontal Ticket View Does Not Draw Arc and Dash',
      (WidgetTester tester) async {
        await tester.pumpWidget(const SKSTicketView(
          drawArc: false,
          drawBorder: false,
          drawDivider: false,
          triangleAxis: Axis.horizontal,
        ));
        await tester.pumpAndSettle();
        await tester.idle();
        expect(find.byType(SKSTicketView), findsOneWidget);
      },
    );
  });
}

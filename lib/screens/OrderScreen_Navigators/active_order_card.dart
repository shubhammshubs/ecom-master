// // active_order_card.dart
//
// import 'package:flutter/material.dart';
//
// class ActiveOrderCard extends StatelessWidget {
//   final String id;
//   final String orderDate;
//   final String payment;
//   final String orderStatus;
//
//   ActiveOrderCard({
//     required this.id,
//     required this.orderDate,
//     required this.payment,
//     required this.orderStatus,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 2,
//       margin: EdgeInsets.all(8),
//       child: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Align(
//               alignment: Alignment.topLeft,
//               child: Container(
//                 padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
//                 decoration: BoxDecoration(
//                   color: orderStatus == 'Order Placed'
//                       ? Colors.amber.shade50
//                       : Colors.blue.shade50,
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//                 child: Text(
//                   orderStatus,
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.bold,
//                     color: orderStatus == 'Order Placed'
//                         ? Colors.orange
//                         : Colors.blue,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 16),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   children: [
//                     Text(
//                       'Transaction ID',
//                       style: TextStyle(
//                         fontSize: 14,
//                         color: Colors.black45,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text(
//                       id,
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Text(
//                       'Order Details',
//                       style: TextStyle(
//                         fontSize: 14,
//                         color: Colors.black45,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text(
//                       orderDate,
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Text(
//                       'Total Payments',
//                       style: TextStyle(
//                         fontSize: 14,
//                         color: Colors.black45,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text(
//                       " Rs.${payment}",
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(height: 16),
//             Container(
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.black12, width: 1),
//                 borderRadius: BorderRadius.circular(1),
//               ),
//             ),
//             SizedBox(height: 16),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     // Implement cancel order action
//                   },
//                   style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all(
//                         Colors.grey[100]),
//                   ),
//                   child: Text(
//                       'Cancel Order', style: TextStyle(color: Colors.green)),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Implement track order action
//                   },
//                   child: Text('Track Order'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
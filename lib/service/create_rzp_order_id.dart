  import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

Future<String> createRazorpayOrderID({
    required num amount,
    required String rzpKey,
    required String razorpayKeySecret,
  }) async {
    try {
      String receipt =
          'rcpt_${DateFormat('yyyyMMddHHmmss').format(DateTime.now())}_${const Uuid().v4().substring(0, 8)}';
      log('receipt $receipt');

      String basicAuth =
          'Basic ${base64.encode(utf8.encode('$rzpKey:$razorpayKeySecret'))}';

      // Debugging log
      log('Authorization Header: $basicAuth');

      Map<String, dynamic> data = {
        "amount": (amount * 100),
        "currency": "INR",
        "receipt": receipt,
      };

      // Debugging log
      log('Request Data: $data');

      http.Response response = await http.post(
        Uri.parse('https://api.razorpay.com/v1/orders'),
        headers: {
          'Authorization': basicAuth,
          'Content-Type': 'application/json',
        },
        body: jsonEncode(data),
      );

      // Debugging log
      log('Response Status Code: ${response.statusCode}');
      log('Response Data: ${response.body}');

      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        var orderId = responseData['id'];
        return orderId;
      } else {
        throw Exception('Failed to create order: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error creating order: $e');
    }
  }
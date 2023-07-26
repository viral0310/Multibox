import 'package:flutter/material.dart';

class SetUpScreen extends StatefulWidget {
  const SetUpScreen({super.key});

  @override
  State<SetUpScreen> createState() => _SetUpScreenState();
}

List<Map<String, dynamic>> payment = [
  {
    'checkbox': false,
    'image': 'assets/images/PaymentIcon/paypal.png',
    'name': 'Paypal',
  },
  {
    'checkbox': false,
    'image': 'assets/images/PaymentIcon/stripe.png',
    'name': 'Stripe',
  },
  {
    'checkbox': false,
    'image': 'assets/images/PaymentIcon/venmo.png',
    'name': 'Venmo',
  },
  {
    'checkbox': false,
    'image': 'assets/images/PaymentIcon/paypal checkout.jpg',
    'name': 'Paypal Checkout',
  },
  {
    'checkbox': false,
    'image': 'assets/images/PaymentIcon/brain tree.png',
    'name': 'Braintree',
  },
  {
    'checkbox': false,
    'image': 'assets/images/PaymentIcon/upi.jpg',
    'name': 'UPI',
  },
  {
    'checkbox': false,
    'image': 'assets/images/PaymentIcon/gpay.png',
    'name': 'Google Pay',
  },
  {
    'checkbox': false,
    'image': 'assets/images/PaymentIcon/apple pay.png',
    'name': 'Apple Pay',
  },
  {
    'checkbox': false,
    'image': 'assets/images/PaymentIcon/apple pay.png',
    'name': 'Apple Pay',
  },
  {
    'checkbox': false,
    'image': 'assets/images/PaymentIcon/square.png',
    'name': 'Square',
  },
  {
    'checkbox': false,
    'image': 'assets/images/PaymentIcon/cash app.png',
    'name': 'Cash App',
  },
  {
    'checkbox': false,
    'image': 'assets/images/PaymentIcon/razorpay.png',
    'name': 'Razor Pay',
  },
  {
    'checkbox': false,
    'image': 'assets/images/PaymentIcon/visa.png',
    'name': 'Visa',
  },
  {
    'checkbox': false,
    'image': 'assets/images/PaymentIcon/master.png',
    'name': 'Master Card',
  },
  {
    'checkbox': false,
    'image': 'assets/images/PaymentIcon/maestro.png',
    'name': 'Maestro',
  },
  {
    'checkbox': false,
    'image': 'assets/images/PaymentIcon/mpesa.png',
    'name': 'M Pesa',
  },
  {
    'checkbox': false,
    'image': 'assets/images/PaymentIcon/dbs paylah.png',
    'name': 'DBS PayLah',
  },
  {
    'checkbox': false,
    'image': 'assets/images/PaymentIcon/izettle.png',
    'name': 'iZettle',
  },
  {
    'checkbox': false,
    'image': 'assets/images/PaymentIcon/zelle.png',
    'name': 'Zelle',
  },
  {
    'checkbox': false,
    'image': 'assets/images/PaymentIcon/facebook pay.png',
    'name': 'Facebook Pay',
  },
  {
    'checkbox': false,
    'image': 'assets/images/PaymentIcon/sumup.png',
    'name': 'SumUp',
  },
];

class _SetUpScreenState extends State<SetUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff5654a2),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Payment Methods',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.check,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

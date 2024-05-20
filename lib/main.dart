import 'package:flutter/material.dart';

void main() {
  runApp(PaytmUI());
}

class PaytmUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Paytm UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),

    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[50],
        elevation: 0,
        centerTitle: true, // Add this line to center the title
        title: Text(
          'Paytm',
          style: TextStyle(color: Colors.blue),
        ),
        leading: Icon(Icons.person_outline, color: Colors.grey),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.message, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.lightBlue[50],
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome offer for you!',
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.account_balance_wallet, color: Colors.blue, size: 30),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'Add Money to Wallet. Get up to ₹50 Cashback',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'T&C Apply',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            _buildSectionTitle('UPI Money Transfer'),
            _buildGridMenu([
              _buildMenuItem(Icons.qr_code_scanner, 'Scan & Pay'),
              _buildMenuItem(Icons.contacts, 'To Mobile or Contact'),
              _buildMenuItem(Icons.account_balance_wallet, 'To UPI Apps'),
              _buildMenuItem(Icons.account_balance, 'To Bank or Self A/c'),
            ]),
            SizedBox(height: 8),
            _buildSectionTitle('Balance & History'),
            _buildGridMenu([
              _buildMenuItem(Icons.receipt_long, 'Balance & History'),
              _buildMenuItem(Icons.account_balance, 'Paytm Bank'),
              _buildMenuItem(Icons.account_balance_wallet, 'Paytm Wallet'),
              _buildMenuItem(Icons.attach_money, 'Personal Loan'),
            ]),
            SizedBox(height: 8),
            _buildSectionTitle('Recharge & Bill Payments'),
            _buildGridMenu([
              _buildMenuItem(Icons.phone_android, 'Mobile Recharge'),
              _buildMenuItem(Icons.house, 'Rent via Credit'),
              _buildMenuItem(Icons.tv, 'DTH Recharge'),
              _buildMenuItem(Icons.bolt, 'Electricity Bill'),
              _buildMenuItem(Icons.credit_card, 'Credit Card'),
              _buildMenuItem(Icons.movie, 'OTT'),
              _buildMenuItem(Icons.qr_code_scanner, 'Scan Any QR'),
              _buildMenuItem(Icons.more_horiz, 'View More'),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildGridMenu(List<Widget> items) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView.count(
        crossAxisCount: 4,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: items,
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 30, color: Colors.blue),
        SizedBox(height: 4),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

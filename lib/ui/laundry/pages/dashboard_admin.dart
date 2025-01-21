import 'package:flutter/material.dart';
import 'orders_admin.dart'; // Import halaman OrdersAdminWidget
import 'add_order.dart';   // Import halaman AddOrderWidget

class DashboardAdminWidget extends StatefulWidget {
  const DashboardAdminWidget({Key? key}) : super(key: key);

  @override
  _DashboardAdminWidgetState createState() => _DashboardAdminWidgetState();
}

class _DashboardAdminWidgetState extends State<DashboardAdminWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // Warna background utama layar
      appBar: AppBar(
        title: const Text('Dashboard Admin'),
        backgroundColor: const Color(0xFF9489F5), // Warna AppBar
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Logout logic here
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Logged out')),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome, Admin',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          '08123456789',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          'admin1@gmail.com',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5), // Warna background untuk bagian Action
                ),
                child: const Text(
                  'Action',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              // My Orders
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrdersAdminWidget()), // Navigasi ke OrdersAdminWidget
                  );
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey[100], // Background warna putih keabu-abuan untuk My Orders
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26, // Shadow warna gelap
                        blurRadius: 8, // Ukuran blur shadow
                        offset: Offset(0, 4), // Posisi shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.assignment_rounded,
                        size: 40,
                        color: const Color(0xFF9489F5), // Warna ikon My Orders
                      ),
                      const SizedBox(width: 16),
                      Text(
                        'My Orders',
                        style: TextStyle(
                          color: const Color(0xFF9489F5), // Warna teks My Orders
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 30,
                        color: const Color(0xFF9489F5), // Warna ikon panah
                      ),
                    ],
                  ),
                ),
              ),
              // Add Order
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddOrderPage()), // Navigasi ke AddOrderWidget
                  );
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey[100], // Background warna putih keabu-abuan untuk Add Order
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26, // Shadow warna gelap
                        blurRadius: 8, // Ukuran blur shadow
                        offset: Offset(0, 4), // Posisi shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        size: 40,
                        color: const Color(0xFF9489F5), // Warna ikon Add Order
                      ),
                      const SizedBox(width: 16),
                      Text(
                        'Add Order',
                        style: TextStyle(
                          color: const Color(0xFF9489F5), // Warna teks Add Order
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 30,
                        color: const Color(0xFF9489F5), // Warna ikon panah
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

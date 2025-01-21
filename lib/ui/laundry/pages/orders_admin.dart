import 'package:flutter/material.dart';
import 'dashboard_admin.dart';
import 'update_order.dart';

class OrdersAdminWidget extends StatefulWidget {
  const OrdersAdminWidget({super.key});

  @override
  State<OrdersAdminWidget> createState() => _OrdersAdminWidgetState();
}

class _OrdersAdminWidgetState extends State<OrdersAdminWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF606A85),
              size: 30,
            ),
            onPressed: () {
              // Navigating back to the previous screen
              Navigator.pop(context);
            },
          ),
          actions: [],
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                  child: Text(
                    'Orders',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      color: Color(0xFF15161E),
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 4, 0, 0),
                  child: Text(
                    'Below are your most recent orders...',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      color: Color(0xFF606A85),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 24),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                        child: Container(
                          width: double.infinity,
                          constraints: BoxConstraints(maxWidth: 570),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFFE5E7EB),
                              width: 2,
                            ),
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Mon. July 3rd',
                                                    ),
                                                  ],
                                                  style: TextStyle(
                                                    color: Color(0xFF15161E),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                                child: Text(
                                                  'Cuci Kering',
                                                  style: TextStyle(
                                                    color: Color(0xFF606A85),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                                child: Text(
                                                  '5 kg',
                                                  style: TextStyle(
                                                    color: Color(0xFF606A85),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                                child: Container(
                                                  height: 32,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFF1F4F8),
                                                    borderRadius: BorderRadius.circular(12),
                                                    border: Border.all(
                                                      color: Color(0xFFE5E7EB),
                                                      width: 2,
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                      padding: EdgeInsets.symmetric(horizontal: 12),
                                                      child: Text(
                                                        'Menunggu..',
                                                        style: TextStyle(
                                                          color: Color(0xFF6F61EF),
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                                              child: Text(
                                                'Rp 25.000,-',
                                                textAlign: TextAlign.end,
                                                style: TextStyle(
                                                  color: Color(0xFF15161E),
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(1, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                                                child: ElevatedButton(
                                                  onPressed: () async {
                                                    // Navigate to Update Order page using named route
                                                    Navigator.pushNamed(context, '/update_order');
                                                  },
                                                  child: Text('Update'),
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor: Color(0xFF6F61EF),
                                                    padding: EdgeInsets.symmetric(horizontal: 16),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    foregroundColor: Colors.white, // Set the text color to white
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: OrdersAdminWidget(),
    routes: {
      '/dashboard_admin': (context) => DashboardAdminWidget(),
      '/update_order': (context) => UpdateOrderWidget(),
    },
  ));
}

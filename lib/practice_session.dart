import 'package:flutter/material.dart';

class PracticeScreen extends StatelessWidget {
  final Color primaryRed = Color.fromARGB(255, 164, 37, 37);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250, 255, 255, 255),
      appBar: AppBar(
        title: Text(
          'Practice Screen',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(
              255,
              0,
              0,
              0,
            ), // optional, to maintain your colour
          ),
        ),
        leading: Icon(Icons.arrow_back),
        actions: [Icon(Icons.notifications, color: primaryRed)],
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        foregroundColor: Colors.black,
        elevation:2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Practice Domains',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _buildDomainCard(Icons.code, "Programming", "500+ questions"),
                _buildDomainCard(
                  Icons.storage,
                  "Data Structures",
                  "300+ questions",
                ),
                _buildDomainCard(
                  Icons.calculate,
                  "Algorithms",
                  "400+ questions",
                ),
                _buildDomainCard(
                  Icons.design_services,
                  "System Design",
                  "200+ questions",
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Recent Practice Sessions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildSessionCard(
              "Data Structures Quiz",
              "20 Questions • 30 mins",
              "85%",
            ),
            _buildSessionCard(
              "Algorithm Practice",
              "15 Questions • 25 mins",
              "92%",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        selectedItemColor: primaryRed,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: 'Practice'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Jobs'),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_membership),
            label: 'Certificates',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
        ],
      ),
    );
  }

  Widget _buildDomainCard(IconData icon, String title, String subtitle) {
    return Container(
      width: 160,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 30, color: Color.fromARGB(255, 154, 15, 15)),
          SizedBox(height: 10),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text(
            subtitle,
            style: TextStyle(color: Colors.grey[600], fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildSessionCard(String title, String subtitle, String score) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Text(
                subtitle,
                style: TextStyle(color: Colors.grey[600], fontSize: 12),
              ),
            ],
          ),
          Text(
            score,
            style: TextStyle(
              color: Color.fromARGB(255, 154, 15, 15),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

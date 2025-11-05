import "package:flutter/material.dart";

void main() {
  runApp(const B44ServicesApp());
}

class B44ServicesApp extends StatelessWidget {
  const B44ServicesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "B44 Services App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class Official {
  final String name;
  final String position;
  final String contactNumber;

  Official(
      {required this.name, required this.position, required this.contactNumber});
}

class Hotline {
  final String name;
  final String contactNumber;
  final IconData icon;

  Hotline(
      {required this.name, required this.contactNumber, required this.icon});
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Official> officials = [
      Official(
          name: "Hon. Tito C. Villanueva",
          position: "Barangay Captain",
          contactNumber: "0912-345-6789"),
      Official(
          name: "Hon. Edson C. Sotto",
          position: "Kagawad",
          contactNumber: "0912-345-6789"),
      Official(
          name: "Hon. Antonio B. Baria Jr.",
          position: "Kagawad",
          contactNumber: "0912-345-6789"),
      Official(
          name: "Hon. Arnulf Lorcha",
          position: "Kagawad",
          contactNumber: "0912-345-6789"),
      Official(
          name: "Hon. Eddie Quintanilla",
          position: "Kagawad",
          contactNumber: "0912-345-6789"),
      Official(
          name: "Hon. Marcus Brian Asaytuno",
          position: "Kagawad",
          contactNumber: "0912-345-6789"),
      Official(
          name: "Hon. Nolan Puche",
          position: "Kagawad",
          contactNumber: "0912-345-6789"),
      Official(
          name: "Hon. Jason Dino",
          position: "Kagawad",
          contactNumber: "0912-345-6789"),
      Official(
          name: "Hon. Arjay Dino",
          position: "SK Chairman",
          contactNumber: "0912-345-6789"),
      Official(
          name: "Joy Alamil",
          position: "Secretary",
          contactNumber: "0912-345-6789"),
      Official(
          name: "Noel Esplana",
          position: "Treasurer",
          contactNumber: "0912-345-6789"),
    ];

    final List<Hotline> hotlines = [
      Hotline(
          name: "Philippine National Police Legazpi",
          contactNumber: "(052) 123-4567",
          icon: Icons.local_police),
      Hotline(
          name: "Bureau of Fire Protection Legazpi",
          contactNumber: "(052) 123-4567",
          icon: Icons.fire_truck),
      Hotline(
          name: "LGU Legazpi",
          contactNumber: "(052) 123-4567",
          icon: Icons.location_city),
      Hotline(
          name: "Cdrrmo",
          contactNumber: "(052) 123-4567",
          icon: Icons.emergency),
      Hotline(
          name: "City Health",
          contactNumber: "(052) 123-4567",
          icon: Icons.local_hospital),
      Hotline(
          name: "Legazpi City Hospital",
          contactNumber: "(052) 123-4567",
          icon: Icons.medical_services),
      Hotline(
          name: "Aleco",
          contactNumber: "(052) 123-4567",
          icon: Icons.lightbulb),
      Hotline(
          name: "LCWD",
          contactNumber: "(052) 123-4567",
          icon: Icons.water_drop),
      Hotline(
          name: "PAGASA",
          contactNumber: "(052) 123-4567",
          icon: Icons.cloud),
      Hotline(
          name: "EQRT Legazpi",
          contactNumber: "(052) 123-4567",
          icon: Icons.warning),
    ];

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("B44 Services App"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.people), text: "Officials"),
              Tab(icon: Icon(Icons.phone), text: "Hotlines"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildOfficialsList(officials),
            _buildHotlinesList(hotlines),
          ],
        ),
      ),
    );
  }

  Widget _buildOfficialsList(List<Official> officials) {
    return ListView.builder(
      itemCount: officials.length,
      itemBuilder: (context, index) {
        final official = officials[index];
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: ListTile(
            leading: const Icon(Icons.person),
            title: Text(official.name),
            subtitle: Text(official.position),
            trailing: Text(official.contactNumber),
          ),
        );
      },
    );
  }

  Widget _buildHotlinesList(List<Hotline> hotlines) {
    return ListView.builder(
      itemCount: hotlines.length,
      itemBuilder: (context, index) {
        final hotline = hotlines[index];
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: ListTile(
            leading: Icon(hotline.icon),
            title: Text(hotline.name),
            trailing: Text(hotline.contactNumber),
          ),
        );
      },
    );
  }
}

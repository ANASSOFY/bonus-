import 'package:flutter/material.dart';

class  FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
          Column(
           children: [
          ProfileHeader(
           avatarUrl: 'assets/photo6.jpg',
           name: 'Sofy',
           subtitle: 'anassofy2005@gmail.com',
    ),

    const SizedBox(height: 20),

    
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 0, 0),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  "12",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  "Projects",
                  style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 16),

        Expanded(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 150, 0, 0),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  "\$5,400",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  "Earned",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    ),

    const SizedBox(height: 12),

    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 201, 201, 201),
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Text(
          "Hi, I'm Anas, a front-end and Flutter developer passionate about building modern, responsive, and user-friendly applications.",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black87,
          ),
        ),
      ),
    ),

const SizedBox(height: 24),

Padding(
  padding: EdgeInsets.symmetric(horizontal: 16),
  child: Align(
    alignment: Alignment.centerLeft,
    child: Text(
      "Project Gallery",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    ),
  ),
),

SizedBox(height: 16),

Padding(
  padding: EdgeInsets.symmetric(horizontal: 16),
  child: Row(
    children: [
      Expanded(
        child: Column(
          children: [
            Container(
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "assets/photo7 (1).jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Review",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            )
          ],
        ),
      ),

      SizedBox(width: 12),

      Expanded(
        child: Column(
          children: [
            Container(
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "assets/photo8.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Review",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ],
  ),
),

   
 ],
   ),     
      ],
     ),
      ),
       );
        }
          }

class ProfileHeader extends StatelessWidget {
  final String name;
  final String subtitle;
  final String avatarUrl;

  const ProfileHeader({
    super.key,
    required this.name,
    required this.subtitle,
    required this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenWidth * 0.6,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(204, 178, 1, 1),
            Color.fromRGBO(0, 0, 0, 1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 16,
            left: 16,
            child: IconButton(
              icon: const Icon(Icons.settings, color: Colors.white),
              onPressed: () {},
            ),
          ),
          Positioned(
            top: 16,
            right: 16,
            child: IconButton(
              icon: const Icon(Icons.more_vert, color: Colors.white),
              onPressed: () {},
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 18,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: screenWidth * 0.13,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(avatarUrl),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                name,
                style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 6),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.message, size: 16, color: Colors.white),
                  const SizedBox(width: 6),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: screenWidth * 0.036,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
          Positioned(
            bottom: -20,
            left: 0,
            right: 0,
            child: Container(
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

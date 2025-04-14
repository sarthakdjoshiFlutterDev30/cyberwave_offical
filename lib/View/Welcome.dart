import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8.0),
                alignment: Alignment.centerLeft,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    icon: Icon(Icons.menu, color: Colors.black),
                    items:
                        <String>[
                          'Home',
                          'Services',
                          'Info',
                          'About',
                          'ContactUs',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                    onChanged: (String? value) {
                      switch (value) {
                        case 'Home':
                          Navigator.pushNamed(context, "/welcome");
                          break;
                        case 'Services':
                          Navigator.pushNamed(context, "/service");
                          break;
                        case 'Info':
                          Navigator.pushNamed(context, "/info");
                          break;
                        case 'About':
                          Navigator.pushNamed(context, "/About");
                          break;
                        case 'ContactUs':
                          Navigator.pushNamed(context, "/contactus");
                          break;
                      }
                    },
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.pink),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.2),
                    Center(child: Image.asset("assets/image/logo.gif")),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                    Text(
                      "All IT Solutions You Need",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),

              // Introduction Section
              Container(
                color: Colors.blueAccent,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Transforming Ideas into Innovative Digital Solutions',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'At Cyberwave Solutions, we specialize in creating powerful, user-friendly mobile and web applications tailored to meet the unique needs of businesses and startups. With a passion for technology and a commitment to excellence, we bring your ideas to life through innovative solutions.',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              // Services Overview Section
              Container(
                color: Colors.blueAccent,
                width: MediaQuery.of(context).size.width,

                child: Padding(
                  padding: const EdgeInsets.all(16.0),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'What We Offer:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      _buildServiceItem('Custom Mobile App Development'),
                      _buildServiceItem('Web Development'),
                      _buildServiceItem('UI/UX Design'),
                      _buildServiceItem('Integration Services'),
                    ],
                  ),
                ),
              ),

              // Portfolio Section
              Container(
                color: Colors.blueAccent,
                width: MediaQuery.of(context).size.width,

                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Our Work:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Explore our portfolio to see the diverse range of projects we\'ve successfully delivered, including:',
                      ),
                      SizedBox(height: 5),
                      Text(
                        '- College Management Apps',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '- E-commerce Platforms',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '- Real-time Chat Applications',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          // Navigate to portfolio page
                        },
                        child: Text('View Portfolio'),
                      ),
                    ],
                  ),
                ),
              ),

              // Testimonials Section
              Container(
                color: Colors.blueAccent,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Ready to Bring Your Idea to Life?',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Let’s connect and discuss how we can help you achieve your business goals with our custom solutions.',
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Navigate to contact page
                        },
                        child: Text('Contact Us'),
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

  // Method to build service items
  Widget _buildServiceItem(String service) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Text(
        '- $service',
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:bse25_34_fyp/Theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> jobCategories = [
    {"icon": Icons.design_services, "name": "Design"},
    {"icon": Icons.code, "name": "Development"},
    {"icon": Icons.business_center, "name": "Business"},
    {"icon": Icons.delivery_dining, "name": "Delivery"},
    {"icon": Icons.sell_rounded, "name": "Marketing"},
    {"icon": Icons.support, "name": "Customer Support"},
  ];

  // Sample job data
  final List<Map<String, String>> jobs = [
    {"title": "Groceries Run", "subtitle": "Kyambogo", "price": "25000"},
    {"title": "Painting Gig", "subtitle": "Makerere, Kavule", "price": "15000"},
    {"title": "Data Analyst", "subtitle": "Kikumi Kikumi", "price": "20000"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 4, right: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Row(
                  children: [
                    const SizedBox(width: 15),
                    const Icon(Icons.search),
                    const SizedBox(width: 15),
                    const Text(
                      "Search Jobs..",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const Spacer(),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.deeppurple,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(
                          image: AssetImage("assets/Icons/Ic_Settings.png"),
                          height: 40,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35),
              const Row(
                children: [
                  Text(
                    "Recommended for you",
                    style: TextStyle(
                        color: AppColors.deeppurple,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text(
                    "More",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(jobCategories.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[50],
                          borderRadius: BorderRadius.circular(20),
                          border:
                              Border.all(color: Colors.deepPurple, width: 1),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              jobCategories[index]['icon'],
                              color: Colors.deepPurple,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              jobCategories[index]['name'],
                              style: const TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Text(
                    "Job List",
                    style: TextStyle(
                        color: AppColors.deeppurple,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text(
                    "More",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(),
              ),
              const SizedBox(height: 8),
              // List of job tiles
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: jobs.length,
                itemBuilder: (context, index) {
                  final job = jobs[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/Images/profile.png"),
                                radius: 35,
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  "${job['title']} - UGX ${job['price']}",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  // Handle bookmark action
                                },
                                icon: const Icon(
                                  Icons.bookmark_border,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            job['subtitle']!,
                            style: const TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Handle apply action
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.deeppurple,
                                ),
                                child: const Text("Message"),
                              ),
                              const SizedBox(width: 10),
                              OutlinedButton(
                                onPressed: () {},
                                child: const Text(
                                  "Apply",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      home: const RegistrationPage(
        title: 'Registration Page',
      ),
    );
  }
}

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key, required this.title});

  final String title;

  @override
  State<RegistrationPage> createState() =>
      _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  String name = "";
  String mobile = "";
  String email = "";
  String gender = "";
  String? selectedFruit;

  bool reading = false;
  bool swimming = false;
  bool running = false;
  bool subscribe = false;
  bool isSwitched = false;

  double sliderValue = 20;

  List<String> fruits = [
    "Apple",
    "Banana",
    "Mango",
    "Orange",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold widget
      appBar: AppBar(
        // AppBar widget
        backgroundColor:
            Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      // SingleChildScrollView widget
      body: SingleChildScrollView(
        // Padding widget
        child: Padding(
          padding: const EdgeInsets.all(20),

          // Column widget
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text widget
              const Text(
                "Registration Form",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              // TextField widget
              TextField(
                decoration: const InputDecoration(
                  labelText: "Enter Name",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  name = value;
                },
              ),

              const SizedBox(height: 15),

              // TextField widget
              TextField(
                decoration: const InputDecoration(
                  labelText: "Enter Email",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  email = value;
                },
              ),

              const SizedBox(height: 15),

              // TextField widget
              TextField(
                decoration: const InputDecoration(
                  labelText: "Enter Mobile",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  mobile = value;
                },
              ),

              const Divider(),

              // Radio widget
              const Text("Gender"),

              // Row widget
              Row(
                children: [
                  // Radio widget
                  Radio<String>(
                    value: "Male",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                  ),

                  // Text widget
                  const Text("Male"),

                  // Radio widget
                  Radio<String>(
                    value: "Female",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                  ),

                  // Text widget
                  const Text("Female"),
                ],
              ),

              // RadioListTile widget
              RadioListTile<String>(
                title: const Text("Male"),
                value: "Male",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value!;
                  });
                },
              ),

              // RadioListTile widget
              RadioListTile<String>(
                title: const Text("Female"),
                value: "Female",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value!;
                  });
                },
              ),

              const Divider(),

              // Slider widget
              const Text("Select Value"),

              Slider(
                value: sliderValue,
                min: 0,
                max: 100,
                divisions: 5,
                label: sliderValue.round().toString(),
                onChanged: (double newValue) {
                  setState(() {
                    sliderValue = newValue;
                  });
                },
              ),

              // Text widget
              Text("Value: ${sliderValue.round()}"),

              const Divider(),

              // CheckboxListTile widget
              CheckboxListTile(
                title: const Text("Reading"),
                value: reading,
                onChanged: (value) {
                  setState(() {
                    reading = value!;
                  });
                },
              ),

              // CheckboxListTile widget
              CheckboxListTile(
                title: const Text("Swimming"),
                value: swimming,
                onChanged: (value) {
                  setState(() {
                    swimming = value!;
                  });
                },
              ),

              // CheckboxListTile widget
              CheckboxListTile(
                title: const Text("Running"),
                value: running,
                onChanged: (value) {
                  setState(() {
                    running = value!;
                  });
                },
              ),

              const Divider(),

              // CheckboxListTile widget
              CheckboxListTile(
                title: const Text("Subscribe to Newsletter"),
                subtitle: const Text("Receive updates via email"),
                value: subscribe,
                onChanged: (value) {
                  setState(() {
                    subscribe = value!;
                  });
                },
              ),

              const Divider(),

              // Switch widget
              Switch(
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),

              // Text widget
              Text(
                isSwitched ? "Switch ON" : "Switch OFF",
              ),

              const Divider(),

              // List widget
              const Text(
                "List",
                style: TextStyle(fontSize: 20),
              ),

              // Text widget
              Text(fruits.join(", ")),

              const Divider(),

              // ListView widget
              const Text(
                "ListView",
                style: TextStyle(fontSize: 20),
              ),

              // SizedBox widget
              SizedBox(
                height: 150,

                // ListView widget
                child: ListView(
                  children: const [
                    // ListTile widget
                    ListTile(
                      title: Text("Apple"),
                    ),

                    // ListTile widget
                    ListTile(
                      title: Text("Banana"),
                    ),

                    // ListTile widget
                    ListTile(
                      title: Text("Mango"),
                    ),

                    // ListTile widget
                    ListTile(
                      title: Text("Orange"),
                    ),
                  ],
                ),
              ),

              const Divider(),

              // ListView.builder widget
              const Text(
                "ListView.builder",
                style: TextStyle(fontSize: 20),
              ),

              // SizedBox widget
              SizedBox(
                height: 150,

                // ListView.builder widget
                child: ListView.builder(
                  itemCount: fruits.length,
                  itemBuilder: (context, index) {
                    // ListTile widget
                    return ListTile(
                      title: Text(fruits[index]),
                    );
                  },
                ),
              ),

              const Divider(),

              // DropdownButton widget
              DropdownButton<String>(
                value: selectedFruit,
                hint: const Text("Select Fruit"),
                items: fruits.map((String fruit) {
                  return DropdownMenuItem<String>(
                    value: fruit,
                    child: Text(fruit),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedFruit = value;
                  });
                },
              ),

              const Divider(),

              // ElevatedButton widget
              ElevatedButton(
                onPressed: () {
                  // showDialog function
                  showDialog(
                    context: context,
                    builder: (context) {
                      // AlertDialog widget
                      return AlertDialog(
                        title: const Text("Alert"),
                        content: const Text(
                          "This is an Alert Dialog Box",
                        ),
                        actions: [
                          // TextButton widget
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Cancel"),
                          ),

                          // ElevatedButton widget
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("OK"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text("Show Alert"),
              ),

              const Divider(),

              // Table widget
              const Text(
                "Table",
                style: TextStyle(fontSize: 20),
              ),

              Table(
                border: TableBorder.all(),
                children: const [
                  // TableRow widget
                  TableRow(
                    children: [
                      // Text widget
                      Text("Name"),

                      // Text widget
                      Text("Age"),
                    ],
                  ),

                  // TableRow widget
                  TableRow(
                    children: [
                      Text("Avadhi"),
                      Text("20"),
                    ],
                  ),

                  // TableRow widget
                  TableRow(
                    children: [
                      Text("Rahul"),
                      Text("21"),
                    ],
                  ),
                ],
              ),

              const Divider(),

              // GridView widget
              const Text(
                "GridView",
                style: TextStyle(fontSize: 20),
              ),

              // SizedBox widget
              SizedBox(
                height: 250,

                // GridView.count widget
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  padding: const EdgeInsets.all(10),
                  children: [
                    // Container widget
                    Container(
                      color: Colors.red,
                      child: const Center(
                        child: Text("Item 1"),
                      ),
                    ),

                    // Container widget
                    Container(
                      color: Colors.blue,
                      child: const Center(
                        child: Text("Item 2"),
                      ),
                    ),

                    // Container widget
                    Container(
                      color: Colors.green,
                      child: const Center(
                        child: Text("Item 3"),
                      ),
                    ),

                    // Container widget
                    Container(
                      color: Colors.yellow,
                      child: const Center(
                        child: Text("Item 4"),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // ElevatedButton widget
              ElevatedButton(
                onPressed: () {
                  // print function
                  print("Name: $name");
                  print("Email: $email");
                  print("Mobile: $mobile");
                  print("Gender: $gender");
                  print("Reading: $reading");
                  print("Swimming: $swimming");
                  print("Running: $running");
                  print("Slider Value: $sliderValue");
                  print("Switch: $isSwitched");
                  print("Fruit: $selectedFruit");

                  // ScaffoldMessenger widget
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "Name: $name\n"
                        "Email: $email\n"
                        "Mobile: $mobile\n"
                        "Gender: $gender\n"
                        "Fruit: ${selectedFruit ?? "Not selected"}",
                      ),
                    ),
                  );
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

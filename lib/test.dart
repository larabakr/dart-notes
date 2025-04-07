void main(args) {
  // print(greet('lara', 19) as Object);
  // positional arguments

  print(greet(age: 19, name: 'lara'));
  // named arguments

  // lists [ ] (arrays, vectors): ordered collection of values

  List<int> scores = [98, 12, 11, 58];

  scores.remove(12);

  print(scores.indexOf(12));

  scores.add(12);
  print(scores.indexOf(12));

  scores.shuffle();
  print(scores.indexOf(12));

  // sets { }: like lists but unordered and cant hold duplicates
  // note, { } is associated with Maps by default
  // you need to specifically tell the compiler its a set

  Set<String> emails = {'laSorabaker0@icloud.com', 'salam@org'};

  print(emails);

  for (int i = 0; i < 5; i++) {
    print(i);
  }

  int x = 0;

  while (x < 50) {
    if (x == 25) break;

    // if (x == 3) continue;
    x++;
    print(x);
  }

  // interate through lists/sets
  for (String email in emails) {
    print(email);
  }

  // narrow down a list/set based on a condition, its a filtering method
  print(emails.where((email) => email == 'larabaker0@icloud.com'));

  // Maps: same as dicts objects etc its a set of key:value pairs
  //Map<typeOfKey, typeOfValue>

  Map<String, String?> user = {
    "username": "larabakr",
    "password_hash": "xwewefk21",
  };

  // print(user);

  List<Map<String, String?>> users = [user];

  print(users.where((user) => user.containsValue('larabakr')));
  // theres containsKey too

  // to add a field

  user['sex'] = 'F';

  // to remove a field

  user.remove('sex');

  print(user.keys); // u can do the same with values
}

String greet({required String name, required int age}) {
  return "Hi, my name is $name and I am $age";
}

// parameters = the inpurt values we define at the function
// declaration

// arguments = the input values we feed the function when we envoke it

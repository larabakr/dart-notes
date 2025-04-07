import 'package:yaml/yaml.dart' as yaml show loadYaml;

/// use `deffered as` to lazy load a library.
/// allows a web app to load a library on demand, if and when the library is needed.

import 'dart:io' show File;

// show x = import ONLY x
// hide x = import EVERYTHING but LEAVE OUT x
// import x as y = y becomes how x is referred to
// imports usually follow this template
// import 'package:<package_name>/<folder>/<file>.dart';

import 'package:firstapp/index.dart' show hobbies;

// import 'dart:math' as math;

void main(List<String> args) async {
  // print(math.log(2));
  // print(math.pow(10, math.log(2) / math.log(10)));
  // in dart math.log() is ln(x)
  final file = File('./data/data.yaml');

  // assert("1" is String); if you do dart analyze filename/directory it'll point issues out lol
  // you can use dart fix --apply to automatically fix the issues, or dart fix --dry-run to preview suggested fixes

  if (await file.exists()) {
    final yamlString = await file.readAsString();

    final yamlData = yaml.loadYaml(yamlString);
    print(
      "${yamlData['name']} is ${yamlData['ethnicity']}! And ${yamlData['sex'] == 'female' ? 'her' : 'his'} hobbies are $hobbies",
    );
  } else {
    print('YAML file not found.');
  }

  if (await File('./data/reciept.yaml').exists()) {
    print(yaml.loadYaml(await File('./data/reciept.yaml').readAsString()));
  } else
    print('reciept not found');

  print(args);
}

```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonResponse = jsonDecode(response.body);
        print(jsonResponse);
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
        // Handle invalid JSON, such as logging or retrying
      } catch (e) {
        print('Error decoding JSON: $e');
        // Handle other exceptions during decoding
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('An error occurred: $e');
    //Handle or rethrow appropriately
  }
}

void main() async {
  await fetchData();
}
```
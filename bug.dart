```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success!  Do something with the response body.
      final jsonResponse = jsonDecode(response.body);
      print(jsonResponse);
    } else {
      // Handle error
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during the API call
    print('Error: $e');
    // Consider rethrowing or handling appropriately
    rethrow; // Re-throw to allow calling function to handle it
  }
}

void main() async {
  try {
    await fetchData();
  } catch (e) {
    print('An error occurred: $e');
  }
}
```
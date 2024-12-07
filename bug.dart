```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonResponse = jsonDecode(response.body);
      // Accessing a nested field that might be null
      final nestedValue = jsonResponse['data']['nestedField']; 
    } else {
      // Handle HTTP errors
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle exceptions during the API call or JSON processing
    print('Error: $e');
  }
}
```
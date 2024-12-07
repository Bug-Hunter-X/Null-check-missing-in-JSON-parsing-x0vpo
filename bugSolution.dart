```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      // Safely access nested field using null-aware operators
      final nestedValue = jsonResponse['data']?['nestedField']; 
      if (nestedValue != null) {
        // Process the nestedValue
        print('Nested value: $nestedValue');
      } else {
        print('Nested field is null');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```
```dart
Future<Result<dynamic>> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      return Result.success(jsonData);
    } else {
      return Result.failure('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    return Result.failure('Error: $e');
  }
}

class Result<T> {
  final T? data;
  final String? error;
  bool get isSuccess => error == null;
  bool get isFailure => error != null;

  Result.success(this.data) : error = null;
  Result.failure(this.error) : data = null;
}
```
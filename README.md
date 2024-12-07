# Unhandled FormatException in Dart Asynchronous Operation

This repository demonstrates an uncommon Dart code error involving unhandled exceptions during asynchronous operations. The `bug.dart` file contains code that fetches data from an API, and it includes a try-catch block to manage exceptions.  However, the code lacks comprehensive exception handling, leading to potential crashes if the server response is not valid JSON.  The `bugSolution.dart` file shows how to properly address this issue.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`. The program will fetch data from the specified API. If the API returns invalid JSON, it'll throw an unhandled exception.
3. Run `bugSolution.dart` to observe the improved error handling.
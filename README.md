# Unhandled Exceptions in Dart async/await

This example demonstrates a common issue in Dart asynchronous programming where exceptions caught within `async` functions may not effectively propagate up to the calling function.  The provided solution showcases best practices for handling such situations.

## Bug Description

The `fetchData` function uses `async`/`await` to make a network request. While it includes a `try-catch` block, this only handles the exception locally. If an error occurs, the calling function might remain unaware of the failure unless explicitly designed to check for it.

## Solution

The solution involves improving error handling by returning a value indicating success or failure, using futures explicitly, or using a more robust state management system to track the asynchronous operation's status.

# require_trailing_commas_custom

lint rule for custom_lint

**The rule is simple.** If you opened parentheses intending to write multiline contents, it requires trailing commas.

### ✅ Good
```dart
Foo(
  a: 1,
  b: 2,
);
```
```dart
Foo(Bar(
  a: 1,
  b: 2,
));
```

### ❌️ Bad
```dart
Foo(
  a: 1,
  b: 2 // <-
);
```
```dart
Foo(Bar(
  a: 1,
  b: 2 // <-
));
```
```dart
final (String, String) foo = (
  "bar",
  "baz" // <-
);
```
```dart
final foo = switch (state) {
  State.success => 0,
  State.failure => 1 // <-
}
```

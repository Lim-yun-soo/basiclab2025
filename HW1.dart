import 'dart:io';

int sumDigits(int num) {
  if (num < 0) {
    return num;
  }

  int sum = 0;
  
  while (num > 0) {
    sum += num % 10;
    num = num ~/ 10;
  }

  return sum;
}

void main() {
  print("숫자를 입력하세요: ");
  String? input = stdin.readLineSync();
  
  if (input != null && input.isNotEmpty) {
    int num = int.parse(input);
    print("결과: ${sumDigits(num)}");
  } else {
    print("유효한 숫자를 입력해 주세요.");
  }
}

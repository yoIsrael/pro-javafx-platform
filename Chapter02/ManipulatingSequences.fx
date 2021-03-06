var integers = [1, 3, 5, 7, 9];

print("integers = "); println(integers);
print("sizeof integers = "); println(sizeof integers);
print("integers[0] = "); println(integers[0]);
print("integers[4] = "); println(integers[4]);
print("integers[-1] = "); println(integers[-1]);
print("integers[5] = "); println(integers[5]);

print("integers[0..2] = "); println(integers[0..2]);
print("integers[0..<2] = "); println(integers[0..<2]);
print("integers[2..] = "); println(integers[2..]);
print("integers[-3..10] = "); println(integers[-3..10]);

print("integers[2..<2] = "); println(integers[2..<2]);
print("integers[2..0] = "); println(integers[2..0]);
print("integers[-2..-1] = "); println(integers[-2..-1]);
print("integers[5..6] = "); println(integers[5..6]);

print("integers[x | x > 4] = "); println(integers[x | x > 4]);
print("integers[x | indexof x < 2] = "); println(integers[x | indexof x < 2]);
print("integers[x | x > 10] = "); println(integers[x | x > 10]);

print("reverse integers = "); println(reverse integers);

var numbers = [3.14159, 2.71828];
print("numbers = "); println(numbers);

insert 0.57722 into numbers;
print("numbers = "); println(numbers);

insert 1.618 before numbers[0];
print("numbers = "); println(numbers);

insert 1.4142 after numbers[2];
print("numbers = "); println(numbers);

var strings = ["hello", "hello again", "goodbye"];
print("strings = "); println(strings);

insert ["how are you", "see you"] after strings[1];
print("strings = "); println(strings);

delete "see you" from strings;
print("strings = "); println(strings);

delete strings[2];
print("strings = "); println(strings);

delete strings[0..1];
print("strings = "); println(strings);

delete strings;
print("strings = "); println(strings);

# binaryRB
### Binary calculator in Ruby language using Stack data structure

During my studies I noticed that conversion from Decimal to Binary works like Stack. Thats why I decided to build Binary calculator using Stack data structure to practice OOP in Ruby

### Conversion from Decimal to Binary
To convert decimal number to binary we will divide the number by 2 until it reaches 0 and remember the rest of the division.

For example
To convert number 206~10~ to binary we create table:
| Decimal value / 2 | division result | Rest of the Division |
| ----------- | ----------- | ----------- |
| 206 / 2 | 103 | 0 |
| 103 / 2 | 51 | 1 |
| 51 / 2 | 25 | 1 |
| 25 / 2 | 12 | 1 |
| 12 / 2 | 6 | 0 |
| 6 / 2 | 3 | 0 |
| 3 / 2 | 1 | 1 |
| 1 / 2 | 0 | 1 |

Now We take this last column and write the numbers in reverse order.
So it will be **11001110<sub>2</sub>**

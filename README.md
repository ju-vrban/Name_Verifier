# Name Verifier


## Descrition
Name verifier is a console application that reads the entries from a text file, and checks their correctness. The user specifies the file location, and the entries should be formatted like this: DD.MM.YYYY Name Surname. The following entries are also correct, DD.MM.YYYY Name Name Surname Surname, and DD.MM.YYYY Name-Name Surname-Surname.


## Working
- CMake Sould be fine
- User input is working correctly
- RegEx is working fairly well

## Not working
- Multithreading is still not working
- Main output is to be implemented after multithreading
- Unit tests as of yet not implemented

## Usage

To try multithreading uncomment these lines in main:

```C++
std::thread read_thread(read_file_multithreading, path);
read_thread.detach();

std::thread processing_thread(insert_word);
processing_thread.join();
```

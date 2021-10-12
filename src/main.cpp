#include <QCoreApplication>
#include <thread>
#include "read_file.hpp"


int main(int argc, char *argv[])
{
    std::string path;

    std::cout << "Enter file path: " << std::endl;
    std::cin >> path;
/*
    std::thread read_thread(read_file_multithreading, path);
    read_thread.detach();

    std::thread processing_thread(insert_word);
    processing_thread.join();
*/
    read_file_no_mulitthreading(path);                                          //Funkcija bez multithreadinga
    results();

    QCoreApplication a(argc, argv);
    return 0;
    //return a.exec();

}

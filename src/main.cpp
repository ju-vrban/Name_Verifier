#include <QCoreApplication>
#include <string>
#include <thread>
#include <limits>
#include <vector>
#include "read_file.hpp"



int main(int argc, char *argv[])
{
    std::string path;

    std::cout << "Enter file path: " << std::endl;
    std::cin >> path;

    std::thread read_thread(read_file, path);
    std::thread processing_thread(insert_word);


    read_thread.join();
    processing_thread.join();

    QCoreApplication a(argc, argv);    

    return 0;

    return a.exec();


}

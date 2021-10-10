#include <QCoreApplication>
#include <string>
#include <thread>
#include "read_file.hpp"


int main(int argc, char *argv[])
{
    std::string path;

    std::cout << "Enter file path: " << std::endl;
    std::cin >> path;

    std::thread read_thread(read_file, path);
    std::cout<<"-2"<<std::endl;
    std::thread processing_thread(insert_word);
    std::cout<<"-1"<<std::endl;

    read_thread.detach();
    std::cout<<"0"<<std::endl;
    processing_thread.join();
    std::cout<<"1"<<std::endl;
    QCoreApplication a(argc, argv);
    std::cout<<"2"<<std::endl;
    return 0;
    //return a.exec();

}

#include "read_file.hpp"

class queue_lock {

private:
    std::mutex mut;

 /*
    std::string year;       // Maybe not needed
    std::string name1;
    std::string name2;
    std::string surname1;
    std::string surname2;
*/
public:
    std::queue<std::string> data_queue;
    std::string word;
    bool loop= true;

    std::string empty_queue(){
        std::string result;
        std::lock_guard<std::mutex> lock(mut);
        result = data_queue.front();
        //std::cout << "data_queue pop = " << data_queue.back() << std::endl;
        data_queue.pop();
        return result;
    };
    void fill_queue(std::string word){
        std::lock_guard<std::mutex> lock(mut);
        data_queue.push(word);
        std::cout << "data_queue back push = " << data_queue.back() << std::endl;
        std::cout << "data_queue front push = " << data_queue.front() << std::endl;

    };
};

void insert_word(){
    std::string words;
    queue_lock queue_lock;

    while(queue_lock.loop || (!queue_lock.loop && !queue_lock.data_queue.empty())){
        if(!queue_lock.data_queue.empty()){
            words = queue_lock.empty_queue();
        }
    }
        //std::cout << words << std::endl;
}

void read_file(std::string path){

    std::ifstream my_file;
    std::string line;
    int count_lines = 0;


    my_file.open(path.c_str());

    if(!my_file){
        std::cerr << "\npath: '" << path << "' not valid\n" << std::endl;
        exit(1);
    }

    queue_lock queue_lock;
    while (getline(my_file, line)){
        count_lines++;
        queue_lock.fill_queue(line);
    }

    queue_lock.loop = false;

    std::cout << "\nNumber of lines in file: " << count_lines << std::endl;

    my_file.clear();
    my_file.seekg(0);

    std::cout << "\n" << my_file.rdbuf()<<std::endl;

    my_file.close();

}


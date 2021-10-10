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
    std::queue<std::string> matching_words;
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

void check_words(std::string words){
    std::smatch matching;
    queue_lock queue_lock;
    std::regex date_name_surname("/^(?:(?:31(\-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)\d{2})$/gm");
    while(std::regex_search(words, matching, date_name_surname)){
        if(matching.ready()){
            queue_lock.matching_words.push(words);
        }
    }
}

void insert_word(){
    std::string words;
    queue_lock queue_lock;

    while(!queue_lock.data_queue.empty()){
        if(!queue_lock.data_queue.empty()){
            words = queue_lock.empty_queue();

        }

        std::cout<<"-4"<<std::endl;
        if(queue_lock.loop == false)
            break;
    std::cout<< "loop = " << queue_lock.loop<<std::endl;
    }
    std::cout<<"-3"<<std::endl;
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
    std::cout<<queue_lock.loop<<std::endl;

 /*   std::cout << "\nNumber of lines in file: " << count_lines << std::endl;

    my_file.clear();
    my_file.seekg(0);

    std::cout << "\n" << my_file.rdbuf()<<std::endl;
*/
    my_file.close();

}


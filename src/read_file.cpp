#include "read_file.hpp"


std::string check_words(std::string words){
    std::smatch matching;
    std::string default_out = "No match";
    word_processing processing;
    std::regex date_name_surname("^([a-z^(0[1-9˘]|1\\d|2[0-8]|29(?=.\\d\\d.(?!1[01345789]00|2[1235679]00)\\d\\d(?:[02468][048]|[13579][26]))|30(?!.02)|31(?=.0[13578]|.1[02])).(0[1-9]|1[0-2]).([12]\\d{3}) (?:[A-ZŠĐČĆŽ])([A-ZŠĐČĆŽšđčćža-z]+(?:\\s|-{1})?){1,4}$");

    if(std::regex_match(words, matching, date_name_surname)){
        if(matching.ready()){

            processing.push_processing(words);
            processing.write_matching_word_size();
            return words;
        }

    }
    return default_out;
}

void read_file_multithreading(std::string path){
    SafeQueue<std::string> queue_lock;
    std::ifstream my_file;
    std::string line;
    int count_lines = 0;
    my_file.open(path.c_str());

    if(!my_file){
        std::cerr << "\npath: '" << path << "' not valid\n" << std::endl;
        exit(1);
    }

    std::cout << "\nInput:" << std::endl;

    while (getline(my_file, line)){
        count_lines++;
        std::cout<< "\n:"  << count_lines << std::endl;
        queue_lock.fill_queue(line);
    }
    my_file.close();
}

void read_file_no_mulitthreading(std::string path){
    SafeQueue<std::string> queue_lock;
    std::ifstream my_file;
    std::string line;
    int count_lines = 0;
    my_file.open(path.c_str());

    if(!my_file){
        std::cerr << "\npath: '" << path << "' not valid\n" << std::endl;
        exit(1);
    }

    std::cout << "\nInput:" << std::endl;

    while (getline(my_file, line)){
        count_lines++;
        std::cout<< "\n:"  << count_lines << std::endl;
        queue_lock.fill_queue(line);
        std::string b =check_words(line);
        std::cout <<"out: "<< b << std::endl;
    }
    my_file.close();
}


void insert_word(){
    SafeQueue<std::string> queue_lock;
    std::string words;

    for(int i=0; i<100000;i++){}

    while(true){
        words = queue_lock.empty_queue();
        check_words(words);
        if(words == "empty") break;
    }
}


void results(){
    word_processing processing;
    std::cout << "\nOutput:\n" <<std::endl;
    for(int i = 0; i < processing.read_matching_word_size(); i++){
        std::cout << processing.read_processing() << std::endl;
    }
}

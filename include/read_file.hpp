#include <fstream>
#include <iostream>
#include <string>
#include <iomanip>
#include <queue>
#include <mutex>
#include <regex>
#include <vector>
#include <condition_variable>


void read_file_multithreading(std::string path);
void read_file_no_mulitthreading(std::string path);
void insert_word();
void results();


template <class T>
class SafeQueue{
public:
  SafeQueue(void)
    : data_queue()
    , mut()
    , cond()
  {}

  ~SafeQueue(void)
  {}

  void fill_queue(T Name)
  {
    std::lock_guard<std::mutex> lock(mut);
    data_queue.push(Name);
    std::cout<<data_queue.back()<< std::endl;
    cond.notify_one();
  }

  T empty_queue(void)
  {
    std::unique_lock<std::mutex> lock(mut);
      //cond.wait(lock);
    if(!data_queue.empty()){
        T result = data_queue.front();
        data_queue.pop();
        std::cout<<result<< std::endl;
        return result;
    }else{
        std::string result = "empty";
        return result;
    }

}
private:
  std::queue<T> data_queue;
  mutable std::mutex mut;
  std::condition_variable cond;
};


class loop_lock {
public:
  /*  std::string empty_queue(){
        std::string static result = "empty";
        std::lock_guard<std::mutex> lock(mut);
        if(!data_queue.empty()){
            result = data_queue.front();
            data_queue.pop();
            return result;
        }
        return result;
    }

    void fill_queue(std::string word){
        std::lock_guard<std::mutex> lock(mut);
        data_queue.push(word);
    }
*/
    void write_loop_status(bool input_loop){
        bool &new_loop = loop;
        new_loop = input_loop;
    }

    bool read_loop_status(){
        return loop;
    }

private:
    //std::queue<std::string> data_queue;
    //std::mutex mut;
    bool loop = true;
};


class word_processing{
public:
    void push_processing(std::string words){
        matching_words.push(words);
    }

    std::string read_processing(){
        std::string result;
        result = matching_words.front();
        matching_words.pop();
        return result;
    }

    void write_matching_word_size(){
        ++matching_words_size;
    }

    int read_matching_word_size(){
        return matching_words_size;
    }

private:
    std::queue<std::string> matching_words;
    int matching_words_size = 0;
};

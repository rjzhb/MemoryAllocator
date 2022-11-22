#include <iostream>
#include <vector>
#include "memory_allocator.h"
#include "firstfit_allocator.h"
#include "bestfit_allocator.h"

const static int FIRSTFIT = 1;
const static int BESTFIT = 2;

void user_operating(MemoryAllocator *memory_allocator) {
    std::cout << "<序号1: " << "作业1申请130KB空间>" << std::endl;
    memory_allocator->alloc(1, 130);
    memory_allocator->print();
    std::cout << "<序号2: " << "作业2申请60KB空间>" << std::endl;
    memory_allocator->alloc(2, 60);
    memory_allocator->print();
    std::cout << "<序号3: " << "作业3申请100KB空间>" << std::endl;
    memory_allocator->alloc(3, 100);
    memory_allocator->print();

    std::cout << "<序号4: " << "作业2释放空间>" << std::endl;
    memory_allocator->free(2);
    memory_allocator->print();

    std::cout << "<序号5: " << "作业4申请200KB空间>" << std::endl;
    memory_allocator->alloc(4, 200);
    memory_allocator->print();

    std::cout << "<序号6: " << "作业3释放空间>" << std::endl;
    memory_allocator->free(3);
    memory_allocator->print();
    std::cout << "<序号7: " << "作业1释放空间>" << std::endl;
    memory_allocator->free(1);
    memory_allocator->print();

    std::cout << "<序号8: " << "作业5申请140KB空间>" << std::endl;
    memory_allocator->alloc(5, 140);
    memory_allocator->print();
    std::cout << "<序号9: " << "作业6申请60KB空间>" << std::endl;
    memory_allocator->alloc(6, 60);
    memory_allocator->print();
    std::cout << "<序号10: " << "作业7申请50KB空间>" << std::endl;
    memory_allocator->alloc(7, 50);
    memory_allocator->print();

    std::cout << "<序号11: " << "作业6释放空间>" << std::endl;
    memory_allocator->free(6);
    memory_allocator->print();
}

void test_ff_alloc() {
    MemoryAllocator *memory_allocator = new FirstFitAllocator(640);

    std::cout << "系统采用首次适应算法分配过程如下:" << std::endl;
    std::cout << "------------------------------------------" << std::endl;
    user_operating(memory_allocator);
    std::cout << "------------------------------------------" << std::endl;

    delete memory_allocator;
}

void test_bf_alloc() {
    MemoryAllocator *memory_allocator = new BestFitAllocator(640);

    std::cout << "系统采用最佳适应算法分配过程如下:" << std::endl;
    std::cout << "------------------------------------------" << std::endl;
    user_operating(memory_allocator);
    std::cout << "------------------------------------------" << std::endl;

    delete memory_allocator;
}


int main() {
    int choice = 0;

    std::cout << "------------------------------------------" << std::endl;
    std::cout << "请选择算法： 1.首次适应算法  2.最佳适应算法" << std::endl;
    std::cout << "------------------------------------------" << std::endl;

    std::cin >> choice;

    switch (choice) {
        case FIRSTFIT:
            test_ff_alloc();
            break;
        case BESTFIT:
            test_bf_alloc();
            break;
    }


    return 0;
}

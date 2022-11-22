//
// Created by 86183 on 2022/11/22.
//

#ifndef MEMORYALLOCATOR_BESTFIT_ALLOCATOR_H
#define MEMORYALLOCATOR_BESTFIT_ALLOCATOR_H

#include <iostream>
#include "memory_allocator.h"
#include <list>
#include <vector>


class BestFitAllocator : public MemoryAllocator {
public:
    explicit BestFitAllocator(int size);

    virtual ~BestFitAllocator() override;

    auto alloc(int id, int size) -> bool override;

    auto free(int id) -> bool override;

    //输出分配块和空闲块
    void print() override;

private:
    //已分配块链表
    std::list<MemoryChunk> alloc_chunk_list_;
    //空闲块链表,动态保持size从小到大排列
    std::list<MemoryChunk> free_chunk_list_;
};


#endif //MEMORYALLOCATOR_BESTFIT_ALLOCATOR_H

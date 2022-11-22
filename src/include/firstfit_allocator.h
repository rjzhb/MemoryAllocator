//
// Created by 86183 on 2022/11/22.
//

#ifndef MEMORYALLOCATOR_FIRSTFIT_ALLOCATOR_H
#define MEMORYALLOCATOR_FIRSTFIT_ALLOCATOR_H


#include "memory_allocator.h"
#include <list>
#include <vector>


class FirstFitAllocator : public MemoryAllocator {
public:
    explicit FirstFitAllocator(int size);

    ~FirstFitAllocator() override;

    auto alloc(int id, int size) -> bool override;

    auto free(int id) -> bool override;

    //输出分配块和空闲块
    void print() override;

private:
    //已分配块链表
    std::list<MemoryChunk> alloc_chunk_list_;
    //空闲块链表
    std::list<MemoryChunk> free_chunk_list_;
};


#endif //MEMORYALLOCATOR_FIRSTFIT_ALLOCATOR_H

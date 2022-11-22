//
// Created by 86183 on 2022/11/22.
//

#ifndef MEMORYALLOCATOR_MEMORY_ALLOCATOR_H
#define MEMORYALLOCATOR_MEMORY_ALLOCATOR_H

#include <iostream>

const int INVALID = 0;

/**
 * 内存分配器
 */
class MemoryAllocator {
public:
    MemoryAllocator() = default;

    virtual ~MemoryAllocator() = default;

    //块结构定义
    struct MemoryChunk {
        int id;
        int begin;
        int end;
        size_t size;

        MemoryChunk(int id, int begin, int end) {
            this->id = id;
            this->begin = begin;
            this->end = end;
            this->size = end - begin;
        }
    };

    //链表排序重载,按begin大小
    struct ChunkBeginCompare {
        bool operator()(MemoryChunk m1, MemoryChunk m2) {
            return m1.begin < m2.begin;
        }
    };

    //链表排序重载，按size大小
    struct ChunkSizeCompare {
        bool operator()(MemoryChunk m1, MemoryChunk m2) {
            return m1.size < m2.size;
        }
    };


    virtual bool alloc(int id, int size) = 0;

    virtual bool free(int id) = 0;

    virtual void print() = 0;
};


#endif //MEMORYALLOCATOR_MEMORY_ALLOCATOR_H

/**
 * 最佳适应算法
 */

#include "bestfit_allocator.h"


BestFitAllocator::~BestFitAllocator() = default;

BestFitAllocator::BestFitAllocator(int size) {
    //空闲内存大小size
    free_chunk_list_.push_back(MemoryChunk{INVALID, 0, size});
}


bool BestFitAllocator::alloc(int id, int size) {
    //分配作业id大小size的内存
    for (auto iter = free_chunk_list_.begin(); iter != free_chunk_list_.end(); iter++) {
        MemoryChunk chunk = *iter;
        if (chunk.size >= size) {
            //加入分配内存区
            alloc_chunk_list_.push_back(MemoryChunk{id, chunk.begin, chunk.begin + size});
            //删除此块空闲内存
            if (free_chunk_list_.empty()) {
                return false;
            }
            free_chunk_list_.erase(iter++);
            //加入剩余内存
            free_chunk_list_.insert(iter, MemoryChunk{INVALID, chunk.begin + size, chunk.end});
            //排序，按size大小从小到大排序
            free_chunk_list_.sort(ChunkSizeCompare());
            break;
        }
    }

    return true;
}


bool BestFitAllocator::free(int id) {
    //释放作业id的内存
    for (auto iter = alloc_chunk_list_.begin(); iter != alloc_chunk_list_.end(); iter++) {
        if (iter->id == id) {
            //加入空闲块
            free_chunk_list_.push_back(*iter);
            free_chunk_list_.sort(ChunkBeginCompare());
            //删除分配链表的块
            if (free_chunk_list_.empty()) {
                return false;
            }
            alloc_chunk_list_.erase(iter++);
            break;
        }
    }

    auto temp = free_chunk_list_.begin();
    auto iter = free_chunk_list_.begin();
    iter++;

    //合并空闲块
    while (iter != free_chunk_list_.end()) {
        if (iter->begin == temp->end) {
            int end = iter->end;
            if (free_chunk_list_.empty()) {
                return false;
            }
            free_chunk_list_.erase(iter++);
            temp->end = end;
            temp->size = temp->end - temp->begin;
            temp->id = INVALID;
        } else {
            temp = iter;
            iter++;
        }
    }
    free_chunk_list_.sort(ChunkSizeCompare());

    return true;
}


void BestFitAllocator::print() {
    for (auto iter = free_chunk_list_.begin(); iter != free_chunk_list_.end(); iter++) {
        std::cout << iter->id << " " << iter->begin << "----" << iter->end << "  共" << iter->size << "KB空闲"
                  << std::endl;
    }

    for (auto iter = alloc_chunk_list_.begin(); iter != alloc_chunk_list_.end(); iter++) {
        std::cout << iter->id << " " << iter->begin << "----" << iter->end << "  共" << iter->size << "KB已分配"
                  << std::endl;
    }
}


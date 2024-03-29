//
// Created by os on 8/27/22.
//

#ifndef PROJECT_BASE_LIST_HPP
#define PROJECT_BASE_LIST_HPP

#include "../lib/mem.h"
#include "MemoryAllocator.hpp"

template<typename T>
class List
{
private:
    struct Elem
    {
        T *data;
        Elem *next;


        Elem(T *data, Elem *next) : data(data), next(next) {}
    };

    Elem *head, *tail;
    int num;

public:
    List() : head(0), tail(0), num(0){}

    List(const List<T> &) = delete;

    List<T> &operator=(const List<T> &) = delete;
    static void* operator new (size_t n);
    static void operator delete (void* p);

    int getNum(){return num;}

    void addFirst(T *data)
    {
        Elem *elem = new Elem(data, head);
        head = elem;
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
        if (tail)
        {
            tail->next = elem;
            tail = elem;
        } else
        {
            head = tail = elem;
        }
        num++;

    }

    T *removeFirst()
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }

        T *ret = elem->data;
//        delete elem;
        num--;
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
        return head->data;
    }

    T *removeLast()
    {
        if (!head) { return 0; }

        Elem *prev = 0;
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
        {
            prev = curr;
        }

        Elem *elem = tail;
        if (prev) { prev->next = 0; }
        else { head = 0; }
        tail = prev;

        T *ret = elem->data;
        delete elem;
        return ret;
    }

    T *peekLast()
    {
        if (!tail) { return 0; }
        return tail->data;
    }
};

template<typename T>
void List<T>::operator delete(void *p) {
    MemoryAllocator::free(p);
}

template<typename T>
void *List<T>::operator new(size_t n) {
    return MemoryAllocator::malloc(n);
}

#endif //PROJECT_BASE_LIST_HPP

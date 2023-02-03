
// Created by os on 4/17/22.
//

#ifndef XV6_CONSUMERPRODUCER_C_API_TEST_H
#define XV6_CONSUMERPRODUCER_C_API_TEST_H

#include "../h/syscall_cpp.hpp"

#include "buffer.hpp"

sem_t waitForAll;

struct thread_data {
    int id;
    Buffer *buffer;
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    struct thread_data *data = (struct thread_data *) arg;
    int key;
    int i = 0;
//    0x1b
    while ((key = __getc()) != 'A') {
        __putc(key);
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
        }
    }

    threadEnd = 1;
    data->buffer->put('!');

    sem_signal(data->wait);
}

void producer(void *arg) {
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    while (!threadEnd) {
        i++;
        if (i % (10 * data->id) == 0) {
            thread_dispatch();
        }
    }

    sem_signal(data->wait);
}

void consumer(void *arg) {
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    while (!threadEnd) {
        int key = data->buffer->get();
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
        }

        if (i % 80 == 0) {
            putc('\n');
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
        putc(key);
    }

    sem_signal(data->wait);
}

void producerConsumer_C_API() {
    char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    getString(input, 30);
    threadNum = stringToInt(input);

    printString("Unesite velicinu bafera?\n");
    getString(input, 30);
    n = stringToInt(input);

    printString("Broj proizvodjaca "); printInt(threadNum);
    printString(" i velicina bafera "); printInt(n);
    printString(".\n");

    if(threadNum > n) {
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
        return;
    } else if (threadNum < 1) {
        printString("Broj proizvodjaca mora biti veci od nula!\n");
        return;
    }

    Buffer *buffer = new Buffer(n);
//    buffer->put(3);
//    char c='0';
//    c+=buffer->get();
//    __putc(c);

    sem_open(&waitForAll, 0);
//    if(waitForAll==nullptr){ printString("null\n");}
//    else printString("nije null");
    thread_t threads[threadNum];
    thread_t consumerThread;

    struct thread_data data[threadNum + 1];

    data[threadNum].id = threadNum;
    data[threadNum].buffer = buffer;
    data[threadNum].wait = waitForAll;
    thread_create(&consumerThread, consumer, data + threadNum);


    for (int i = 0; i < threadNum; i++) {
        data[i].id = i;
        data[i].buffer = buffer;
        data[i].wait = waitForAll;

        thread_create(threads + i,
                      i > 0 ? producer : producerKeyboard,
                      data + i);
    }

//    data[0].buffer->put(3);
//    char c='0';
//    c+=buffer->get();
//    __putc(c);

    thread_dispatch();

    for (int i = 0; i <= threadNum; i++) {
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;

}

#endif //XV6_CONSUMERPRODUCER_C_API_TEST_H

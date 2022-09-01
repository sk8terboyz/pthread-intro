## Pthread Introduction

This is code from a class I took a couple years ago where all code was developed on Linux servers.

This program was created to fulfill homework/classroom requirements, not professional development.

Old README/Explanation:

The pthread APIs work by splitting the work that needs to be done into multiple threads, or cores, within the CPU. The API pthread_attr_init() takes an attribute of the thread that has already been initialized by pthread_attr_t. It initializes the thread attributes object pointed to by the previously initialized attr with default attribute values. This allows the individual attributes of the object to be set using various related functions and used to create threads using pthread_create(). 
The API pthread_create() function is, as stated, used to create threads for the program to run on. The parameters it takes are a reference to the thread object, a reference to the attribute that has already been created, a function to serve as the "start_routine", and an argument that is used by the start routine function. This thread can only be terminated by a few functions: pthread_join(), pthread_exit(), pthread_cancel(), and exit(3).
After both of these APIs have been used, pthread_join() is then used to combine the threads back together. This will allow the program to fully utilize the threads that have already been created by joining them back together. It takes the parameters of the thread object identifier and a retval that is typically set as a null value. By taking these parameters, the join function will wait for the threads to complete and then join back together. If the thread object specified has already been terminated, then pthread_join() will return immediately.
Finally the pthread API pthread_exit() will terminate the calling thread and can return a value through its single parameter retval. This parameter is used as a way to exit out of all the threads that are currently in use by the program. The retval parameter is used to connect the threads that are being used by the same process.
In the figure 4.11 program, the threads are created and used to take an integer value and atoi it to change it to a string. The number of characters within that string is then split throughout the threads to add the values of each number up to the one provided and store it within the sum.

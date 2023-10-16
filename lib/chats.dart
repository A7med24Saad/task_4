import 'package:flutter/material.dart';
import 'package:task_4/info.dart';

class chats extends StatelessWidget {
  chats({super.key});
  List<info> infor = [
    info(
        img: 'images/Me.jpg',
        name: 'ahmed',
        message: 'hello, dear how are you?',
        time: '10.00'),
    info(
        img: 'images/Me.jpg',
        name: 'sayed',
        message: 'hello, dear how are you?',
        time: '11.00'),
    info(
        img: 'images/Me.jpg',
        name: 'mahmoud',
        message: 'hello, dear how are you?',
        time: '12.00'),
    info(
        img: 'images/Me.jpg',
        name: 'mohamed',
        message: 'hello, dear how are you?',
        time: '8.00'),
    info(
        img: 'images/Me.jpg',
        name: 'saad',
        message: 'hello, dear how are you?',
        time: '9.00'),
    info(
        img: 'images/Me.jpg',
        name: 'ali',
        message: 'hello, dear how are you?',
        time: '1.00'),
    info(
        img: 'images/Me.jpg',
        name: 'saad',
        message: 'hello, dear how are you?',
        time: '9.00'),
    info(
        img: 'images/Me.jpg',
        name: 'ali',
        message: 'hello, dear how are you?',
        time: '1.00'),
    info(
        img: 'images/Me.jpg',
        name: 'mahmoud',
        message: 'hello, dear how are you?',
        time: '12.00'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        actions: const [Icon(Icons.settings)],
        title: const Text('Chats'),
      ),
      body: Column(
        children: [
          const Text(
            '    Favourite contacts ',
            style: TextStyle(color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 70,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('images/Me.jpg'),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 5,
                );
              },
              itemCount: 15,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Stack(children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                ),
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(infor[index].img),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            children: [
                              Text(
                                infor[index].name,
                                style: const TextStyle(fontSize: 18),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(infor[index].message),
                            ],
                          ),
                          const SizedBox(
                            width: 80,
                          ),
                          Text(infor[index].time)
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: infor.length),
              ),
              const Positioned(
                bottom: 30,
                right: 20,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.purple,
                  child: Icon(
                    Icons.add,
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}

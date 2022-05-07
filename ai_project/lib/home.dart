
import 'dart:collection';

import 'package:ai_project/Node.dart';
import 'package:ai_project/const.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePag extends StatefulWidget {
  const HomePag({ Key? key }) : super(key: key);

  @override
  State<HomePag> createState() => _HomePagState();
}

class _HomePagState extends State<HomePag> {
  
   bfs(Map GoalState)async{

    Queue<Node>?bfs_Queue=new Queue();
    Node initailState=Node();
    bfs_Queue.addFirst(initailState);
    
     while(bfs_Queue.isNotEmpty){   
       Node currentNode=bfs_Queue.first;
       bfs_Queue.removeFirst();
       if(mapEquals(currentNode.state, GoalState)) {
         print('done');
         print(currentNode.pathcost);
          break;
       }
       else  {
         bfs_Queue.addFirst (Node.C(currentNode,await st(currentNode.state)));
         //add children
       }
     }
     
  }

 st(map)async{
if(map['stcY']=='A'&&fBy==true){
  selectY=true;
 await Future.delayed(
    Duration(milliseconds:500 ),() {
      setState(() {
         moveAB();
      });
      
    },
  );
  //=====
 /* fAb=true;
  fBb=true;
  fCb=true;*/
  return  map=stat;
  
}

else if(stat['stcY']=='B'&&fCy==true){
  selectY=true;
 await Future.delayed(
    Duration(
      milliseconds: 500
    ),
    (){ 
      setState(() {
        moveC();
      });
      }
  );
 
 
  //=====
 // fAb=true;
  //fBb=true;
  //fCb=true;
  return map=stat;
}

else if(stat['stcY']=='C'&&fBy==true){
  selectY=true;
 await Future.delayed(
    Duration(
      milliseconds: 500
    ),
    (){ 
      setState(() {
        moveCB();
      });
      }
  );
 /* 
  fAb=true;
  fBb=true;
  fCb=true;*/
  return map=stat;
}
else if(stat['stcY']=='B'&&fAy==true){
  selectY=true;
  await Future.delayed(
    Duration(milliseconds:500 ),() {
      setState(() {
         moveA();
      });
      
    },
  );
 
  //=====
  /*fAb=true;
  fBb=true;
  fCb=true;*/
  return map=stat;
  }
else if(stat['stcB']=='A'&&fBb==true){
  selectB=true;
  await Future.delayed(Duration(milliseconds: 500),() {
    setState(() {
      moveAB();
    });
  },);
 
  return map=stat;
}

else if(stat['stcB']=='B'&&fCb==true){
  selectB=true;
  await Future.delayed(Duration(milliseconds: 500),() {
    setState(() {
      moveC();
    });
  },);

  return map=stat;
}
else if(stat['stcB']=='C'&&fBb==true){
  selectB=true;
  await Future.delayed(Duration(milliseconds: 500),() {
    setState(() {
      moveCB();
    });
  },);
 
  return map=stat;
}
else if(stat['stcB']=='B'&&fAb==true){
  selectB=true;
  await Future.delayed(Duration(milliseconds: 500),() {
    setState(() {
      moveA();
    });
  },);

  return map=stat;
}
else if(stat['stcR']=='A'&&fBr==true){
  selectR=true;
 await Future.delayed(
    Duration(
      milliseconds: 500
    ),
    (){ 
      setState(() {
        moveAB();
      });
      }
  );
 

  //=====
  /*fAy=true;
  fBy=true;
  fCy=true;*/
  return map=stat;
}
else if(stat['stcR']=='B'&&fCr==true){
  selectR=true;
 await Future.delayed(
    Duration(
      milliseconds: 500
    ),
    (){ 
      setState(() {
        moveC();
      });
      }
  );
 
 
  //=====
 /* fAy=true;
  fBy=true;
  fCy=true;*/
  return map=stat;
}
else if(stat['stcR']=='C'&&fBr==true){
  selectR=true;
 await Future.delayed(
    Duration(
      milliseconds: 500
    ),
    (){ 
      setState(() {
        moveCB();
      });
      }
  );
 
  
  //=====
 /* fAy=true;
  fBy=true;
  fCy=true;*/
  return map=stat;
}
else if(stat['stcR']=='B'&&fAr==true){
  selectR=true;
 await Future.delayed(
    Duration(
      milliseconds: 500
    ),
    (){ 
      setState(() {
        moveA();
      });
      }
  );
 

  //=====
 /* fAy=true;
  fBy=true;
  fCy=true;*/
  return map=stat;
}


}
 
  @override
  Widget build(BuildContext context) {
   
    
     return Scaffold(
          body: Stack(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Positioned(
                top: 8.h,
                right: 1.w,
                child: InkWell(
                  onTap: (){
                      bfs( 
                      g
                      );
                  },
                  child: Container(
                    height: 5.h,
                    width: 8.w,
                    color: Colors.grey,
                    child: Center(child: Text('BFS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 14.h,
                right: 1.w,
                child: InkWell(
                  onTap: (){
                    setState(() {
                      Realod();
                    });
                    
                  },
                  child: Container(
                    height: 5.h,
                    width: 8.w,
                    color: Colors.grey,
                    child: Icon(Icons.replay_outlined)
                  ),
                ),
              ),
            Positioned(
              top: 35.h,
              left: 5.w,
              child: Column(
          children: [
            //---------------A--------------------//
            Container(
              height: 30.h,
              width: 80.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        moveA();
                      });
                    },
                    child: Container(
                      height: 30.h,
                      width: 4.w,
                      color: Colors.yellow[300],
                    ),
                  ),
                  //-------------B----------------//
                  InkWell(
                    onTap: () {
                     setState((){
                       moveAB();
                       });
                    },
                    child: Container(
                      height: 30.h,
                      width: 4.w,
                      color: Colors.yellow[300],
                    ),
                  ),
                  //-------------------C--------------//
                  InkWell(
                    onTap: () {
                      setState(() {
                        moveC();
                      });
                    },
                    child: Container(
                      height: 30.h,
                      width: 4.w,
                      color: Colors.yellow[300],
                    ),
                  ),
                ],
              ),
            ),
            //-------------------------------------//
            Container(
              color: Colors.yellow[500],
              height: 3.h,
              width: 90.w,
            ),
            //-----------------------------------//
            Container(
              color: Colors.amber,
              height: 8.h,
              width: 90.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:const [
                  //------------------------//
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('A',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                  //---------------------//
                     Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('B',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                  //----------------------------//
                     Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('C',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                  //--------------------------//
                ],
              ),
            ),
          
          ],
        )),
          //------------------------------------//
               AnimatedContainer(
                 
                alignment: Alignment(dircRx,dircRy),
                 duration: Duration(milliseconds: 500),
               //  color: Colors.red,
                 child:InkWell(
                   
                   onTap: () {
                     setState(() {
                       selectR=true;
                     selectB=false;
                     selectY=false;
                     R=Colors.red.shade300;
                     B=Colors.blue;
                     Y=Colors.yellow;
                     print(selectR);
                     });
                     
                   },
                   child: Container(
                     height: 3.h,
                     width: 25.w,
                       color: R,   
                   ),
                 ) ,
              ),
              //==========================//
                AnimatedContainer(
                alignment: Alignment(dircBx,dircBy),
                 duration: Duration(milliseconds: 500),
               //  color: Colors.red,
                 child:InkWell(
                   onTap: () {
                     setState(() {
                       selectB=true;
                      B=Colors.blue.shade300;
                      R=Colors.red;
                      Y=Colors.yellow;
                     selectR=false;
                     selectY=false;
                     print(selectB);
                     });
                     
                   },
                   child: Container(
                     height: 3.h,
                     width: 20.w,
                     color: B,
                   ),
                 ) ,
              ),
              //=============================//
              AnimatedSwitcher(
                duration: Duration(milliseconds: 500),

                child: AnimatedContainer (
                
                  alignment: Alignment(dircYx,dircYy),
                   duration:Duration(milliseconds: 500),
                 //  color: Colors.red,
                   child:InkWell(
                     onTap: () {
                       setState(() {
                         selectY=true;
                         Y=Colors.yellow.shade300;
                         R=Colors.red;
                         B=Colors.blue;
                       selectB=false;
                       selectR=false;
                       print(selectY);
                       });
                       
                     },
                     child: Container(
                       height: 3.h,
                       width: 15.w,
                       color: Y,
                     ),
                   ) ,
                ),
              ),
            ],
          ),
        );
  }
}



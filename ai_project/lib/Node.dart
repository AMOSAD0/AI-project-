
class Node{

  Map ?state;
 int depth=0;
 int pathcost=0;
 Node ?parent;
//root
 Node(){
   state={
     'stcR':'A',
     'stcB':'A',
     'stcY':'A',
   };
   depth=0;
   pathcost=0;
   parent=null;
 }
 //children
 Node.C(Node parent,st){
    this.state=st;
    this.parent=parent;
    this.depth=parent.depth+1;
    this.pathcost=parent.pathcost+1;

 }
 addChildren(Node ?Parent,st){
  return Node.C(Parent!,st);
 }

}





 
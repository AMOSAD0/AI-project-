 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String stcR='A';
  String stcB='A';
  String stcY='A';
  Color R =Colors.red;
  Color B =Colors.blue;
  Color Y =Colors.yellow;
   bool selectR=false;
   bool selectB=false;
   bool selectY=false;
    double dircRx =-1;
    double dircRy=0.28;
    double dircBx =-0.95;
    double dircBy=0.22;
    double dircYx =-0.9;
    double dircYy=0.16;
    //===========================================
    moveB(){
    if(selectY==true){
      if(stcB=='B'&& stcR=='B'){
      dircYy=0.16;
      dircYx=0;
      stcY='B';
      selectY=false;
      Y=Colors.yellow;
      }
      else if(stcB=='B'|| stcR=='B'){
        dircYy=0.22;
        dircYx=0;
        stcY='B';
      selectY=false;
      Y=Colors.yellow;
      }
      else{
      dircYy=0.28;
      dircYx=0;
      stcY='B';
      selectY=false;
      Y=Colors.yellow;
      }
     // dircYx=0;
      //selectY=false;
    }
    else if(selectB==true){
      if(stcY!='B'&&stcR=='B'&&stcY!=stcB){
        dircBx=0;
        dircBy=0.22;
        stcB='B';
      selectB=false;
      B=Colors.blue;
      }
      else if(stcY!='B'&&stcY!=stcB){
         dircBx=0;
        dircBy=0.28;
        stcB='B';
      selectB=false;
       B=Colors.blue;
      }
      
    }
    else if(selectR==true){
      if((stcY!=stcR&&stcB!=stcR)&&stcY!='B'&&stcB!='B'){
        dircRx=0;
        stcR='B';
      selectR=false;
      R=Colors.red;
      }
      
    }
    
  }
  //------------CCCCC//
  moveC(){
    if(selectY==true){
      if(stcB=='C'&& stcR=='C' && stcY=='B'){
      dircYy=0.16;
      dircYx=0.9;
      stcY='C';
      selectY=false;
      Y=Colors.yellow;
      }
      else if(stcB=='C'|| stcR=='C'&& stcY=='B'){
        dircYy=0.22;
        dircYx=0.9;
        stcY='C';
      selectY=false;
       Y=Colors.yellow;
      }
      else if(stcY=='B'){
      dircYy=0.28;
      dircYx=0.9;
      stcY='C';
      selectY=false;
       Y=Colors.yellow;
      }
    }
    else if(selectB==true){
      if(stcY!='C'&&stcR=='C'&&stcY!=stcB&& stcB=='B'){
        dircBx=0.95;
        dircBy=0.22;
        stcB='C';
      selectB=false;
      B=Colors.blue;
      }
      else if(stcY!='C'&&stcY!=stcB&& stcB=='B'){
         dircBx=0.95;
        dircBy=0.28;
        stcB='C';
      selectB=false;
      B=Colors.blue;
      }
      
    }
    else if(selectR==true){
      if(stcY!=stcR&&stcB!=stcR&&stcY!='C'&&stcB!='C'&& stcR=='B'){
        dircRx=1;
        stcR='C';
      selectR=false;
      R=Colors.red;
      }
      
    }
    
  }
  //=====================AAAAAA============//
   moveA(){
    if(selectY==true){
      if(stcB=='A'&& stcR=='A' && stcY=='B'){
      dircYy=0.16;
      dircYx=-0.9;
      stcY='A';
      selectY=false;
      Y=Colors.yellow;
      }
      else if(stcB=='A'|| stcR=='A'&& stcY=='B'){
        dircYy=0.22;
        dircYx=-0.9;
        stcY='A';
      selectY=false;
      Y=Colors.yellow;
      }
      else if(stcY=='B'){
      dircYy=0.28;
      dircYx=-0.9;
      stcY='A';
      selectY=false;
      Y=Colors.yellow;
      }
    }
    else if(selectB==true){
      if(stcY!='A'&&stcR=='A'&&stcY!=stcB&& stcB=='B'){
        dircBx=-0.95;
        dircBy=0.22;
        stcB='A';
      selectB=false;
      B=Colors.blue;
      }
      else if(stcY!='A'&&stcY!=stcB&& stcB=='B'){
         dircBx=-0.95;
        dircBy=0.28;
        stcB='A';
      selectB=false;
      B=Colors.blue;
      }
      
    }
    else if(selectR==true){
      if(stcY!=stcR&&stcB!=stcR&&stcY!='A'&&stcB!='A'&& stcR=='B'){
        dircRx=-1;
        stcR='A';
      selectR=false;
      R=Colors.red;
      }
      
    }
    
  }
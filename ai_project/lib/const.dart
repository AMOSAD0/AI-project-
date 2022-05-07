
import 'package:flutter/material.dart';

 // String stcR='A';
 // String stcB='A';
  //String stcY='A';
  bool fAy=true;
  bool fBy=true;
  bool fCy=true;
  bool fAb=true;
  bool fBb=true;
  bool fCb=true;
  bool fAr=true;
  bool fBr=true;
  bool fCr=true;
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
     Map  stat={
      'stcR':'A',
       'stcB':'A',
       'stcY':'A',
    };
     Map g ={
       'stcR':'C',
       'stcB':'C',
       'stcY':'C',
};
Realod(){
   fAy=true;
   fBy=true;
   fCy=true;
   fAb=true;
   fBb=true;
   fCb=true;
   fAr=true;
   fBr=true;
   fCr=true;
   R =Colors.red;
   B =Colors.blue;
   Y =Colors.yellow;
    selectR=false;
    selectB=false;
    selectY=false;
   dircRx =-1;
     dircRy=0.28;
   dircBx =-0.95;
     dircBy=0.22;
     dircYx =-0.9;
     dircYy=0.16;
      stat={
      'stcR':'A',
       'stcB':'A',
       'stcY':'A',
    };
}
    //===========================================
     moveCB(){
    if(selectY==true){
      if( stat['stcB']=='B'&& stat['stcR']=='B'){
      dircYy=0.16;
      dircYx=0;
       stat['stcY']='B';
      selectY=false;
      Y=Colors.yellow;
       fAy=true;
  fBy=false;
  fCy=false;
    
  fAr=true;
  fBr=true;
  fCr=true;
      }
      else if( stat['stcB']=='B'||  stat['stcR']=='B'){
        dircYy=0.22;
        dircYx=0;
        stat['stcY']='B';
      selectY=false;
      Y=Colors.yellow;
       fAy=true;
  fBy=false;
  fCy=false;
    
  fAr=true;
  fBr=true;
  fCr=true;
      }
      else{
     
      dircYy=0.28;
      dircYx=0;
      stat['stcY']='B';
      selectY=false;
      Y=Colors.yellow;
       fAy=true;
  fBy=false;
  fCy=false;
    
  fAr=true;
  fBr=true;
  fCr=true;
     
      }
      
  
       
 
     // dircYx=0;
      //selectY=false;
    }
    else if(selectB==true){
      if(stat['stcY']!='B'&& stat['stcR']=='B'&&stat['stcY']!= stat['stcB']){
        dircBx=0;
        dircBy=0.22;
         stat['stcB']='B';
      selectB=false;
      B=Colors.blue;
            fAb=true;
  fBb=false;
  fCb=false;
     //=====
  fAy=true;
  fBy=true;
  fCy=true;
      }
      else if(stat['stcY']!='B'&&stat['stcY']!= stat['stcB']){
         dircBx=0;
        dircBy=0.28;
         stat['stcB']='B';
      selectB=false;
       B=Colors.blue;
             fAb=true;
  fBb=false;
  fCb=false;
     //=====
  fAy=true;
  fBy=true;
  fCy=true;
      }
 
    }
    else if(selectR==true){
      if((stat['stcY']!= stat['stcR']&& stat['stcB']!= stat['stcR'])&&stat['stcY']!='B'&& stat['stcB']!='B'){
        dircRx=0;
         stat['stcR']='B';
      selectR=false;
      R=Colors.red;
      fAr=true;
  fBr=false;
  fCr=false;
    //=====
  fAb=true;
  fBb=true;
  fCb=true;
   fAy=true;
  fBy=true;
  fCy=true;
      }
      
    }
     
  }
    //===============================
       moveAB(){
    if(selectY==true){
      if( stat['stcB']=='B'&& stat['stcR']=='B'){
      dircYy=0.16;
      dircYx=0;
       stat['stcY']='B';
      selectY=false;
      Y=Colors.yellow;
       fAy=false;
  fBy=false;
  fCy=true;
      //=====
  fAr=true;
  fBr=true;
  fCr=true;
      }
      else if( stat['stcB']=='B'||  stat['stcR']=='B'){
        dircYy=0.22;
        dircYx=0;
        stat['stcY']='B';
      selectY=false;
      Y=Colors.yellow;
       fAy=false;
  fBy=false;
  fCy=true;
      //=====
  fAr=true;
  fBr=true;
  fCr=true;
      }
      else{
     
      dircYy=0.28;
      dircYx=0;
      stat['stcY']='B';
      selectY=false;
      Y=Colors.yellow;
       fAy=false;
  fBy=false;
  fCy=true;
      //=====
  fAr=true;
  fBr=true;
  fCr=true;
     
      }
      /*
      fAy=true;
  fBy=false;
  fCy=false;
    
  fAr=true;
  fBr=true;
  fCr=true;
       */
 
     // dircYx=0;
      //selectY=false;
    }
    else if(selectB==true){
      if(stat['stcY']!='B'&& stat['stcR']=='B'&&stat['stcY']!= stat['stcB']){
        dircBx=0;
        dircBy=0.22;
         stat['stcB']='B';
      selectB=false;
      B=Colors.blue;
        fAb=false;
  fBb=false;
  fCb=true;
     //=====
  fAy=true;
  fBy=true;
  fCy=true;
      }
      else if(stat['stcY']!='B'&&stat['stcY']!= stat['stcB']){
         dircBx=0;
        dircBy=0.28;
         stat['stcB']='B';
      selectB=false;
       B=Colors.blue;
   fAb=false;
  fBb=false;
  fCb=true;
     //=====
  fAy=true;
  fBy=true;
  fCy=true;
      }

    }
    else if(selectR==true){
      if((stat['stcY']!= stat['stcR']&& stat['stcB']!= stat['stcR'])&&stat['stcY']!='B'&& stat['stcB']!='B'){
        dircRx=0;
         stat['stcR']='B';
      selectR=false;
      R=Colors.red;
   fAr=false;
  fBr=false;
  fCr=true;
    //=====
  fAb=true;
  fBb=true;
  fCb=true;
   fAy=true;
  fBy=true;
  fCy=true;
      }
      
    }
     
  }
  //------------CCCCC//
  moveC(){
    if(selectY==true){
      if( stat['stcB']=='C'&&  stat['stcR']=='C' && stat['stcY']=='B'){
      dircYy=0.16;
      dircYx=0.9;
      stat['stcY']='C';
      selectY=false;
      Y=Colors.yellow;
           fAy=true;
  fBy=false;
  fCy=false;
      //=====
 fAr=true;
  fBr=true;
  fCr=true;
      }
      else if( stat['stcB']=='C'||  stat['stcR']=='C'&& stat['stcY']=='B'){
        dircYy=0.22;
        dircYx=0.9;
        stat['stcY']='C';
      selectY=false;
       Y=Colors.yellow;
            fAy=true;
  fBy=false;
  fCy=false;
      //=====
 fAr=true;
  fBr=true;
  fCr=true;
      }
      else if(stat['stcY']=='B'){
      dircYy=0.28;
      dircYx=0.9;
      stat['stcY']='C';
      selectY=false;
       Y=Colors.yellow;
            fAy=true;
  fBy=false;
  fCy=false;
      //=====
 fAr=true;
  fBr=true;
  fCr=true;
      }
  
    }
    else if(selectB==true){
      if(stat['stcY']!='C'&& stat['stcR']=='C'&&stat['stcY']!= stat['stcB']&&  stat['stcB']=='B'){
        dircBx=0.95;
        dircBy=0.22;
         stat['stcB']='C';
      selectB=false;
      B=Colors.blue;
        fAb=true;
  fBb=false;
  fCb=false;
     //=====
  fAy=true;
  fBy=true;
  fCy=true;
      }
      else if(stat['stcY']!='C'&&stat['stcY']!= stat['stcB']&&  stat['stcB']=='B'){
         dircBx=0.95;
        dircBy=0.28;
         stat['stcB']='C';
      selectB=false;
      B=Colors.blue;
        fAb=true;
  fBb=false;
  fCb=false;
     //=====
  fAy=true;
  fBy=true;
  fCy=true;
      }
      
      
    }
    else if(selectR==true){
      if(stat['stcY']!= stat['stcR']&& stat['stcB']!= stat['stcR']&&stat['stcY']!='C'&& stat['stcB']!='C'&&  stat['stcR']=='B'){
        dircRx=1;
         stat['stcR']='C';
      selectR=false;
      R=Colors.red;
    fAr=true;
  fBr=false;
  fCr=false;
    //=====
  fAb=true;
  fBb=true;
  fCb=true;
   fAy=true;
  fBy=true;
  fCy=true;
      }
      
    }
    
  }
  //=====================AAAAAA============//
   moveA(){
    if(selectY==true){
      if( stat['stcB']=='A'&& stat['stcR']=='A'&& stat['stcY']=='B'){
      dircYy=0.16;
      dircYx=-0.9;
      stat['stcY']='A';
      selectY=false;
      Y=Colors.yellow;
         fAy=false;
  fBy=false;
  fCy=true;
      //=====
  fAr=true;
  fBr=true;
  fCr=true;
      }
      else if( (stat['stcB']=='A'||  stat['stcR']=='A')&& stat['stcY']=='B'){
        dircYy=0.22;
        dircYx=-0.9;
        stat['stcY']='A';
      selectY=false;
      Y=Colors.yellow;
         fAy=false;
  fBy=false;
  fCy=true;
      //=====
  fAr=true;
  fBr=true;
  fCr=true;
      }
      else if(stat['stcY']=='B'){
      dircYy=0.28;
      dircYx=-0.9;
      stat['stcY']='A';
      selectY=false;
      Y=Colors.yellow;
         fAy=false;
  fBy=false;
  fCy=true;
      //=====
  fAr=true;
  fBr=true;
  fCr=true;
      }
    
    }
    else if(selectB==true){
      if(stat['stcY']!='A'&& stat['stcR']=='A'&&stat['stcY']!= stat['stcB']&&  stat['stcB']=='B'){
        dircBx=-0.95;
        dircBy=0.22;
         stat['stcB']='A';
      selectB=false;
      B=Colors.blue;
      fBb=false;
  fCb=true;
  fAb=false;
    //=====
  fAy=true;
  fBy=true;
  fCy=true;
      }
      else if(stat['stcY']!='A'&&stat['stcY']!= stat['stcB']&&  stat['stcB']=='B'){
         dircBx=-0.95;
        dircBy=0.28;
         stat['stcB']='A';
      selectB=false;
      B=Colors.blue;
   fBb=false;
  fCb=true;
  fAb=false;
    //=====
  fAy=true;
  fBy=true;
  fCy=true;
      }
        
  
    }
    else if(selectR==true){
      if(stat['stcY']!= stat['stcR']&& stat['stcB']!= stat['stcR']&&stat['stcY']!='A'&& stat['stcB']!='A'&&  stat['stcR']=='B'){
        dircRx=-1;
         stat['stcR']='A';
      selectR=false;
      R=Colors.red;
        fAr=false;
  fBr=false;
  fCr=true;
  //=====
  fAb=true;
  fBb=true;
  fCb=true;
   fAy=true;
  fBy=true;
  fCy=true;
      }
      
    }
    
  }
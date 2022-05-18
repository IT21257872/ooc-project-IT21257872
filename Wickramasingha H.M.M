//Guestlecturer Header File-1
class Guestlecturer

{

protected:
    char User_Name[200];
    char Password[100];
    char T_Name[200];
    char T_Email[200];
    int T_contactno;
    char T_NIC[10];
    char Subject[100];

public:
    Guestlecturer();

    Guestlecturer(const char u_Name[], const char Pass[], const char tName[], const char tEmail[], int tcontact, const char tNIC[], const char subj[]);


    void displayGuestlecturer();
   

    ~Guestlecturer();


};

//Registered Lecturer Header File-2
#include"Guestlecturer.h"

class RegisteredLecturer : public Guestlecturer

{
private:

    char LID[10];
    char CID[10];

public:
    RegisteredLecturer();
 
    RegisteredLecturer(const char L_ID[], const char C_ID[], const char u_Name[], const char Pass[], const char tName[], const char tEmail[], int tcontact, const char tNIC[], const char subj[]);
   

    void displayRegisteredLecturer();
    

    ~RegisteredLecturer();

};



//Guest Lecturer CPP File-1
#include"Guestlecturer.h"
    #include<cstring>

     Guestlecturer::Guestlecturer() 
     {
       
     }

     Guestlecturer::Guestlecturer(const char u_Name[], const char Pass[], const char tName[], const char tEmail[], int tcontact, const char tNIC[], const char subj[])
    {
        strcpy(User_Name , u_Name);
        strcpy(Password , Pass);
        strcpy(T_Name , tName);
        strcpy(T_Email , tEmail);
        T_contactno = tcontact;
        strcpy(T_NIC , tNIC);
        strcpy(Subject , subj);
          

    }

    void  Guestlecturer::displayGuestlecturer()
    {



    }

     Guestlecturer::~Guestlecturer() 
    {
      
    }
    
  
  //Registered Lecturer CPP File-2
  #include"RegisteredLecturer.h"
  #include<cstring>

    RegisteredLecturer::RegisteredLecturer() 
    {
      
    }

RegisteredLecturer::RegisteredLecturer(const char L_ID[], const char C_ID[], const char u_Name[], const char Pass[], const char tName[], const char tEmail[], int tcontact, const char tNIC[], const char subj[]): Guestlecturer(u_Name, Pass, tName, tEmail, tcontact, tNIC, subj)
    {

       strcpy( LID , L_ID);
       strcpy(CID , C_ID) ;

    }


    void RegisteredLecturer::displayRegisteredLecturer()
    {

    }

    RegisteredLecturer::~RegisteredLecturer() 
    {
      
    }


//Chalinda R.L
//Guest Trainee Header File-1
class Guesttrainee

{

protected:
    char User_Name[200];
    char Password[100];
    char T_Name[200];
    char T_Email[200];
    int T_contactno;
    char T_NIC[10];

public:
    Guesttrainee();

    Guesttrainee(const char u_Name[], const char Pass[], const char tName[], const char tEmail[], int tcontact, const char tNIC[]);
    
    void displayGuesttrainee();
    
    ~Guesttrainee();


};

//Registered Trainee Header File-2
#include"Guesttrainee.h"
#include"Resource.h"
#include"Feedback.h"
#include"Course.h"
#include"Payment.h"

class RegisteredTrainee : public Guesttrainee

{
private:

    Payment* pay;
    Resource* rs[5];
    Feedback* f[5];
    Course* c[5];
    char TID[10];

public:
    RegisteredTrainee();

    RegisteredTrainee(int rNo, float cfee, const char pDate[], const char pType[]);
   
    void displayDisplayPayment();
    

    void addResource(Resource* RS1, Resource* RS2, Resource* RS3, Resource* RS4, Resource* RS5);
    

    void DisplayResourceDetails();
    
    void addCourse(Course* C1, Course* C2, Course* C3, Course* C4, Course* C5);
    

    void DisplayCourseDetails();
    
    void addFeedback(Feedback* F1, Feedback* F2, Feedback* F3, Feedback* F4, Feedback* F5);
    

    void  DispalyFeedbackDetails();
    


    RegisteredTrainee(const char T_ID[], const char u_Name[], const char Pass[], const char tName[], const char tEmail[], int tcontact, const char tNIC[]);
        
    void displayRegisteredTrainee();
    

    ~RegisteredTrainee();

};

//Guest Trainee CPP-1
 #include"Guesttrainee.h"
 #include<cstring>

    Guesttrainee::Guesttrainee() 
    {
      
    }

    Guesttrainee::Guesttrainee(const char u_Name[], const char Pass[], const char tName[], const char tEmail[], int tcontact, const char tNIC[])
    {
        strcpy(User_Name , u_Name);
        strcpy(Password , Pass);
        strcpy(T_Name , tName);
        strcpy(T_Email , tEmail);
        T_contactno = tcontact;
        strcpy(T_NIC , tNIC);

    }

    void Guesttrainee::displayGuesttrainee()
    {



    }

    Guesttrainee::~Guesttrainee() 
    {
      
    }

//Registered Trainee CPP-2
  #include"RegisteredTrainee.h"
  #include<cstring>


   RegisteredTrainee::RegisteredTrainee() 
   {
     
   }

    RegisteredTrainee::RegisteredTrainee(int rNo, float cfee, const char pDate[], const char pType[])
    {

        pay = new Payment(rNo, pDate, pType,cfee);


    }

    void RegisteredTrainee::displayDisplayPayment()
    {

        pay->displayReceipt();

    }

    void RegisteredTrainee::addResource(Resource* RS1, Resource* RS2, Resource* RS3, Resource* RS4, Resource* RS5)
    {
        rs[0] = RS1;
        rs[1] = RS2;
        rs[2] = RS3;
        rs[3] = RS4;
        rs[4] = RS5;

    }

    void RegisteredTrainee::DisplayResourceDetails()
    {
        for (int j = 0; j < 5; j++)
        {
            rs[j]->DisplayResourceDetails();
        }

    }

    void RegisteredTrainee::addCourse(Course* C1, Course* C2, Course* C3, Course* C4, Course* C5)
    {
        c[0] = C1;
        c[1] = C2;
        c[2] = C3;
        c[3] = C4;
        c[4] = C5;

    }

    void RegisteredTrainee::DisplayCourseDetails()
    {
        for (int j = 0; j < 5; j++)
        {
            c[j]->DisplayCourseDetails();
        }

    }

    void RegisteredTrainee::addFeedback(Feedback* F1, Feedback* F2, Feedback* F3, Feedback* F4, Feedback* F5)
    {
        f[0] = F1;
        f[1] = F2;
        f[2] = F3;
        f[3] = F4;
        f[4] = F5;

    }

    void  RegisteredTrainee::DispalyFeedbackDetails()
    {
        for (int j = 0; j < 5; j++)
        {
            f[j]->DispalyFeedbackDetails();
        }

    }


    RegisteredTrainee::RegisteredTrainee(const char T_ID[], const char u_Name[], const char Pass[], const char tName[], const char tEmail[], int tcontact, const char tNIC[])
        :Guesttrainee(u_Name, Pass, tName, tEmail, tcontact, tNIC)
    {

        strcpy(TID , T_ID);

    }

    void RegisteredTrainee::displayRegisteredTrainee()
    {

    }

    RegisteredTrainee::~RegisteredTrainee()
    {
   
    }












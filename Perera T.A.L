//Perera T.A.L_it21262722

//feedback header
class Feedback
{
private:
    char Feedback_Id[10];
    char TID[10];
    char Feedback_com[500];

public:
    Feedback();
    Feedback(const char fid[], const char  tid[], const char  feed[]);
    void DispalyFeedbackDetails();
    ~Feedback() ;
};


//feedback cpp 

    #include"Feedback.h"
    #include<cstring>


    Feedback::Feedback() 
   {
     
   }

    Feedback::Feedback( const char fid[], const char tid[], const char feed[])
    {

        strcpy(Feedback_Id , fid);
        strcpy(TID,tid);
        strcpy(Feedback_com , feed);


    }

    void Feedback::DispalyFeedbackDetails()
    {



    }

    Feedback::~Feedback() 
   {
     
   }
   
   
   
   //main cpp
   
#include"Guestlecturer.h"
#include"Payment.h"
#include"Paypal.h"
#include"RegisteredLecturer.h"
#include"RegisteredTrainee.h"
#include"Resource.h"
#include"Card.h"
#include"Course.h"
#include"Resource.h"
#include"Feedback.h"
#include"Guesttrainee.h"



#include <iostream>
using namespace std;

int main() 
{
Card*cr1;
cr1 = new Card();
cr1 -> Calcpayment();

Course*co1;
co1 = new Course();
co1 -> DisplayCourseDetails();

Feedback*f1;
f1 = new Feedback();
f1 ->DispalyFeedbackDetails();

Guestlecturer*gl1;
gl1 = new Guestlecturer();
gl1 -> displayGuestlecturer();

Guesttrainee*gt1;
gt1 = new  Guesttrainee();
gt1 -> displayGuesttrainee();

Payment*p1;
p1 = new Payment();
p1 ->displayReceipt();
p1 -> calcTotal();

Paypal*pay1;
pay1 = new Paypal();
pay1 -> Calcpayment();

RegisteredLecturer*rl1;
rl1 = new RegisteredLecturer();
rl1 -> displayRegisteredLecturer();

RegisteredTrainee*rt1;
rt1 = new RegisteredTrainee ();
rt1 -> displayRegisteredTrainee();



Resource*re1;
re1 = new Resource();
re1 -> DisplayResourceDetails();


delete cr1;
delete co1;
delete f1;
delete gl1;
delete gt1;
delete rt1;
delete pay1;
delete rl1;
delete re1;
delete p1;
  
return 0 ;
 
}





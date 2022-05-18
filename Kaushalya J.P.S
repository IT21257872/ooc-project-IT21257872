//Payment Header File - 01

class Payment
{
protected:
    int receiptNo;
    char payDate[50];
    char type[50];
    float C_Fee;
    float total_Amount;

public:
    Payment();
    Payment(int rNo, const char pDate[], const char pType[], float cfee);
    void displayReceipt();
    void calcTotal();
    ~Payment();
};

//Card Header File - 02

#include"Payment.h"

class Card : public Payment
{
private:
    int Card_No;
    char Holder_Name[100];
    int CVV_No;
    char EXP_Date[100];

public:

    Card();

    Card(int rNo,  const char pDate[], const char pType[],float cfee, int C_no, const char C_holder[], const char Exp_D[], int Cvv_no);
   
    float Calcpayment();

    ~Card();
    
};

Paypal Header File - 03

 #include"Payment.h"


class Paypal : public Payment
{
private:
    char Paypal_No[10];
    char Holder_Name[200];


public:
    
    Paypal();
    Paypal(int rNo, const char pDate[], const char pType[], float cfee,const char P_no[], const char P_holder[]);
    float Calcpayment();
   
};

//Payment cpp File - 01

    #include"Payment.h"
    #include<cstring>

    Payment::Payment() 
    { 
      
    }

    Payment::Payment(int rNo, const char pDate[], const char pType[],float cfee)
    {
        receiptNo = rNo;
        strcpy(payDate , pDate);
        strcpy(type , pType);
        C_Fee = cfee;

    }

    void Payment::displayReceipt()
    {


    }

    void Payment::calcTotal()
    {


    }

    Payment::~Payment() 
    {
    
    }
    
//Card cpp File - 02
    
    #include"Card.h"
    #include<cstring>


    Card::Card() 
    {
    
    }

    Card::Card(int rNo,  const char pDate[], const char pType[],float cfee, int C_no, const char C_holder[], const char Exp_D[], int Cvv_no) : Payment(rNo, pDate, pType, cfee)
    {
        Card_No = C_no;
        strcpy(Holder_Name , C_holder);
        CVV_No = Cvv_no;
        strcpy(EXP_Date , Exp_D);


    }

    float Card::Calcpayment()
    {
        return C_Fee;

    }

    Card::~Card() 
    {
    
    }
    
//Paypal cpp File - 03
    
    #include"Paypal.h"
    #include<cstring>
    
    Paypal::Paypal() 
    {
      
    }

    Paypal::Paypal(int rNo, const char pDate[], const char pType[], float cfee, const char P_no[], const char P_holder[]):Payment(rNo, pDate, pType,cfee)
    {
        strcpy(Paypal_No , P_no);
        strcpy(Holder_Name , P_holder);

    }

    float Paypal::Calcpayment()
    {
        return C_Fee;

    }
    Paypal::~Paypal() 
    {
    
    }




    


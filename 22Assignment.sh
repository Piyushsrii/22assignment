Welcome in Assignment22 in master

Problem statement----->(Check Employee is Present or Absent- Use ((RANDOM)) for Attendance Check)
public class Employee1
{
          public void checkEmployee()
          {
                  double empcheck=Math.floor(Math.random()*10)%2;
                  if(empcheck==1)
                  {
                  System.out.println("Employee is present");
                  }
                  else
                  {
                  System.out.println("Employee is not present");
                  }
          }
    public static void main(String[] args)
    {
        Employee1 emp=new Employee();
        emp.checkEmployee();
    }
}

###UserCase-2###
Problem Statement---->Calculate Daily Employee Wage
public class Employee2
{
        public static final int IS_FULL_TIME=1;
        public static final int EMP_RATE_PER_HOUR=20;

        int empWage=0;
        int empHRS=0;
        public void employee()
        {
        int empcheck=(int)Math.floor(Math.random()*10)%2;
        if(empcheck==IS_FULL_TIME)
        {
        empHRS=8;
        empWage= EMP_RATE_PER_HOUR*empHRS;
        System.out.println("employee wage="+empWage);
        }
        }
       public static void main(String args[])
       {
        Employee2 emp =new Employee2();
        emp.employee();
       }
}


###UserCase-3###
Problem Statement------>Add Part time Employee & Wage-Assume Part time Hour is 8
public class Employee
{
        public static final int IS_PART_TIME=1;
        public static final int IS_FULL_TIME=2;
        public static final int EMP_RATE_PER_HOUR=20;

        int empWage=0;
        int empHRS=0;
        public void employeeWork()
        {
        int empcheck=(int)Math.floor(Math.random()*10)%2;
        if(empcheck==IS_FULL_TIME)
        {
        empHRS=8;
        empWage= EMP_RATE_PER_HOUR*empHRS;
        System.out.println("employee wage="+empWage);
        }
        elseif(empcheck==IS_PART_TIME)
        {
          empHRS=4;
          empWage= EMP_RATE_PER_HOUR*empHRS;
          System.out.println("employee wage="+empWage);
        }
        else
        System.out.println("No value");
        }
        public static void main(String args[])
        {
        Employee emp=new Employee();
        emp.employeeWork();
        }

}

###UserCase-4###
Problem Statement------>Solving using Switch Case Statement

###UserCase-5###
Problem Statement------>(Calculating Wages for a Month - Assume 20 Working Day per Month)
public class EmployeeSwitch4
{
        public static final int IS_PART_TIME=1;
        public static final int IS_FULL_TIME=2;
        public static final int EMP_RATE_PER_HOUR=20;
        public static final int NUM_OF_WORKING_DAYS=20;
        int empHRS=0;
        int empWage=0;
        int totalEmpWage=0;
        int totalEmpHrs=0;
        public void employeeWage()
        {
        int totalworkingdays=0;
        while(totalworkingdays<NUM_OF_WORKING_DAYS)
        {
         totalworkingdays++;
         int empcheck=(int)Math.floor(Math.random()*10)%3;
         switch(empcheck)
        {
           case IS_FULL_TIME:
           empHRS=8;
           break;
           case IS_PART_TIME:
           empHRS=4;
           break;
           default:
           empHRS=0;
        }
         totalEmpHrs+=empHRS;
         System.out.println("totalworkingdays"+totalworkingdays+" "+"totalEmpHrs"+totalEmpHrs);
        }
         totalEmpWage=totalEmpHrs*EMP_RATE_PER_HOUR;
         System.out.println("total employee wage"+totalEmpWage);
        }

         public static void main(String args[])
         {
         EmployeeSwitch4 emp=new EmployeeSwitch4();
         emp.employeeWage();
         }
}

###UserCase-6###
Problem Statement---->(Calculate Wages till a condition of total working hours or days is reached for a month - Assume 100 hours and 2 days)
public class EmployeeSwitch5
{
        public static final int IS_PART_TIME=1;
        public static final int IS_FULL_TIME=2;
        public static final int EMP_RATE_PER_HOUR=20;
        public static final int Num_Of_Woking_Days=2;
        public static final int Max_Hrs_In_Months=15;
        public static void main(String args[])
        {
        int empHRS=0;
        int empWage=0;
        int totalEmpWage=0;
        int totalEmpHrs=0;
        int totalworkingdays=0;
        public void employeeWage()
        {
        while(totalEmpHrs<=Max_Hrs_In_Months && totalworkingdays<Num_Of_Woking_Days)
        {
         totalworkingdays++;
         int empcheck=(int)Math.floor(Math.random()*10)%3;
         switch(empcheck)
        {
           case IS_FULL_TIME:
           empHRS=8;
           break;
           case IS_PART_TIME:
           empHRS=4;
           break;
           default:
           empHRS=0;
        }
         totalEmpHrs+=empHRS;
         System.out.println("totalworkingdays"+totalworkingdays+" "+"totalEmpHrs"+totalEmpHrs);
        }
         totalEmpWage=totalEmpHrs*EMP_RATE_PER_HOUR;
         System.out.println("total employee wage"+totalEmpWage);
        }
         public static void main(String args[])
         {
         EmployeeSwitch5 emp=new EmployeeSwitch5();
         emp.employeeWage();
         }
}

###UserCase-7###
Problem Statement------>Refactor the Code to write a Class Method to Compute Employee Wage - Use Class Method and Class Variables
public class Employee
{
        public static final int IS_PART_TIME=1;
        public static final int IS_FULL_TIME=2;
        public static final int EMP_RATE_PER_HOUR=20;

        int empWage=0;
        int empHRS=0;
        public void employeeWork()
        {
        int empcheck=(int)Math.floor(Math.random()*10)%2;
        if(empcheck==IS_FULL_TIME)
        {
        empHRS=8;
        empWage= EMP_RATE_PER_HOUR*empHRS;
        System.out.println("employee wage="+empWage);
        }
        elseif(empcheck==IS_PART_TIME)
        {
          empHRS=4;
          empWage= EMP_RATE_PER_HOUR*empHRS;
          System.out.println("employee wage="+empWage);
        }
        else
        System.out.println("No value");
        }
        public static void main(String args[])
        {
        Employee emp=new Employee();
        emp.employeeWork();
        }

}

###UserCase-8###
Problem Statement----->Compute Employee Wage for multiple companies - Note: Each Company has its own wage, number of working days and working hours per month - Use Class Method with function
parameters instead of Class Variables.
public class EmpWageOOPs1
{
        public static final int IS_PART_TIME=1;
        public static final int IS_FULL_TIME=2;

        public final int EMP_RATE_PER_HOUR;
        public final int NUM_OF_WORKING_DAYS;
        public final int MAX_HRS_IN_MONTHS;
        public final String company;

        public EmpWageOOPs1(String company, int empRate, int numOfDays, int maxDays)
        {
                     this.company=company;
                     EMP_RATE_PER_HOUR=empRate;
                     NUM_OF_WORKING_DAYS=numOfDays;
                     MAX_HRS_IN_MONTHS=maxDays;
        }
        public void calculateWageForCompany()
        {
        int totalEmpHrs=0;
        int totalEmpWage=0;
        int totalWorkingDays=0;
        while(totalEmpHrs < MAX_HRS_IN_MONTHS && totalWorkingDays < NUM_OF_WORKING_DAYS)
        {
         totalWorkingDays++;
         int empHrs=0,empWage=0;
         int empcheck=(int) Math.floor(Math.random()*10)%3;
         switch(empcheck)
        {
           case IS_FULL_TIME:
           empHrs=8;
           break;
           case IS_PART_TIME:
           empHrs=4;
           break;
           default:
           empHrs=0;
        }
         totalEmpHrs+= empHrs;
         empWage=empHrs*EMP_RATE_PER_HOUR;
         totalEmpWage += empWage;
         System.out.println("Employee wage :"+company+" "+empWage);
        }
         System.out.println("total Employee wage : " + totalEmpWage);
        }

        public static void main(String args[])
        {
        EmpWageOOPs1 dmart=new EmpWageOOPs1("DMART",2,4,6);
        dmart.calculateWageForCompany();
        EmpWageOOPs1 reliance=new EmpWageOOPs1("Reliance",4,8,6);
        reliance.calculateWageForCompany();
        }
}


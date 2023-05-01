import java.util.*;

class Prog1
{
	public static void main(String args[])
	{
		double watt,hours,totupd;
		double kwatt,totbpd,finalbill;
		Scanner sc=new Scanner(System.in);
		System.out.println("Please enter following details:");
		System.out.println("Enter total Wattage of the device");
		watt=sc.nextDouble();

		System.out.println("Enter Hours/day You Are Using It");
		hours=sc.nextDouble();
		totupd=watt*hours;

		System.out.println("Total Usge Of Entered Divice/per Is="+totupd);
		kwatt=totupd/1000;
		System.out.println("Total Usge Of Entered Divice/per In kWattIs="+kwatt);
		totbpd=kwatt*0.70;

		totbpd=Math.round(totbpd * 1000.0) / 1000.0;
		System.out.println("Total Bill For One Day Usage As 0.70/Kwatt="+totbpd);
		finalbill=totbpd*30;
		System.out.println("");
		System.out.println("");
		
		System.out.println("----------------------------Final Bill---------------------------");
		System.out.println("Total Bill Per Month For This Device="+finalbill);

   }
}
package com.nexwave.training;

import java.util.Scanner;

public class Classroom_demo {

	public static void main(String args[]) {

		Scanner scr = new Scanner(System.in);

		System.out.println("Please Enter No. of Rooms");
		int rooms = scr.nextInt();
		
		Classroom[] objects = new Classroom[rooms];
		while(true) {
		System.out.println("Please Enter option 1 to Add new rooms" 
				+ "option 2 to Search new rooms"
				+ "option 3 to Display new rooms"
				+ "option 4 to Allocate new rooms"
				+ "option 5 to Allocate new rooms");
		String option=scr.next();
		switch(option)
		{
		case "1":
			
			for (int i = 0; i < objects.length; i++) {

				System.out.println("Please Enter Class ID");
				int classId = scr.nextInt();
				System.out.println("Please Enter Total No. of System");
				int no_of_system = scr.nextInt();
				System.out.println("Please Enter Class Name");
				String className = scr.next();

				System.out.println("Please Enter Projector Details");
				boolean projector = scr.nextBoolean();
				System.out.println("Please Enter AC Details");
				boolean ac = scr.nextBoolean();
				System.out.println("Please Enter Faculty Details");
				String faculty = scr.next();
				System.out.println("Please Enter Availability Details");
				boolean availability = scr.nextBoolean();

				Classroom room1 = new Classroom();
				room1.setClassId(classId);
				room1.setNo_of_system(no_of_system);
				room1.setClassName(className);
				room1.setProjector(projector);
				room1.setAc(ac);
				room1.setFaculty(faculty);
				room1.setAvailability(availability);
				objects[i] = room1;
			}
			break;

		case "2":
			
		case "3":
			for (int j = 0; j < objects.length; j++) {
				System.out.println(objects[j]);
			}
			break;
		case "4":
			break;
		case "5":
			System.exit(0);
			
		}
				

	}
}
}

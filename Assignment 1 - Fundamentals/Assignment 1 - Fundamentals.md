## Update this file with answers to the following questions. 

-   Chapter 1 (pg 28-29)
	- 1.1: Define the following terms: data, database, DBMS, database system, database catalog, program-data independence, user view, DBA, end user, canned transaction, deductive database system, persistent object, meta-data, and
transaction-processing application.
	  - Data: Known facts that can be recorded and have an implicit meaning.
	  - Database: A collection of related data.
	  - DBMS: A software package or system to facilitate the creation and maintenance of a computerized database.
	  - Database System: The DBMS software with the data itself.
	  - Database Catalog: Repository of metadata containing information about the structure and organization of a database. This information includes details about tables, relationships, and constraints. 
	  - Program-data Independence: The ability to change the structure of data files without changing the programs that access them. 
	  - User View: A specific representation of the data for a particular user or user group. 
	  - DBA: The DBA or Database administrator is responsible for the management, configuration, security, and maintenance of a database system. 
	  - End User: Someone who interacts with a database system but isn't involved in its design, implementation, or maintenance.
	  - Canned Transaction: Standard transaction that can be executed and repeated often as part of routine operations. 
	  - Deductive Database System: Database system that uses logic-based rules and inference to derive new information from existing data. 
	  - Persistent Object: An object in OOP that's capable of being stored and retrieved from a database. Its state is maintained across different program executions. 
	  - Meta-data: The description of a particular database. 
	  - Transaction-processing Application: A type of software that manages and executes transactions, ensuring the consistency and integrity of data in a database during concurrent access and updates. 
     - 1.5: What are the different types of database end users? Discuss the main activities of each.
		- Casual End Users: Occasionally access the database, but they may need different information each time. Use sophisticated database query interfaces to specify their requests and are typically middle or high-level managers. 
     		- Naive or Parametric End Users: A large portion of database end users. The main job function revolves around constantly querying and updating the database, using standard types of queries and updates called canned transactions that have been programmed and tested. 
       		- Sophisticated End Users: Engineers, scientists, business analysts, and others who thoroughly familiarize themselves with the facilities of the DBMS to implement their applications to meet their complex requirements. 
         	- Standalone Users: Maintain personal databases by using read-made program packages that provide easy-to-use menu-based or graphics-based interfaces. An example of this is a user using financial software packages that store a variety of personal financial data. 
     - 1.8: Identify some informal queries and update operations that you would expect to apply to the database shown in Figure 1.2.
		- Queries: Get a list of the grades of the students who took Section_identifier 112. Find the prerequisites for Data Structures. Get student Brown's grades.
     		- Updates: Add a prerequisite for Discrete Mathematics. Create a new student. Create a new set of classes for the Spring of 09. 
     - 1.13: Give examples of systems in which it may make sense to use traditional file processing instead of a database approach.
		- In Traditional file processing each user defines and implements the files needed for a specific software application as part of programming and application. This would be ideal for single-user systems or small-scale personal projects.


-   Chapter 2 (pg 55-56)
	- 2.3: What is the difference between a database schema and a database state?
		- A database schema is the description of the database.
  		- A database state is a snapshot of the database at a moment in time. With the state, you can reverse the content of a database back into a moment. 
	- 2.10: Discuss some types of database utilities and tools and their functions.
		- Data Loading Tools: The function is to load data stored in files into a database.
  		- Backup Utilities: The function is to periodically back up the database on tape. 
    		- Reorganization Tools: The function is to reorganize database file structures.
      		- Report Generation Utilities: The function is to generate reports based on database data.
	- 2.13: Choose a database application with which you are familiar. Design a schema and show a sample database for that application, using the notation of Figures 1.2 and 2.1. What types of additional information and constraints would you like to represent in the schema? Think of several users of your database, and design a view for each.
		- You may add an image to the repository for this problem. Identify/link to it or even better, [embed it as an image with markdown](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#images).
		- ![image](https://github.com/IUS-CS/c442-29102-sp24-assignment1-owenharvey7/assets/80526926/ac3e2559-a7de-4509-8598-13ebee12a96f)

  			- Constraints: ISBN must be unique for each book. The keys need to be enforced, like AuthorID, UserID, and BookID.
    		- Additional Info: Track when a book out is past due. Store the different genres of the books. If a user hasn't returned a book, flag if they try to rent another.
      		- Admin View: Have full access to everything. Manage user accounts and privileges. Update and maintain books, authors, etc.
        	- User View: Show that users checked out books. Give book recommendations. Allow users to update their contact info. 
	- 2.14: If you were designing a web-based system to make airline reservations and sell airline tickets, which DBMS architecture would you choose from Section 2.5? Why? Why would the other architectures not be a good choice?
		- If I had to pick one of the DBMS architectures I would choose the Three-Tier and N-Tier Architecture for Web Applications. With this, there is a layer between the client and the database server so the client doesn't have access. This creates better security and with the N-Tier Architecture piece, I'm assuming this option would scale as we can grow. I wouldn't choose the other options as with a two-tier we'd run into some problems as the user would directly deal with the database which is a bad idea, and we wouldn't be able to scale our web app. 


## Rubric

Out of 10 points:

- (2 pts) Git and markdown are used properly and all changes are visible on the main branch.
	- Note: No walls of text. Be sure to preview your answer with a markdown editor/output.
- (3 pts) This file is updated with answers to Chapter 1
- (3 pts) This file has been updated with answers to Chapter 2
- (2 pts) Assignment has been submitted on time

## Helpful notes

- [Basic writing and formatting syntax](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax) - How to write markdown.
- [VSCode](https://code.visualstudio.com) has a nice markdown editor.
- [GitHub's official desktop client](https://desktop.github.com) is okay. Also, it integrates with VSCode.
- Read the book. I chose it for a reason!

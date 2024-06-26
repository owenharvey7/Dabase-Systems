## Relational Algebra
- Overview:
	- Relational Algebra is the basic set of operations for the relational model.
	- These operations enable a user to specify basic retrieval requests.
	- The result of an operation is a new relation, which may have been formed from one or more input relations.
	- The algebra operations produce new relations.
	- A sequence of relational algebra operations forms a relational algebra expression.
	- Operations:
		- Unary Operations:
			- Select (sigma)
			- Project (pi)
			- Rename (rho)
		- Relational Algebra Operations:
			- Union, Intersection, Difference (or minus)
			- Cartesian product (x)
		- Additional Operations:
			- Outer Joins, Outer Union
			- Aggregate functions (Sum, Count, Avg, Min, and Max)
- Unary Relational Operations
	- Select operation (sigma) is used to select a subset of the tuples of the tuples from a relation based on a selection condition. 
		- The selection condition acts as a filter.
		- Keeps only those tuples that satisfy the qualifying condition (filters out).
		- Examples:
			- ![[Screenshot 2024-02-28 at 12.58.23 PM.png]]
			- In general the selection operation is denoted by: ![[Screenshot 2024-02-28 at 12.59.46 PM.png]]
			- Select operation properties:![[Screenshot 2024-02-28 at 1.00.59 PM.png]]
	- Project operation is denoted by (pi).
	- This operation keeps certain columns(attributes) from a relation adn discards the other columns.
		- Project creates a vertical partitioning.
			- The list of specified columns is kept in each tuple. 
			- Other attributes in each tuple are discarded.
			- Example: 
				- List each employee's first and last name and salary:![[Screenshot 2024-02-28 at 1.03.53 PM.png]]
				- The general form of the project operation is: ![[Screenshot 2024-02-28 at 1.05.32 PM.png]]
				- The project operation removes any duplicate tuples.
				- This is because the result of the project operation must be a set of tuples.
					- Mathematical sets don't allow duplicates.
- Relational Algebra Operations From Set Theory
- Binary Relational Operations
- Additional Relational Operations
- Examples
## Relational Calculus
- Tuple Relational Calculus
- Domain Relational Calculus

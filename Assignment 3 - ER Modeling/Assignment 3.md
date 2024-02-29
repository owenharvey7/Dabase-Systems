# ER Modeling Problems

Use [PlantUML](https://plantuml.com/ie-diagram) to create diagrams for the following domains. You can find a lot of examples on their website and should be able to get up and running relatively quickly. Use the book as a reference:

- Consider a mail order database in which employees take orders for parts from customers. The data requirements are summarized as follows:
    - The mail-order company has employees identified by a unique employee number, their first and last names, and a zip code where they are located.
    - Customers of the company are uniquely identified by a customer number. In addition, their first and last names and the zip code where they are located are recorded.
    - The parts being sold by the company are identified by a unique part number. In addition, a part name, their price, and quantity in stock are recorded.
    - Orders placed by customers are taken by employees and are given a unique order number. Each order may contain certain quantities of one or more parts and their received date as well as a shipped date is recorded.
        - ![Mail Order Database](https://github.com/IUS-CS/c442-29102-sp24-assignment2-owenharvey7/assets/80526926/b96736d3-b083-497e-9d67-8c089794f5a5)

- Consider a movie database in which data about the movie industry is recorded. The data requirements are summarized as follows:
    - Movies are identified by their title and year of release. They have a length of minutes. They also have a studio that produces the movies and are classified under one or more genres (such as horror, action, drama, etc). Movies are directed by one or more directors and have one or more actors acting in them. The movie also has a plot outline. Each movie also has zero or more quotable quotes that are spoken by a particular actor acting in the movie.
    - Actors are identified by their names and date of birth and act in one or more movies. Each actor has a role in the movie.
    - Directors are also identified by their names and date of birth and direct one or more movies. A director can act in a movie (not necessarily in a movie they direct).
    - Studios are identified by their names and have an address. They produce one or more movies.
        - ![Movie Database](https://github.com/IUS-CS/c442-29102-sp24-assignment2-owenharvey7/assets/80526926/11cec27c-0088-48ef-bf7a-7a834faf8f21)

- Consider a conference review system database in which researchers submit their research papers for consideration. The database system also caters to reviewers of papers who make recommendations on whether to accept or reject the paper. The data requirements are summarized as follows: Authors of papers are uniquely identified by their email id. Their first and last names are also recorded.
    - Papers are assigned unique identifiers by the system and are described by a title, an abstract, and a file name -containing the actual paper.
    - Papers may have multiple authors, but one of the authors is designated as the contact author.
    - Reviewers of papers are uniquely identified by their email id. Their first and last names are also recorded. 
    - Each paper is assigned between two and four reviewers. The reviewer rates the paper assigned to him on a scale of 1 to 10.
        -  ![Conference Review System Database](https://github.com/IUS-CS/c442-29102-sp24-assignment2-owenharvey7/assets/80526926/98fd45c8-6d85-444d-a06a-08f738682c65)

 Each review contains two types of written comments: one to be seen by the review committee only and the other by the author(s).

## Turn in

Ensure your diagrams are added and checked into this repository as either PNG or PDF files **and** their source.

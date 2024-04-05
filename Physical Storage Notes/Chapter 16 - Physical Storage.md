
## Disk Storage 

- Disk storage is non-volatile and essential for database performance.
- Real physical constraints on disk storage make instant retrieval of data challenging.
- To understand disk storage, we will discuss file systems, hashing, and storage types.
- File systems organize and manage files on storage devices.
- File systems are typically covered in operating systems classes.
- Hashing is crucial for finding the location of objects on the disk.
- Hashing will be discussed in more detail, although it is typically covered in data structures and algorithms classes.
- Primary storage is volatile and fast, such as RAM and caches.
- Secondary and tertiary storage are non-volatile and more permanent, such as hard drives and cloud storage.
- Finding information quickly is essential in all storage types.
- Databases are full-stack applications that require optimization of software, operating system, physical disk, and CPU performance.

## Spinning Disks 

- Spinning disks are a traditional form of data storage that uses magnetic disks.
- Spinning disks have high latency because the disk must physically rotate to access data.
- Spinning disks are cheap and provide large storage capacities, making them suitable for storing large amounts of data in the database world.
- Spinning disks have tracks and sectors that store data.
- Optimizing disk access involves matching the disk's access patterns with the file system's structure.
- This optimization was crucial in the early 1990s but is less important today.

## Seek Time and Latency 

- Seek time is the time taken to position the disk arm over the correct track.
- Latency is the time taken for the disk to spin and access the data.
- Transfer time is the time taken to read or write data to the disk.
- All these factors can affect the overall performance of a computer system.

## Compare and Contrast

- When comparing disks, consider density, rotation speed, and latency.
- Higher density, faster rotation speed, and lower latency are desirable.
- Comparing and contrasting these factors is important when building servers.

## Magnetic Disks 

- Magnetic spinning disks are still widely used due to their low cost per storage density.
- SSDs support more data, but so do spinning disks as technology advances.
- Spinning disks have a high failure rate, requiring constant monitoring and replacement in production environments.
- The high failure rate is due to the mechanical nature of spinning disks, which eventually wear out.

## SSD 

- Becoming more affordable and widely used in servers.
- Typically used for OS installations and fast-access data.
- May have lower failure rates compared to spinning disks.

## Tape Drive

- Used for backups, especially in large server installations.
- Magnetic tape jukeboxes can store enormous amounts of data at a low cost.
- Suitable for storing rarely accessed data such as audit records and historical data.
- Some databases use a combination of fast and slow storage types to optimize performance.

## File Structure and Operations

- File structure is crucial for optimizing disk access speed in a database.
- Fixed-length records have a consistent size, making it easy to calculate the location of a specific record.
- Variable-length records require more complex methods to determine their location.
- The operating system provides file operations like open, reset, find, and read to manage files efficiently.

## Minimizing Disk Operations

- Minimizing disk operations improves database performance since disk operations are much slower compared to in-memory operations.
- Databases like Redis operate solely in memory for faster access, while others like MongoDB keep recent changes in memory and gradually operate with the disk in the background.

## Hashing for Disk Storage and Database Access

- Hashing is a powerful tool for disk storage and database access, allowing for fast unordered access to records.
- Hash tables provide amortized constant time operations, meaning that on average, the time complexity for insert, removal, and search operations is O(1).
- Hashing involves using a hash function to map a key to an address, enabling direct access to records with two reads.
- Ordered tables and hash lookups can be combined for efficient data retrieval, balancing ordered and instant lookup capabilities.
- Hash tables use buckets to store records, and overflow pointers are used to handle collisions.
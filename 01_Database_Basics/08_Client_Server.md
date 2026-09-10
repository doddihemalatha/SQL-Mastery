# Client–Server Architecture

## 1. What is Client–Server Architecture?

**Client–Server Architecture** is a system in which a **client requests data or a service from a server**, and the **server processes the request and provides a response**.

The client and server have different responsibilities:

```text
Client → Sends request
Server → Processes request and sends response
```

### Simple Definition

> **Client–Server architecture means the client requests something and the server provides the requested service or data.**

---

# 2. What is a Client?

A **client** is a device or application that **requests data or a service from a server**.

The client is usually the part of the system that the user directly interacts with.

### Examples

* Web browser
* Mobile application
* Desktop application
* Web application

### Example

When a student opens a college application and clicks **"Show My Marks"**, the college application acts as the **client**.

```text
Student
   ↓
College Application
   ↓
Client
```

The client sends a request to the server.

```text
Client → Requests data
```

---

# 3. What is a Server?

A **server** is a system that **receives requests from clients, processes those requests, and provides responses**.

For example, when the college application requests a student's marks, the server processes the request and sends the marks back to the client.

```text
Server
   ↓
Receives request
   ↓
Processes request
   ↓
Provides response
```

### Simple Definition

> **A server is a system that receives client requests, processes them, and provides the requested service or data.**

---

# 4. Basic Client–Server Flow

The basic communication between a client and server is:

```text
Client
   ↓
Request
   ↓
Server
   ↓
Process Request
   ↓
Response
   ↓
Client
```

### What happens here?

1. The **client** sends a request.
2. The **server** receives the request.
3. The **server** processes the request.
4. The **server** prepares the result.
5. The **server** sends a response.
6. The **client** receives the response and displays the result to the user.

### Simple Memory

> **Client → ASK**

> **Server → PROCESS + PROVIDE**

---

# 5. Real-World Example

Consider a **college application**.

A student wants to see their marks.

---

## Step 1: Student Requests Marks

The student interacts with the college application.

```text
Student
   ↓
College Application
```

The college application acts as the **client**.

---

## Step 2: Client Sends a Request

The client sends a request to the server.

Conceptually, the request could be:

```text
College Application
        ↓
      Client
        ↓
"Give me Hema's marks"
```

The actual request sent by an application would normally contain structured information rather than this exact sentence.

---

## Step 3: Server Processes the Request

The server receives the request and processes it.

```text
Client
  ↓
Server
  ↓
Processes request
```

The server may need to communicate with a database to obtain the required information.

---

## Step 4: Server Sends the Result

After processing the request, the server sends the result back to the client.

```text
Server
  ↓
"Python = 85
 SQL = 90"
  ↓
Client
```

The client then displays the result to the student.

---

## Complete Flow

```text
Student
   ↓
College Application
   ↓
Client
   ↓
Request
   ↓
Server
   ↓
Process Request
   ↓
Response
   ↓
Client
   ↓
Student sees marks
```

---

# 6. Database in Client–Server Architecture

In many applications, the **server communicates with a database** to retrieve or store data.

The database is responsible for storing organized data, while the server handles application requests and communicates with the database.

### Basic Flow

```text
Client
   ↓
Request
   ↓
Server
   ↓
Database
   ↓
Server
   ↓
Response
   ↓
Client
```

---

## Example: Student Requests Marks

Suppose a student requests their marks.

The process can be:

```text
Student
   ↓
College App
   ↓
Client
   ↓
Server
   ↓
Database
   ↓
Student's Marks
   ↓
Server
   ↓
Client
   ↓
Student
```

### What happens?

**1. Student**

Requests to see their marks.

**2. College Application**

Acts as the client and sends the request.

**3. Server**

Receives and processes the request.

**4. Database**

The server communicates with the database to retrieve the student's marks.

**5. Server**

Receives the required data and prepares the response.

**6. Client**

Receives the response.

**7. Student**

Sees the marks on the application.

---

# 7. Why is the Server Used Between Client and Database?

A common beginner mistake is to think:

```text
Client → Database
```

In many real applications, the architecture is instead:

```text
Client → Server → Database
```

The server acts as an intermediary between the client and the database.

This allows the application to:

* Control access to the database
* Validate requests
* Apply business rules
* Authenticate users
* Authorize operations
* Process data
* Prevent direct database access from ordinary clients

### Example

Suppose a student requests:

```text
"Show my marks"
```

The server can check:

```text
Is the user logged in?
        ↓
Is the request valid?
        ↓
Is the student allowed to access these marks?
        ↓
Retrieve the required data
        ↓
Send the response
```

This is one reason client–server architecture is important in modern applications.

---

# 8. Advantages of Client–Server Architecture

Client–Server architecture can provide several benefits.

### 1. Centralized Data Management

Data can be managed centrally on the server and database.

```text
Client 1 ──┐
Client 2 ──┼──→ Server ──→ Database
Client 3 ──┘
```

Multiple clients can use the same server and centralized data.

---

### 2. Better Security

The server can control access to data and services.

Instead of allowing every client to directly access the database:

```text
Client → Database
```

the application can use:

```text
Client → Server → Database
```

The server can authenticate and authorize requests before accessing data.

---

### 3. Controlled Access to Data

The server can determine:

* Who can access the data
* What data they can access
* What operations they can perform

For example:

```text
Student
→ Can view own marks

Faculty
→ Can view student academic information

Admin
→ Can manage student records
```

---

### 4. Support for Multiple Users

A single server can handle requests from many clients.

```text
Client 1 ──┐
Client 2 ──┤
Client 3 ──┼──→ Server
Client 4 ──┤
Client 5 ──┘
```

This allows many users to use the same application and services.

---

### 5. Easier Maintenance

Application logic can be maintained on the server.

When server-side logic needs to be changed, the organization may not need to modify every client individually, depending on the application design.

---

### 6. Centralized Processing

The server can perform important processing instead of requiring every client to perform the same operations.

```text
Client
   ↓
Sends request
   ↓
Server
   ↓
Processes request
   ↓
Sends result
```

---

### 7. Efficient Data Management

The server can coordinate communication between clients and databases and apply rules for accessing and processing data.

---

# 9. Client vs Server

| Client                                   | Server                               |
| ---------------------------------------- | ------------------------------------ |
| Requests data or services                | Receives requests                    |
| Sends requests                           | Processes requests                   |
| Receives responses                       | Provides responses                   |
| Usually interacts directly with the user | Usually provides services to clients |
| Displays results to the user             | Performs server-side processing      |

### Easy Memory

```text
Client → REQUEST

Server → PROCESS + RESPOND
```

---

# 10. Client, Server, and Database

These three components should **not be confused**.

## Client

The **client** requests data or a service.

```text
Client
→ Requests
```

## Server

The **server** processes the request and provides a response.

```text
Server
→ Processes + Responds
```

## Database

The **database** stores organized data.

```text
Database
→ Stores data
```

### Complete Flow

```text
Client
  ↓
"Give me Hema's marks"
  ↓
Server
  ↓
"Let me process the request"
  ↓
Database
  ↓
"Hema's marks"
  ↓
Server
  ↓
Client
  ↓
Result shown to user
```

---

# 11. Client–Server Architecture in a Web Application

A common web application can be understood as:

```text
User
  ↓
Web Browser
  ↓
Client
  ↓
Internet / Network
  ↓
Server
  ↓
Database
```

For example, when a user logs into a website:

```text
User
  ↓
Browser
  ↓
Login Request
  ↓
Server
  ↓
Database
  ↓
Check User Information
  ↓
Server
  ↓
Response
  ↓
Browser
  ↓
User
```

The exact architecture can vary depending on the application, but the basic client–server idea remains the same.

---

# 12. Client–Server Architecture vs Database

A **database** and a **server** are not necessarily the same thing.

### Database

Stores and organizes data.

```text
Database
→ Stores data
```

### Server

Provides services and processes requests.

```text
Server
→ Receives requests
→ Processes requests
→ Communicates with other systems
→ Sends responses
```

A database can run on a server, but the concepts are different.

### Example

```text
                 SERVER
                    │
          ┌─────────┴─────────┐
          ↓                   ↓
    Application Logic      Database
                              ↓
                         Stores Data
```

---

# 13. Key Characteristics

Important characteristics of Client–Server architecture include:

* Request-response communication
* Centralized services
* Multiple clients can communicate with a server
* Controlled access
* Server-side processing
* Communication with databases
* Centralized management

---

# 14. Complete Real-World Example

Imagine a college management application.

The college has:

```text
Students
Faculty
Courses
Marks
Attendance
Fees
```

A student opens the application and selects:

```text
"View My Marks"
```

The complete process is:

```text
Step 1
Student
   ↓
Uses college application

Step 2
College Application
   ↓
Acts as Client

Step 3
Client
   ↓
Sends request to Server

Step 4
Server
   ↓
Receives request

Step 5
Server
   ↓
Checks the request and permissions

Step 6
Server
   ↓
Requests marks from Database

Step 7
Database
   ↓
Returns marks

Step 8
Server
   ↓
Sends response to Client

Step 9
Client
   ↓
Displays marks

Step 10
Student
   ↓
Sees marks
```

### Overall Architecture

```text
                         STUDENT
                            ↓
                     COLLEGE APP
                            ↓
                          CLIENT
                            ↓
                         REQUEST
                            ↓
                          SERVER
                            ↓
                    ┌───────┴───────┐
                    ↓               ↓
              Application       Database
                Logic               ↓
                    ↓          Student Data
                    └───────┬───────┘
                            ↓
                         RESPONSE
                            ↓
                          CLIENT
                            ↓
                         STUDENT
```

---

# 15. Simple Mental Model

Think about ordering food through an online application.

```text
You
 ↓
Food App
 ↓
Client
 ↓
Request
 ↓
Server
 ↓
Processes Request
 ↓
Restaurant / Database / Other Services
 ↓
Server
 ↓
Response
 ↓
Food App
 ↓
You
```

The exact systems behind the application can be much more complex, but the basic client–server concept is:

```text
CLIENT
   ↓
REQUEST
   ↓
SERVER
   ↓
PROCESS
   ↓
RESPONSE
   ↓
CLIENT
```

---

# 16. Key Takeaway

> **Client–Server architecture is a system where the client requests data or a service, and the server processes the request and provides a response.**

Remember:

```text
Client   → ASK / REQUEST
Server   → PROCESS + PROVIDE
Database → STORE
```

### Final Memory Formula

```text
Client
  ↓
REQUEST
  ↓
Server
  ↓
PROCESS
  ↓
Database (when data is needed)
  ↓
Server
  ↓
RESPONSE
  ↓
Client
```

### One-Line Summary

> **Client asks, Server processes and responds, Database stores the data.**

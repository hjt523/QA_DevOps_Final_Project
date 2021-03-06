# QA_DevOps_Final_Project

## Contents

* [Brief](https://github.com/hjt523/QA_DevOps_Final_Project/tree/main#brief)
   * [Created With](https://github.com/hjt523/QA_DevOps_Final_Project/tree/main#created-with)
* [Scope](https://github.com/hjt523/QA_DevOps_Final_Project/tree/main#scope)
* [Project Planning](https://github.com/hjt523/QA_DevOps_Final_Project/tree/main#project-planning)
* [CI Pipeline](https://github.com/hjt523/QA_DevOps_Final_Project/tree/main#ci-pipeline)
* [Project Management](https://github.com/hjt523/QA_DevOps_Final_Project/tree/main#project-management)
   * [Kanban board progress](https://github.com/hjt523/QA_DevOps_Final_Project/tree/main#todo-kanban-board-progress)
* [Running Costs](https://github.com/hjt523/QA_DevOps_Final_Project/tree/main#running-costs)
* [Current State](https://github.com/hjt523/QA_DevOps_Final_Project/tree/main#current-state)
* [Sprint Retrospective](https://github.com/hjt523/QA_DevOps_Final_Project/tree/main#sprint-retrospective)
* [Future Development](https://github.com/hjt523/QA_DevOps_Final_Project/tree/main#future-development)
* [Contributors](https://github.com/hjt523/QA_DevOps_Final_Project/tree/main#contributors)
* [Acknowledgments](https://github.com/hjt523/QA_DevOps_Final_Project/tree/main#acknowledgements)
* [Licensing](https://github.com/hjt523/QA_DevOps_Final_Project/tree/main#licensing)

## Brief 

We were required to plan, design and implement a solution for automating the development workflows and deployments of a third-party application. As part of our final deliverable we will discuss the project in a presentation and demonstrate these workflows. We were given flexibilty to choose the technologies that would be used in order to achieve the minimum viable product. 

Our roles for the project were the following:
* Scrum master - Tom
* Product owner - Amir
* Merge manager - Harry
* Debugger - Jack

## Scope

The team was required to work with these externally developed applications:

- [Pet Clinic Angular](https://github.com/spring-petclinic/spring-petclinic-angular)
- [Pet Clinic Rest](https://github.com/spring-petclinic/spring-petclinic-rest)

The angular application consisted of the front end of the application, which the user would directly interact with. The rest application, in contrast, contained the back end functionality.

The team was required to plan, design and implement an automated deployment solution as part of the development workflow and further deployments of the application. There was no restrictions on which technologies can be used to achieve this goal.

## Project Planning

During the week of development, the team was required to run daily scrums, with the Trainer present, to record progress, discuss implementations and ensure the maintainance of a project planning board. The board would be the most useful piece of technology to track progress and view tasks to be completed, as well as open any issues.

## Created With

* Git - Version control.
* Github - To manage our repository and to sort our workflow on. Using the Github Projects feature we set up a basic Kanban style board with the intention of automating task creation and review.
* AWS - Our Cloud Platform of choice was Amazon Web Services as we felt the need to showcase our knowledge with AWS. AWS additionally offers many functionalities that other cloud services do not. 
  * AWS Codebuild - We decided to use AWS Codebuild rather than Jenkins to automate the building of our project in order to showcase our familiarity with AWS. 
  * AWS EKS - To start run and scale our Kubernetes functionalities.
* Terraform - To automate the creation of the instances on AWS and automate the creation of the EKS cluster. 
* Docker (Compose) - To create our containers that make up the Kubernetes pods. Our docker images are hosted here: https://hub.docker.com/u/aabdurrahman
* Nginx - To act as a reverse proxy.
* Kubernetes - To orchestrate and manage our containers and virtual machines.

## CI Pipeline

Our CI pipeline is displayed below.

![image](https://raw.githubusercontent.com/hjt523/QA_DevOps_Final_Project/DEV/images/Final_Project_diagram.png)

## Project Management

We started off using Jira for our project management but when we wanted to set up Jira-Github integration we found it a bit too tempremental to implement. As many of us had already used Jira before and were familiar with Jira and Trello we decided to use the Github Projects tab for our Kanban board. One feature that was particularly attractive from the Github Projects tab was the ability to automate pull requests for tasks depending on their designation. Our team had daily Scrum meetings to decide our outcomes for the day and to keep other team members appraised of our progress. 

Our feature branch model:

![image](https://raw.githubusercontent.com/hjt523/QA_DevOps_Final_Project/main/images/Feature%20Branch.png)

We managed to distribute work well across our team:

![image](https://raw.githubusercontent.com/hjt523/QA_DevOps_Final_Project/main/images/Commits.png)

## Todo Kanban Board Progress:

### Day  1 :

![image](https://user-images.githubusercontent.com/81659044/124495718-5e3d7280-ddb0-11eb-8980-347d07153d50.png)

### Day 2 :

![image](https://user-images.githubusercontent.com/81659044/124634741-98754580-de7e-11eb-8c47-fd9d32e98c11.png)

### Day 3 :

![image](https://raw.githubusercontent.com/hjt523/QA_DevOps_Final_Project/main/images/Day%203.png)

### Day 4 :

![image](https://raw.githubusercontent.com/hjt523/QA_DevOps_Final_Project/main/images/Day%204.png)

![image](https://raw.githubusercontent.com/hjt523/QA_DevOps_Final_Project/main/images/User%20Stories.png)

### Risk Assessment

![image](https://raw.githubusercontent.com/hjt523/QA_DevOps_Final_Project/main/images/Risk.png)

## Running Costs

![image](https://raw.githubusercontent.com/hjt523/QA_DevOps_Final_Project/main/images/MicrosoftTeams-image.png)


## Current State

We have come very close to achieving a minimum viable product but unfortunately due to lack of time, haven't quite been able to deliver. We have all of the necassary infrastructure up and working but problems with the REST API held us back. NGINX, Docker, Terraform, and the basics of Kubernetes have all been set up on an automated CodeBuild pipeline that fetches changes from GitHub and pushes them into our Terraform created instances. The deployed instances have docker images deployed on them, and our load balancer functions correctly. We have the basics of a database set up to which the app can save data to. 

Here is an image of our successful build.

![image](https://raw.githubusercontent.com/hjt523/QA_DevOps_Final_Project/main/images/BuildSuccess.png)

Here is an image of our CodeBuild output which recognises that Kubernetes, Docker, and NGINX are functioning.

![image](https://raw.githubusercontent.com/hjt523/QA_DevOps_Final_Project/main/images/Logs.png)

We did make sure all the ports on the network are open as shown here:

![image](https://raw.githubusercontent.com/hjt523/QA_DevOps_Final_Project/main/images/Traffic.png)

The error returned when we ran a curl command on the URL provided by a kubectl command is shown here:

![image](https://raw.githubusercontent.com/hjt523/QA_DevOps_Final_Project/main/images/Curl.png)

As a stretch goal, we had planned to implement an external, permanent database for information to be stored. We had begun development on this, but due to time constraints, it could not be completed.

We begun by changing the Application.Properties file as described in the readME of the source files.

![DB-App-Properties](https://github.com/hjt523/QA_DevOps_Final_Project/blob/main/images/DB-app-prop.PNG)

Due to the database being created with Terraform, the outputs for the port and endpoint would be needed as a variable, rather than a static value. These variable were created in the outputs.tf file within the RDS folder.

![DB-Outputs](https://github.com/hjt523/QA_DevOps_Final_Project/blob/main/images/DB-Output.PNG)

With the variables now established, they were put in to the MySQL.Properties file.

![DB-MYSQL-Properties](https://github.com/hjt523/QA_DevOps_Final_Project/blob/main/images/DB-Properties.PNG)

Now all of the variables and properties had been set, it was then just a matter of putting them in the buildspec.yml, so the variables are stored as Global Variables.

![DB-buildspec](https://github.com/hjt523/QA_DevOps_Final_Project/blob/main/images/DB-buildpsec.PNG)


## Sprint Retrospective

What worked and what went well?
- Streamlining the Codebuild process.
- Ensuring that the Nginx server was accessible.
- Our feature branch model was very easy to work with.

What caused difficulties and what went wrong?
- AWS Codebuild proved to be more difficult to use, compared to Jenkins.
- Although everything was containerised, and NginX was working, we were unable to access the front-end of the app.

What did we do to address those problems?
-  Reviewing documentation and combing existing repositories/stack overflow.

What could we improve on?
- Researched and compared pipeline software extensively, allowing us to choose a more effective one.
- Better time management for workflows. We were bottlenecked a number of times waiting on certain tasks to be finished.
- We could have rotated tasks and reviewed each others work in a more stringent fashion so we wouldn't waste so much time on trivial debugging like misplaced commas or spelling errors.


## Future Development

- Add a functionality to make security groups update with every running of the application rather than manually entering ports to open.
- Automate the creation of Docker Images, which would then be pushed to Docker Hub.
- Make sure the app is functional and can be used.
- Ensure database can be connected and is fully functional.

## Contributors

Jack, Harry, Amir, Thomas. 

## Acknowledgements

Everyone at QA for giving us the necessary skills to complete this project. Vikhil for helping with some troubleshooting.

## Licensing 

MIT License

Copyright (c) [2021] [Harry Tindale]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

# QA_DevOps_Final_Project

## Contents
* [Brief](https://github.com/hjt523/QA_DevOps_Final_Project/tree/Read.me-edits#brief)
   * [Created With](https://github.com/hjt523/QA_DevOps_Final_Project/tree/Read.me-edits#created-with)
* [Scope](https://github.com/hjt523/QA_DevOps_Final_Project/tree/Read.me-edits#scope)
* [Project Planning](https://github.com/hjt523/QA_DevOps_Final_Project/tree/Read.me-edits#project-planning)
* [Project Management](https://github.com/hjt523/QA_DevOps_Final_Project/tree/Read.me-edits#project-management)
   * [Kanban board progress](https://github.com/hjt523/QA_DevOps_Final_Project/tree/Read.me-edits#todo-kanban-board-progress)
* [CI Pipeline](https://github.com/hjt523/QA_DevOps_Final_Project/tree/Read.me-edits#ci-pipeline)
* [Running Costs](https://github.com/hjt523/QA_DevOps_Final_Project/tree/Read.me-edits#running-costs)
* [Future Development](https://github.com/hjt523/QA_DevOps_Final_Project/tree/Read.me-edits#future-development)
* [Contributors](https://github.com/hjt523/QA_DevOps_Final_Project/tree/Read.me-edits#contributors)
* [Acknowledgments](https://github.com/hjt523/QA_DevOps_Final_Project/tree/Read.me-edits#acknowledgements)
* [Licensing](https://github.com/hjt523/QA_DevOps_Final_Project/tree/Read.me-edits#licensing)

## Brief 

We were required to plan, design and implement a solution for automating the development workflows and deployments of the application below. As part of our final deliverable you will need to discuss the project in a presentation and demonstrate these workflows. We were required to choose DevOps technologies that we thought best suited the task at hand and to configure an automated deployment to a cloud service. 

https://github.com/spring-petclinic/spring-petclinic-angular
https://github.com/spring-petclinic/spring-petclinic-rest

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

### Created With

* Git - Version control.
* Github - To manage our repository and to sort our workflow on. Using the Github Projects feature we set up a basic Kanban style board with the intention of automating task creation and review.
* AWS - Our Cloud Platform of choice was Amazon Web Services as we felt the need to showcase our knowledge with AWS. AWS additionally offers many functionalities that other cloud services do not. 
  * AWS Codebuild - We decided to use AWS Codebuild rather than Jenkins to automate the building of our project in order to showcase our familiarity with AWS. 
  * AWS EKS - To start run and scale our Kubernetes functionalities.
* Terraform - To automate the creation of the instances on AWS and automate the creation of the EKS cluster. 
* Docker (Compose) - To create our containers that make up the Kubernetes pods.
* Nginx - To act as a reverse proxy.
* Kubernetes - To orchestrate and manage our containers and virtual machines.

## CI Pipeline

Our CI pipeline is displayed below.

![image](https://raw.githubusercontent.com/hjt523/QA_DevOps_Final_Project/Read.me-edits/images/Final_Project_diagram.png)

## Project Management

We started off using Jira for our project management but when we wanted to set up Jira-Github integration we found it a bit too tempremental to implement. As many of us had already used Jira before and were familiar with Jira and Trello we decided to use the Github Projects tab for our Kanban board. One feature that was particularly attractive from the Github Projects tab was the ability to automate pull requests for tasks depending on their designation. Our team had daily Scrum meetings to decide our outcomes for the day and to keep other team members appraised of our progress. 

### Todo Kanban Board Progress:

Day  1 :

![image](https://user-images.githubusercontent.com/81659044/124495718-5e3d7280-ddb0-11eb-8980-347d07153d50.png)

Day 2 :

![image](https://user-images.githubusercontent.com/81659044/124634741-98754580-de7e-11eb-8c47-fd9d32e98c11.png)

## Running Costs

## Future Development

## Contributors

Jack, Harry, Amir, Thomas. 

## Acknowledgements

Everyone at QA for giving us the necassary skills to complete this project.

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

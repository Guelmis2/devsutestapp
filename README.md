# Demo Devops NodeJs

This is a simple application to be used in the technical test of DevOps.

## Getting Started

### Prerequisites

- Node.js 18.15.0

### Installation

Clone this repo.

```bash
git clone https://bitbucket.org/devsu/demo-devops-nodejs.git
```

Install dependencies.

```bash
npm i
```

### Database

The database is generated as a file in the main path when the project is first run, and its name is `dev.sqlite`.

Consider giving access permissions to the file for proper functioning.

## Usage

To run tests you can use this command.

```bash
npm run test
```

To run locally the project you can use this command.

```bash
npm run start
```

Open http://localhost:8000/api/users with your browser to see the result.

### Features

These services can perform,

#### Create User

To create a user, the endpoint **/api/users** must be consumed with the following parameters:

```bash
  Method: POST
```

```json
{
    "dni": "dni",
    "name": "name"
}
```

If the response is successful, the service will return an HTTP Status 200 and a message with the following structure:

```json
{
    "id": 1,
    "dni": "dni",
    "name": "name"
}
```

If the response is unsuccessful, we will receive status 400 and the following message:

```json
{
    "error": "error"
}
```

#### Get Users

To get all users, the endpoint **/api/users** must be consumed with the following parameters:

```bash
  Method: GET
```

If the response is successful, the service will return an HTTP Status 200 and a message with the following structure:

```json
[
    {
        "id": 1,
        "dni": "dni",
        "name": "name"
    }
]
```

#### Get User

To get an user, the endpoint **/api/users/<id>** must be consumed with the following parameters:

```bash
  Method: GET
```

If the response is successful, the service will return an HTTP Status 200 and a message with the following structure:

```json
{
    "id": 1,
    "dni": "dni",
    "name": "name"
}
```

If the user id does not exist, we will receive status 404 and the following message:

```json
{
    "error": "User not found: <id>"
}
```

If the response is unsuccessful, we will receive status 400 and the following message:

```json
{
    "errors": [
        "error"
    ]
}
```

### DevOps Project Diagram

The following is the diagram of the devsutestapp project:

![Project Diagram](https://github.com/Guelmis2/devsutestapp/blob/main/Devsutestapp%20Project%20Diagram.png)

The number one represents when a developer pushes a code change to the project's GitHub repository.

The number two represents the CI/CD process that runs within the Azure DevOps Pipeline.

The number three represents the stage within the pipeline that follows the Building and Testing stage and the Code Analysis and Vulnerability Scan. In this stage, the pipeline builds an image using the Dockerfile located in the project's repository and pushes it to the DockerHub Container Registry.

The number four represents the stage within the pipeline where the Kubernetes cluster is created on Azure Kubernetes Service (AKS).

The number five represents the final stage within the pipeline where the Kubernetes cluster is updated using the manifest file located in the project's repository and the new Docker image previously pushed to DockerHub.



## License

Copyright © 2023 Devsu. All rights reserved.

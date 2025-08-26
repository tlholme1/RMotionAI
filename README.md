# RMotionAI

Client package for the [Motion API](https://docs.usemotion.com/).

## Installation

This package is not on CRAN. You can install it from source after cloning the repository.

```r
# install.packages("devtools")
library(devtools)
install()
```

## Usage

Load the library and call the helpers with your API token.

```r
library(RMotionAI)

Token <- "your_api_token"

# Create a task
Task <- list(name = "Example task")
CreateTask(Token, Task)

# Retrieve tasks
GetTasks(Token)
```

Project-related helpers follow the same pattern with `CreateProject`, `GetProjects`, `UpdateProject`, and `DeleteProject`.

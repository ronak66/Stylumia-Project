# MIT Backend

MIT backend follows MVC architecture. Here is the directory structure:  

```
MIT
|-- app
    |-- __init__.py
    |-- module1
        |-- __init__.py
        |-- model.py
        |-- controller.py
        |-- routes.py
    |-- module2
        |-- __init__.py
        |-- model.py
        |-- controller.py
        |-- routes.py
    .
    .
    .

|-- connections
    |-- __init__.py
    |-- Schema
    |-- es_api.py
    |-- elastic_search.py

|-- logger
    |-- __init__.py
    |-- log.py

|-- utils
    |-- __init__.py

|-- Dockerfile
|-- server.py
```

## Modules

All the modules like collections, reports, profile, user, products etc will be available in  `/app/<module name>`.

Each module contains 3 files:  
* model.py  
    * Contains the sql table columns for that module
* controller.py   
    * Contains all the functions that needs to be executed when rendered that a particula page. like showing results, saving data, update data etc.   
* routes.py  
    * Contains all the routes for that module  

    #### App
    App contains all the modules.  
    It's `__init__.py` file contains:  
    * Initailization of flask app (varaible name - `app`)
    * Initialization of the data base (variable name - `db`)
    * Initialization of elastic search class (variable - `es`)
    * All blueprint registration

    #### User module
    Contains login, logout and forgot password routes. It also contains auth_config, auth_db, login_wrapper, auth model.  
        `/app/user/`

    #### Collections module
    Contains all myboards, shared boards and favourites routes.  
    `/app/collections/`

    #### Board module
    module is a sub-module of collections. Contains CURD operations for a board with other utility routes.  
    `/app/collections/boards/`

    #### Onboarding Module
    Contains routes to get onboarding questions and save their answers in the profile table (available in profile module).  
    model.py contains gender, category, brand and retailer model (db tables).   
    `/app/onboarding/`

    #### Profile  Module
    Contains all the answers to the questions asked in oboarding (selected categories, selected brands etc). Available routes to update these data.  
    `/app/profile/`

    #### Products Module
    Contains routes for the product, like VS api.  
    `/app/products/`

    #### Whatsnew Module
    Contains whatsnew, trending and foryou routes.  
    `/app/whatsnew/`



## Connections

* Schema and elastic-search is available here  

    #### Schema  
    Contains two images displaying the currenct schema of the backend  
    `/connections/schema/`

    #### Elastic Search
    There are two files, one `/connections/elastic_search.py` that contains `ElasticSearchFunctions` class which has all the necessary elastic search functions.  
    And the second one is `/connections/es_api.py` which contains all the data api (like whatsnew, trending, brands, gender_coategory_conbo etc)  
    
## Server
Flask app is running in the `server.py` file

## Installation
Run the following command to install all the dependencies:  
`pip install requirements.txt`

## Running the app
Start the app by running this command:  
`python server.py`



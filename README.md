# DB for witchers

### Project business logic

I have recently completed game "Witcher 2" and main plot was about escaped witcher who 
became a king slayer. I thought that it would never happen it there was a database for all witchers.
Also every witcher has his own unique silver or iron sword, so it also should be registered here.

#### It should contain:
1) List of Witchers with their names and their school
2) It should have auth protection with secret word. So only Witchers elders can access it
3) It should have CRUD operations for classes such as witchers and schools

### Technical aspects of project:


* It is written on Ruby 3.0.0 with framework Ruby on Rails 6.14.1
    * It is very comfortable programming language and RoR is great tool for setting up projects such as web app bd manager with GUI
    * It has well separated 3-level structure and it is easy for understanding while checking lab
 

* Database creation and initialization
  * rails db:drop
  * rails db:create
  * rails db:migrate
  * rails db:seeds

### So if you are newbie in ruby and ruby on rails - map of folders
* ##### App - main folder for application logic
  * Assets - folder for css and images (not loaded by users)
  * javascript - (suddenly) folder for js code
  * channels - folder for channels logic
  * models - folder for data-logic classes. 
    They are inherited from rails ActiveRecord class and support Rails ORM features
  * controllers - folder for classes which control dataflow and access to resources. 
    Basicaly needed to prepare data for delivering from views to models and in opposite
  * views - folder for files which will be rendered on server and delivered to user. 
    it can be HTML CSV JSON JS XML and others
  * services - folder for classes with special business logic.
    Created with purpose not to make controllers fat
  * helpers - folder for functions which control rendering logic
* ##### Db - folder for everything connected to db, seeds, migrations and so on
  * migrations - classes which generate migrations in db
  * schema - actual schema of db with all migrations
* ##### Gemfile - file for list of external libraries needed to be installed
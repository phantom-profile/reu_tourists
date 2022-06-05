# DB for tourbase management

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

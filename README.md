### 0. Local Development Enviroment
#### Video Demo: [<URL HERE>](https://youtu.be/d-FsRWnKc_s)
#### Description:   

In Peru theres is around ~10 M abandoned dogs, in Lima ~ 8M information from a Peruvian's newspaper (Republica,2018).  

Dog App is a first attempt to help abandoned dogs. The main idea is to create a web space where future adopters and dog refugees or foster house can interact through a forum, create post about their cases, comment them, get notifications and get in touch and help each other.  

The app is being deployed using Ruby on Rails framework based on MVC pattern.   
Also has already the following features:  

- **User Authentication**  using Devise gem.
  1. ***Database Authenticatable:***  hashes and stores a password in the database to validate the authenticity of a user while signing in. The authentication can be done both through POST requests or HTTP Basic Authentication.
  2. ***Registerable:***  handles signing up users through a registration process, also allowing them to edit and destroy their account.
  3. ***Rememberable:***  manages generating and clearing a token for remembering the user from a saved cookie.
  4. ***Trackable:*** tracks sign in count, timestamps and IP address.
- **Active Store** (rails feature).
  - Active Storage facilitates uploading files to a cloud storage service like Amazon S3, Google Cloud Storage, or Microsoft Azure Storage and attaching those files to Active Record objects.
  - this tool ease the implementation of the comments(rich text) and upload and show images (dogs pictures) and avatars from the users.
- **Notice gem** 
  - Use this gem to implement comments notifications to the user who owms the posts.
- **Ramsack gem**
  - Help us make a searching bar located in the navbar that querys on the databases table whatever you type in.
   
- **Data Base** tables using Sqlite3 for development and Postgresql for production
  1. Create `Users`, `Posts`, `Comments` and `Notification` tables with their respective relationships.
  2. `Validations` have been made on the `models` file.
  
- **Bootstrap** as CSS library in order to make it responsive and nice.
  

### 1. Prerequisites

Depending on your OS you'll need to follow one of the following steps:

- On macOS
    1. Install xcode and run from terminal: `xcode-select --install`
    2. Install [homebrew](https://brew.sh/)
- On Ubuntu
    1. Update system and repo: `sudo apt update && sudo apt -y upgrade`
    2. Install build tools: `sudo apt install build-essential`
- On Windows
    1. Install [WSL2](https://pureinfotech.com/install-windows-subsystem-linux-2-windows-10/)
    2. Update system and repo: `sudo apt update && sudo apt -y upgrade`
    3. Install build tools: `sudo apt install build-essential`
    4. Follow the rest of this guide using the Ubuntu steps

### 2. System Requeriments

💡 Before you begin, make sure you have all the below installed:

1. Install [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git/)
2. Install [Docker](https://docs.docker.com/engine/install/) and [Docker Compose](https://docs.docker.com/compose/install/)
    1. On Linux, ensure you can run docker without sudo and configure docker to start on boot as described [here](https://docs.docker.com/engine/install/linux-postinstall/).
3. Install asdf as your ruby version manager
    1. Follow [this guide](https://asdf-vm.com/guide/getting-started.html) to install asdf
    2. Ensure asdf is working as expected by closing your terminal entirely and running `asdf info`
4. Install direnv using asdf
    1. Add the plugin: `asdf plugin add direnv`
    2. Install the latest version: `asdf install direnv latest`
    3. Set direnv globally with the version you installed: `asdf global direnv x.x.x`
5. Install nodejs using asdf
    1. Add the plugin: `asdf plugin add nodejs`
    2. Install the [latest stable LTS]("https://nodejs.org/en/"): `asdf install nodejs  16.x.x`
    3. Set nodejs for the project: `asdf local nodejs 16.x.x`
6. Install ruby using asdf
    1. Add the plugin: `asdf plugin add ruby`
    2. Install vesion specified in `.ruby-version`: `asdf install ruby 3.x.x`
    3. Set ruby for the project: `asdf local ruby 3.x.x`
7. Install ruby on rails framework
    1. Follow [this guide](https://guides.rubyonrails.org/getting_started.html) starting on point 3.1.

### Run the project

1. Install frontend dependencies: `npm install`
2. Install ruby dependencies:
    1. Install bundler: `gem install bundler`
    2. Install gems: `bundle install`
3. Create your databases
    1. Run `bundle exec rails db:setup`
    2. Run migrations `bundle exec rails db:migrate`
7. Start: `bin/dev`

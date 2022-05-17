# Gamifier App
An app for transforming life events into games.
choose any event in life and break it down into small tasks. Assign suitable points to each task. Each time a task is done its points get added to the game's level.\
To make life more fun playing it with friends is possible by adding friends to games. The app can connect users by friend requests and then connect users to games by adding friends to games.\
Flutter was used to build the application's frontend, with firebase for the backend.
## Main Features
* BLoC patterns and Flutter Hooks for state management.
* Firebase for handling the authentication, creating new users, searching for users, friend requests, connecting users, storing games, storing and connecting game's users levels, and more functions.
* Domain-Driven Design (DDD) design principle was used to produce clean code.
* Logic was handled inside the application layer (outside the presentation layer).
## Main Packages
* flutter_bloc & flutter_hooks for state management.
* injection, injection_generator and getIt for dependency injection.
* freezed for data classes and union cases.
* firestore for local and remote storage database.
## What is left to implement?
Value validators for different text fields.\
Remove friends from friends list and games.\
Connect google account with email.
## Install Packages
flutter pub get.\
Then run build_runner command for code generation: flutter pub run build_runner build.

* Author:M-salah-8
* if you like this please star it and follow me.
* Contact me at mohammedalmak98@gmail.com.
* currently searching for a job.

## A video about how the app works:
I recommend watching the video more than looking at the screenshots.\
 https://youtu.be/ctFBZ32yWd8

## Screenshots from the App:
* sing in\up:

![signin](https://user-images.githubusercontent.com/84665319/168915554-05d1ff2f-b3b6-4c64-b038-4d03954485d6.png)
![signup](https://user-images.githubusercontent.com/84665319/168915561-4f857cc3-7b09-4050-b53e-e09bcab4eff2.png)

* Main overview page:

![yourgamesoverveiw](https://user-images.githubusercontent.com/84665319/168915577-7ab2b280-5b9a-49e7-a3f9-f7d29a024243.png)

* Friends Games overview page:

![friendsgamesoverview](https://user-images.githubusercontent.com/84665319/168915449-234d8557-fbe7-429d-99fc-ec1246af2e0e.png)

* Game page When the player is the admin:

creating:

![create](https://user-images.githubusercontent.com/84665319/168915176-c092364f-4526-4aeb-8a6d-32070441886b.png)

playing:

![adminveiw](https://user-images.githubusercontent.com/84665319/168915140-0be66407-c477-499d-9480-9853bf132a25.png)

editing:

![edit](https://user-images.githubusercontent.com/84665319/168915243-66ee94e8-5410-4e65-be66-ef134181ed2b.png)

add or edit todo:
![addtodo](https://user-images.githubusercontent.com/84665319/168915092-a585a9d4-8731-4950-b275-717d7851c64b.png)
![edittodo](https://user-images.githubusercontent.com/84665319/168915293-90a92140-3d50-43c8-b947-d087de21ca11.png)

* Game page when the player is not the admin:

![nonadminview](https://user-images.githubusercontent.com/84665319/168915535-27779214-6281-4001-a9b6-7c44355b7270.png)

* Friends scores:

![friendsscores](https://user-images.githubusercontent.com/84665319/168915498-66db564c-de98-492f-82ac-35ec4cce9f0a.png)

* Send request:

![friendsearch](https://user-images.githubusercontent.com/84665319/168915419-860b9762-3bfb-40d4-bee6-080bfdbd1561.png)

* Friend requests:

![friendrequests](https://user-images.githubusercontent.com/84665319/168915343-4506676e-767d-4be0-b817-9654a3168c73.png)

* friends page:

![friendslist](https://user-images.githubusercontent.com/84665319/168915477-5405e3df-fdad-45bb-90a6-a3f88c69fccf.png)

* adding a friend to a game:

![addfriendtogame](https://user-images.githubusercontent.com/84665319/168915043-50b39de1-8764-48af-abc3-96fc87159fdf.png)

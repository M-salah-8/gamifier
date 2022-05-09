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
value validators for different text fields
## Install Packages
flutter pub get.\
Then run build_runner command for code generation.\
flutter pub run build_runner build.\

* Author: Mohammed Salah Ali
* if you like this please star it and follow me.
* Contact me at mohammedalmak98@gmail.com.
* currently searching for a job

## A video about how the app works:
I recommend watching the video more than looking at the screenshots.



## Screenshots from the App:
* sing in\up:

![sign in](https://user-images.githubusercontent.com/84665319/167463527-eae629b6-b6ed-491f-b916-944b17ff5918.png)
![sign up](https://user-images.githubusercontent.com/84665319/167463565-cb24c040-2738-4f79-9530-b46841ee8a7f.png)

* Main overview page:

![overview](https://user-images.githubusercontent.com/84665319/167463708-51ca7236-bbbd-4248-89d0-95c4545d0b4a.png)

* Game page When the player is the admin:

creating:

![create](https://user-images.githubusercontent.com/84665319/167463615-976ab544-eebb-4b62-ad72-be4a90002b12.png)

playing:

![playing](https://user-images.githubusercontent.com/84665319/167463748-a724bf55-1b2f-4f40-a62c-a6bfd3891eff.png)

editing:

![edit](https://user-images.githubusercontent.com/84665319/167463645-ea53ef55-9072-4370-8174-982e0dea326b.png)

* Game page when the player is not the admin:

![non admin](https://user-images.githubusercontent.com/84665319/167463681-dd34f499-f08c-4745-80e8-8c16b1b333a6.png)

* Send request:

![send request](https://user-images.githubusercontent.com/84665319/167478686-7d0e2921-3c77-4b62-a2b8-dff3a8c111a0.png)

* Friend requests:

![requests](https://user-images.githubusercontent.com/84665319/167463786-ad6f1dad-f2eb-4985-bfd1-d4c3f98c15c9.png)

* friends page:



* adding a friend to a game:

![add friend to game](https://user-images.githubusercontent.com/84665319/167463595-808430a9-fe9b-43a9-9a85-4c2cc865cb5d.png)

# Starcraft Database (working title)

This project is not (yet) meant to do anything useful. It is a project to
learn some new technologies and gain more experience with server
technologies.

## Functionality

From a functional standpoint, the product consists of a frontend, an API and
a database. The database shall store game records, which are provided by the
user. For now, the game records have a quite simple form of a tuple
(player1 (name), player2 (name), player1 (race), player2 (race), winner
(1 or 2)). This can later be extended, for example the user could upload
replays. For the initial version there will be no user authentication, for
later versions it would be required, that a user can only access his own
game records.

The user can read/write to the database from either the frontend or the
API. The frontend is only meant for better usability and it is doesn't have
direct access to the database. All read/write operations will go through the
API.

## Implementation

The application will be deployed in my private network. The server will be
hosted on my Raspberry Pi (himbeergeist), the user accesses will be done via
my laptop. As port 80 is currently already taken, I will use 8080.
The HTTP calls will be terminated by a reverse Nginx proxy. Depending on the
target it will either redirect the traffic to the frontend or the API.

For now the frontend shall be simplistic and is only meant to server static
content. The content will be served by an Nginx server, which should not be
directly accessible from other peers in the same network. The frontend may
later be extended to also server dynamic content, by making asynchronous calls
to the API.

The API backend will be implemented with Django in Python. Again, all calls
should go through the proxy, so also the backend shouldn't be directly
accessible on the network. The backend is connected to a PostgreSQL
database. There are several ways how the tables could be organized. For the
beginning the most simple structure will be used, of only having a single table
that stores all games without order. It will only an integer as the primary
key and it the backend will not check for duplicate entries.

## Notes

Obviously there are a lot of areas for improvement. The goal is to implement
a minimal set of functionality and infrastructure, so that I can learn how
to use Nginx, Django and PostgreSQL. I can later still come back and gain
deeper knowledge by implementing more advanced features. Depending on how
this goes, I might also need to invest some time into the network configuration
and security of my host.

One challenge will be the documentation of my configuration. I have not yet
decided how to do this. I could, for example, use a simple bash script,
Puppet/Ansible or an apt package. I could also only store the configuration
files in the source and do everything else manually. This is not yet meant
to be deployed on multiple machines, so documentation goes over
automatic installations and stuff like that.

## Dear readers, other than myself

As said in the introduction this is not meant to be used in any productive
way. However if you find this project interesting for whatever reason, I would
really welcome your feedback.
If you are actually playing Starcraft (Broodwar, or LotV) I would be
interested, if there are some features that you might useful in such an
application. I know there are already some websites out there, but I think
there is still some room for providing feedback and statistics to players.
Please leave a comment here, if you have any ideas.

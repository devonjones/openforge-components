# OpenForge Components

This repo contains stl files that make up tons of small components that can be used to make larger models.

* Blocks - contains stone blocks/bricks with a veriety of face textures
* Wood - contains a bunch of wood in full timber and half timber facing.  Comes in 3 sizes 100x10x10, 50x10x10 and 25x5x5.
* Stone - contains rough stones
* Bones - arm bones, leg bones and skulls, resized for 28mm

Each folder has a one or more subdirectories with render.sh files in them.  On a unix susmte (linux, OSX) you can run this so long as you have openscad installed.  What this will do is spin each stone block in 24 orientations so that you can have more apparent variety for say a wall face.  Run this script, and it will generate the reoriented objects.  You can then import them all into blender and hide them to use them to build your model.

I have not yet added a set of scripts for reorienting the wood.


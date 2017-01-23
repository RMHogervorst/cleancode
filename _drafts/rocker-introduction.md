# working with rocker (r + docker)

Last week I experimented with rocker, that is using docker to run a self contained image that contains 
linux and r. Since I use a lot of hadley Wickhams packages I use the hadleyverse version. I don't use any of the ropensci packages so this is the one for me. 


## installation
I installed docker using the docker toolbox for windows. It has a simple gui and default options are alright with me. It didn't need to install git, because I already had the latest version. 
Only annoying thing is that i didn't want it to install any shortcuts but the oracle vm virtual box DID place on my desktop, without asking.

start using the docker quickstart terminal.
a command prompt opened and it started downloading the  boot2docker ISO. 

I was first unsuccesfull. with "Error creating machine, erro in driver during machine creation: this computer doesn't have vt-x/amd-v enabled. enabling ti bios is mandatory."
I went into bios and tried to change it, but I have a acer laptop, and that just doesn't work. 
They hide all that stuff. For reasons unknown. After a restart my computer was just fine running docker. It works.

## So what is docker and what is rocker?

Docker containers are temporary instances that are usually isolated from the rest of the computing environment. A virtual machine inside your machine. Can upload entire virtual machine into amazon cloud services if you want more power. share with others. etc. 

rocker is docker with r installed on a debian system. if you use the rstudio or hadleyverse image it will become a rstudio server that you can just open with your browser. 

save a version so that reproducable. because you save a verson of r and rstudio that all work. 

## starting again

the downloaded images are still in docker.
just check 
docker images

docker run rocker/hadleyverse (but does not start server?

ctrl-c 

but that one doesn't tell you where 

docker-machine ls (shows what's running ).

192.168.99.100:2376
docker run -dp 8787:8787 rocker/hadleyverse

succes shows sha mix.


##

Then go to ip adress of your computer with 8787. 

password and name are rstudio.

docker commit
docker commit [options] container [repository[:tag]]

<https://github.com/BillMills/Rocker-tutorial>
<https://github.com/rocker-org/rocker/wiki/Using-the-RStudio-image "wiki">
<https://github.com/rocker-org/rocker/wiki/How-to-save-data>
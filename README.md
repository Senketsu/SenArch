# SenArch
Personalized Arch linux live iso build files


#### This repo is intented only as a personal backup.
If you, random person stumbling upon this repo, want to build this live iso, follow bellow steps and hopefuly it will work out.

#### DISCLAIMER
**THIS README AND SOFTWARE COMES WITH NO WARRANTY !!!**  
(there are reported cases when using this repo turned people gay)  
***USE AT OWN RISK***  

### Customize  
================================================================================  
**I want to use special configs for my ISO, not my system ones..what do ?**
* Add your customized configs into `./data/configs`  
* When building the iso, you will be prompted whether you want to overwrite any conflicting configs.  
* Choose no ('n')  
**Adding more configs from system**
* Edit `./tools/samb-configs.sh` to your hearts content.  
**Changing pre-installed packages**
* Edit `./data/template/packages.both`  
**Adding AUR packages**
* 1) build desired package
* 2) copy it into /data/AUR
* 3) cd into `/data/AUR`
* 4) `repo-add ./SenArchAUR.db ./packageName`
* 5) edit `packages.both`

*Want to cutomize it more ?*
Might as well make your own from scratch.
`https://wiki.archlinux.org/index.php/archiso`

### Build  
================================================================================  
1) Run 'build.sh' located in the main SenArch directory  
2) Let the script do it's thing  
3) ....  
4) profit ???  

### Install  
================================================================================  
I've included step-by-step installation guide in the **docs** folder.  
Hopefuly, this guide will be newbie friendly enough.
If you struggle, I've included documentation from the Arch wiki. Read it.

**Alternative:**  
I've also added two lil scripts in the 'tools' folder for easier install process.  
  'senarch-install' & 'senarch-prepare'  
**NOTE:**Those two scripts alone are not be enough to successfuly isntall the system onto disk.  
***Follow these steps:***
* 1) create your desired partitions with fdisk
* 2) mount your partitions to their respective folders in `/mnt` (refer to the guide if you unsure)
* 3) run `senarch-install.sh`
* 4) check suggested files for corrections
* 5) `umount -R /mnt && reboot`
 

### Additional Info  
================================================================================  
Live ISO su pass `SenArchSU`
Live ISO user pass `changeme`

### TODO:  
================================================================================  
TODO
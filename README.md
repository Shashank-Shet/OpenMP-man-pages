<h1>OpenMP Documentation</h1>
The repository is a consolidation of OpenMP documentation converted to TROFF format for use as man pages on systems which support the man based documentation system.

<h2> Installation Steps </h2>

1. Clone the repository using: `git clone https://github.com/Shashank-Shet/OpenMP-man-pages.git`
2. Run the `create_zip.sh` script. It should create a directory with all zipped versions of the man pages.
3. Create a folder named `man` in your home directory.
4. Within this directory create a new folder `man3`. Here 3 denotes the section which represents the type of pages being installed.
5. Copy the created zip files to the folder `man3`.
6. Setup `MANPATH` environment variable to search for pages in this directory. Open the file `.bashrc` in your home directory. It will be hidden by default, so either use the terminal, or change the default visibility settings of your file explorer. 
7. Add the line `export MANPATH=$HOME/man:$MANPATH`.
8. Open a new terminal, and run `man omp_get_wtime`. It should display the man page for the corresponding function.

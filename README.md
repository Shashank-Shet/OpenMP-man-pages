<h1>OpenMP Documentation</h1>
The repository is a consolidation of of OpenMP documentation converted to TROFF format for use as man pages on systems which support the man based documentation system.

<h2> Installation Steps </h2>

1. Clone the repository using: `git clone https://github.com/Shashank-Shet/OpenMP-man-pages.git`
2. Run the `create_zip.sh` script. It should create a directory with all zipped versions of the man pages.
3. Create a folder named man in your home directory.
4. Within this directory create a new folder man3. Here 3 denotes the section which represents the type of pages being installed.
5. Copy the created zip files to the folder man3.
6. Setup `MANPATH` environment variable to search for pages in this directory. Do this using: `export MANPATH=$HOME/man:$MANPATH`

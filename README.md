# Call c++ from go

this was just an experiment to make a cross platform build of some c++ that could be called from go. the basic gist is that you write your c++ library, make a thing c wrapper and then make a go wrapper to call into that. in go you need to very carefully set the comments at the top of the file as they determine how compilation will be carried out. to get it to work on linux and mac required mucking with the LD_LIBRARY_PATH and DYLD_LIBRARY_PATH respectively.

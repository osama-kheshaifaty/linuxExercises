#!/bin/bash

mkdir five

for dir in dir1 dir2 dir3 dir4 dir5
do
    mkdir five/$dir
    for file in file1 file2 file3 file4
    do
	num=${file:4:1}
	yes $num | head -$num > five/$dir/$file

    done

done
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        

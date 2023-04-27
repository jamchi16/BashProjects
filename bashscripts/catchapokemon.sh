#!/bin/bash

#Catcharandompokemon

seed=$((RANDOM % 1010 + 1))

Pokemon=`awk -F ','  -v pkmn="$seed" '$1==pkmn {print $2}' /workspaces/Code/testfiles/pokemonlist`

read -p "A wild $Pokemon has appeared! Would you like to try to catch it (y/n)? " catch

if [ $catch = y ]
    then 
        ball=`echo "$(( $RANDOM % 100 + 1 ))"`
        if [ $ball = 1 ]
            then
                read -p "You reach in your bag and find a Master Ball! Would you like to throw it? (y/n) " throw
                if [ $throw = y ]
                    then
                    echo "You throw the Master Ball at the $Pokemon"
                    shakes=3
                    until [ $shakes = 0 ]
                        do 
                            echo "shake"
                            shakes=$((shakes-1))
                            sleep 1
                        done
                            echo "You have caught $Pokemon!"
                elif [ $throw = n ]
                    then echo "Should've just thrown it, this script won't let you save the Master Ball so you just WASTED IT."            
                fi
            
            
        elif [ $ball -gt 1 ] && [ $ball -lt 21 ]
            then 
                read -p "You reach in your bag and find an Ultra Ball! Would you like to throw it? (y/n) " throw
                if [ $throw = y ]
                    then
                    echo "You throw the Ultra Ball at the $Pokemon"
                    catch=`echo "$(( $RANDOM % 100 + 1 ))"`
                    if [ $catch -lt 71 ]
                        then shakes=3
                             until [ $shakes = 0 ]
                                 do 
                                    echo "shake"
                                    shakes=$((shakes-1))
                                    sleep 1
                                done
                                    echo "You have caught $Pokemon!"
                    elif [ $catch -gt 70 ]
                        then shakes=2
                             until [ $shakes = 0 ]
                                do 
                                    echo "shake"
                                    shakes=$((shakes-1))
                                    sleep 1
                                done
                                    echo "$Pokemon broke free and ran away! Shoot it was so close!"
                    fi
                elif [ $throw = n ]
                    then echo "Why didn't you just throw it, the $Pokemon got away you idiot."
                fi
        elif [ $ball -gt 20 ] && [ $ball -lt 51 ]
            then 
                read -p "You reach in your bag and find an Great Ball! Would you like to throw it? (y/n) " throw
                if [ $throw = y ]
                    then
                    echo "You throw the Great Ball at the $Pokemon"
                    catch=`echo "$(( $RANDOM % 100 + 1 ))"`
                    if [ $catch -lt 51 ]
                        then shakes=3
                             until [ $shakes = 0 ]
                                 do 
                                    echo "shake"
                                    shakes=$((shakes-1))
                                    sleep 1
                                done
                                    echo "You have caught $Pokemon!"
                    elif [ $catch -gt 50 ]
                        then shakes=1
                             until [ $shakes = 0 ]
                                do 
                                    echo "shake"
                                    shakes=$((shakes-1))
                                    sleep 1
                                done
                                    echo "$Pokemon escaped and ran off!"
                    fi
                elif [ $throw = n ]
                    then echo "Way to waste a Great Ball, the $Pokemon got away."
                fi
        elif [ $ball -gt 50 ] && [ $ball -lt 101 ]
            then 
                read -p "You reach in your bag and find an Poke Ball! Would you like to throw it? (y/n) " throw
                if [ $throw = y ]
                    then
                    echo "You throw the Poke Ball at the $Pokemon"
                    catch=`echo "$(( $RANDOM % 100 + 1 ))"`
                    if [ $catch -lt 31 ]
                        then shakes=3
                             until [ $shakes = 0 ]
                                 do 
                                    echo "shake"
                                    shakes=$((shakes-1))
                                    sleep 1
                                done
                                    echo "You have caught $Pokemon!"
                    elif [ $catch -gt 30 ]
                        then  echo "$Pokemon immmediately popped out and scampered away!"
                    fi
                elif [ $throw = n ]
                    then echo "Eh, you didn't have much of a chance anyways."
                fi
        fi
elif [ $catch = n ]
    then echo "The $Pokemon looked at you with curiosity and ran off."
fi
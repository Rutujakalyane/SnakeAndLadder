echo "Welcome to Snake and Ladder simulator"

INITIAL_POSITION=0
NO_PLAY=0
SNAKE=1
LADDER=2

player=1
playerPosition=$INITIAL_POSITION

function game(){

        dieNum=$(( RANDOM % 6 + 1))
        option=$(( RANDOM % 3 ))

        case $option in
        $NO_PLAY)
                playerPosition=$(( playerPosition + 0 ))
                echo "No Play you can stays in this"
                ;;
        $SNAKE)
                playerPosition=$(( playerPosition - dieNum ))
                echo "Snake-player moves behind by $dieNum received on the die"
                ;;
        $LADDER)
                playerPosition=$(( playerPosition + dieNum ))
                echo "Ladder-player moves ahead by $dieNum received on the die"
                ;;
        esac
}
game
echo "Player Position - $playerPosition"


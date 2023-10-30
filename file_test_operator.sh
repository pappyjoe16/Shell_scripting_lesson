#! /bin/ksh

CMD1="/cmdtest1"
CMD2="/cmdtest2"
CMD="Joseph Nifemi $CMD1 $CMD2 0777 0 0 4096"
#ret=0
file_test_operator() {
    user=$1
    pass=$2

    test_argument="rad_user_input.sh"
    if [ -f "$test_argument" ]; then
        echo "found file "
        ./$test_argument "$user" "$pass"
        ret=0
    else
        echo "file not found"
        echo "$user"
        echo "$pass"
        echo "CMD1 =$3"
        echo "CMD2 =$4"
        echo "$5"
        echo "$6"
        echo "$7"
        echo "$8"
        ret=1
    fi
    return $ret
}

if ! file_test_operator ${CMD}
then
    echo "wrong_file or password"
else
    echo "file tested successfully"
fi
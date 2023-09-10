bug_name="repo"
test_file="${bug_name}/bugsinpy_run_test.sh"

nondefault=$1
if [ -z "$1" ]; then
    test_cmd=$(cat ${test_file})
else
    test_cmd=$(cat ${test_file} | sed 's/::.*//g')
fi 

docker run -it -v $(pwd)/${bug_name}:/root/repo -w /root/repo stuatlittle/fl-human-study:latest /opt/conda/envs/exprenv/bin/${test_cmd}
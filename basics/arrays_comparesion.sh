#!bin/bash
a=(3 5 8 10 6)
b=(6 5 4 12)
c=(14 7 5 7)
result=()
for i in "${a[@]}"; do
	for j in "${b[@]}"; do
		if [ "$i" -eq "$j" ]; then
			#echo "${i} ${j}"
			result+=($i)
			#echo $temp
		fi
	done
done

for x in "${c[@]}"; do
	for r in "${result[@]}"; do
		if [ "$x" -eq "$r" ]; then
			#echo "${r}"
			result+=("$r")
		fi
	done

done
echo "${result[@]}"


cls
$content = get-content "./day1.txt"
$value = [int]0
$content | foreach{$value += [int]$_ }
$value
pause

#
#part 2
#
cls
$value = [int]0
$values = @()
$done = $false
while(!$done){
    foreach($operation in $content){
        $value += [int]$operation
        if(!$values.Contains($value)){
            $values+= $value
        }else{
        $done = $true;
        break;
        }
    }
}
cls
$value
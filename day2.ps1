$lines = get-content "./day2.txt"
$twos = [int]0;
$threes = [int]0;
cls
foreach($line in $lines){
    $characters = $line[0..$line.Length]
    $hasTwo = $false;
    $hasThree = $false;
    foreach($character in $characters){
        $matches = ($characters.Where({$_ -eq $character})).Count
        if($matches -eq 2)  {$hasTwo = $true}
        if($matches -eq 3)  {$hasThree = $true}
    }
    if($hasTwo){$twos++}
    if($hasThree){$threes++}
}
cls
$twos
$threes
$twos * $threes

pause

#
# parts 2
#
cls


foreach($line in $lines)
{
    $currentLine = $line[0..$line.Length]
    foreach($_line in $lines)
    {
        $lineToCheck = $_line[0..$_line.Length]
        $answer = $()
        for($i = 0; $i -lt $currentLine.Length; $i++){
            if($currentLine[$i] -eq $lineToCheck[$i]){
                $answer += $currentLine[$i]
            }
        }
        if($answer.Length -eq 25){
            $answer
            pause
        }
    }
}




git branch --merged | ForEach {
    $branch = $_.Trim("*", " ")
    If("master" -ne $branch -and "develop" -ne $branch) {
        git branch -D $branch
    }
}

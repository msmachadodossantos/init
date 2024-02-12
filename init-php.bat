@ECHO OFF

IF NOT EXIST .github (MKDIR .github)
IF NOT EXIST .vscode (MKDIR .vscode)

@REM See: https://www.nikolaposa.in.rs/blog/2017/01/16/on-structuring-php-projects/

IF NOT EXIST bin MKDIR bin

IF NOT EXIST config MKDIR config

@REM GitHub's default folder for documentation
IF NOT EXIST docs (MKDIR docs)

IF NOT EXIST public MKDIR public
    IF NOT EXIST public\assets MKDIR public\assets
    IF NOT EXIST public\vendors MKDIR public\vendors

    @REM IF NOT EXIST public\400.php (TYPE NUL > "public\400.php")
    @REM IF NOT EXIST public\401.php (TYPE NUL > "public\401.php")
    @REM IF NOT EXIST public\402.php (TYPE NUL > "public\402.php")
    @REM IF NOT EXIST public\403.php (TYPE NUL > "public\403.php")
    @REM IF NOT EXIST public\404.php (TYPE NUL > "public\404.php")
    @REM IF NOT EXIST public\405.php (TYPE NUL > "public\405.php")
    @REM IF NOT EXIST public\406.php (TYPE NUL > "public\406.php")
    @REM IF NOT EXIST public\407.php (TYPE NUL > "public\407.php")
    @REM IF NOT EXIST public\408.php (TYPE NUL > "public\408.php")
    @REM IF NOT EXIST public\409.php (TYPE NUL > "public\409.php")
    @REM IF NOT EXIST public\410.php (TYPE NUL > "public\410.php")
    @REM IF NOT EXIST public\411.php (TYPE NUL > "public\411.php")
    @REM IF NOT EXIST public\412.php (TYPE NUL > "public\412.php")
    @REM IF NOT EXIST public\413.php (TYPE NUL > "public\413.php")
    @REM IF NOT EXIST public\414.php (TYPE NUL > "public\414.php")
    @REM IF NOT EXIST public\415.php (TYPE NUL > "public\415.php")
    @REM IF NOT EXIST public\416.php (TYPE NUL > "public\416.php")
    @REM IF NOT EXIST public\417.php (TYPE NUL > "public\417.php")
    @REM IF NOT EXIST public\418.php (TYPE NUL > "public\418.php")
    @REM IF NOT EXIST public\421.php (TYPE NUL > "public\421.php")
    @REM IF NOT EXIST public\422.php (TYPE NUL > "public\422.php")
    @REM IF NOT EXIST public\423.php (TYPE NUL > "public\423.php")
    @REM IF NOT EXIST public\424.php (TYPE NUL > "public\424.php")
    @REM IF NOT EXIST public\425.php (TYPE NUL > "public\425.php")
    @REM IF NOT EXIST public\426.php (TYPE NUL > "public\426.php")
    @REM IF NOT EXIST public\428.php (TYPE NUL > "public\428.php")
    @REM IF NOT EXIST public\429.php (TYPE NUL > "public\429.php")
    @REM IF NOT EXIST public\431.php (TYPE NUL > "public\431.php")
    @REM IF NOT EXIST public\451.php (TYPE NUL > "public\451.php")
    @REM IF NOT EXIST public\500.php (TYPE NUL > "public\500.php")
    @REM IF NOT EXIST public\501.php (TYPE NUL > "public\501.php")
    @REM IF NOT EXIST public\502.php (TYPE NUL > "public\502.php")
    @REM IF NOT EXIST public\503.php (TYPE NUL > "public\503.php")
    @REM IF NOT EXIST public\504.php (TYPE NUL > "public\504.php")
    @REM IF NOT EXIST public\505.php (TYPE NUL > "public\505.php")
    @REM IF NOT EXIST public\506.php (TYPE NUL > "public\506.php")
    @REM IF NOT EXIST public\507.php (TYPE NUL > "public\507.php")
    @REM IF NOT EXIST public\508.php (TYPE NUL > "public\508.php")
    @REM IF NOT EXIST public\510.php (TYPE NUL > "public\510.php")
    @REM IF NOT EXIST public\511.php (TYPE NUL > "public\511.php")
    
    @REM IF NOT EXIST public\index.php (TYPE NUL > "public\index.php")
    @REM IF NOT EXIST public\manifest.json (TYPE NUL > "public\manifest.json")
    @REM IF NOT EXIST public\robots.txt (TYPE NUL > "public\robots.txt")
    @REM IF NOT EXIST public\sitemap.xml (TYPE NUL > "public\sitemap.xml")

IF NOT EXIST resources MKDIR resources
    IF NOT EXIST resources\assets MKDIR resources\assets
    IF NOT EXIST resources\assets\core MKDIR resources\assets\core
        IF NOT EXIST resources\assets\core\images MKDIR resources\assets\core\images
        IF NOT EXIST resources\assets\core\scripts MKDIR resources\assets\core\scripts
            IF NOT EXIST resources\assets\core\scripts\core.ts (TYPE NUL > resources\assets\core\scripts\core.ts)
        IF NOT EXIST resources\assets\core\styles MKDIR resources\assets\core\styles
            IF NOT EXIST resources\assets\core\styles\core.scss (TYPE NUL > resources\assets\core\styles\core.scss)
    IF NOT EXIST resources\vendors MKDIR resources\vendors
        IF NOT EXIST resources\vendors\msmachadodossantos MKDIR resources\vendors\msmachadodossantos
            IF NOT EXIST resources\vendors\msmachadodossantos\chroma-rio MKDIR resources\vendors\msmachadodossantos\chroma-rio
                IF NOT EXIST resources\vendors\msmachadodossantos\chroma-rio\1.1.1 MKDIR resources\vendors\msmachadodossantos\chroma-rio\1.1.1
        IF NOT EXIST resources\vendors\twbs MKDIR resources\vendors\twbs
            IF NOT EXIST resources\vendors\twbs\bootstrap MKDIR resources\vendors\twbs\bootstrap
            IF NOT EXIST resources\vendors\twbs\icons MKDIR resources\vendors\twbs\icons

IF NOT EXIST src MKDIR src
    IF NOT EXIST src\Domain MKDIR src\Domain

IF NOT EXIST swe MKDIR swe

IF NOT EXIST templates MKDIR templates
    IF NOT EXIST templates\errors MKDIR templates\errors
    IF NOT EXIST templates\layouts MKDIR templates\layouts
    IF NOT EXIST templates\pages MKDIR templates\pages
    IF NOT EXIST templates\partials MKDIR templates\partials

IF NOT EXIST tests MKDIR tests

IF NOT EXIST vendor MKDIR vendor
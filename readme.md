# GitHub for Government

*A proof of concept microsite showcasing how GitHub can make government more awesomer*

## Requirements

* Jekyll (ruby)
* Grunt (node, npm)

## Setup

1. `Git clone [URL to Repo]`
2. `cd [path to repo]`
3. `bundle install`
4. `npm install`
5. `jekyll`
6. `open http://localhost:4000`

## Compiling

The site uses CoffeeScript, JST, and Stylus pre-processors. To compile, simply run `grunt`. 

Available tasks:

```
        concat  Concatenate files. *                                           
        coffee  Compile CoffeeScript files into JavaScript *                   
        uglify  Minify files with UglifyJS. *                                  
         watch  Run predefined tasks whenever watched files change.            
        cssmin  Minify CSS files with clean-css. *                             
         clean  Clean files and folders. *                                     
    coffeelint  Validate files with CoffeeLint *                               
        jekyll  This triggers the `jekyll` command. *                          
      imagemin  Minify PNG and JPEG images *                                   
       csslint  Lint CSS files with csslint *                                  
        stylus  Compile Stylus files into CSS *                                
           jst  Compile underscore templates to JST file *                     
            cs  Alias for "coffeelint", "concat", "coffee" tasks.              
       default  Alias for "cs", "jst", "stylus", "uglify", "cssmin", "clean"   
                tasks.        
```
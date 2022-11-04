function sudo --description "Replacement for Bash 'sudo !!' command to run last command using sudo."
    if test "$argv" = !!
    eval command sudo $history[1]
else
    command sudo $argv
    end
end

function bide
    argparse 'f/files=' 'c/command=' -- $argv
    clear;
    echo "Waiting on $_flag_f";
    while inotifywait $_flag_f;
        clear;
        echo "Running $_flag_c";
        eval $_flag_c;
        echo "Waiting on $_flag_f";
    end
end

function load
    set path "$__fish_config_dir/config.fish"
    echo "Sourcing $path"
    source $path
end

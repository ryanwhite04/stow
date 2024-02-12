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
function fish_prompt
	test $SSH_TTY
    and printf (set_color red)$USER(set_color brwhite)'@'(set_color yellow)(prompt_hostname)' '
    test "$USER" = 'root'
    and echo (set_color red)"#"

    set yellow (set_color yellow)
    set __fish_git_prompt_color_branch yellow

    # Main
    echo -n (set_color cyan)(prompt_pwd)(set_color yellow)(__fish_git_prompt) (set_color red)'❯❯ '
end

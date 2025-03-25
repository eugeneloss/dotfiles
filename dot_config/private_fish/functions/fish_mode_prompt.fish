function fish_mode_prompt
        switch $fish_bind_mode
            case default
                echo "[NORMAL] "
            case insert
                echo "[INSERT] "
            case replace_one
                echo "[REPLACE] "
            case visual
                echo "[VISUAL] "
        end
    end


# options that should be mostly pretty agreeable

# no c-s/c-q output freezing
setopt noflowcontrol
# allow expansion in prompts
setopt prompt_subst
# this is default, but set for share_history
setopt append_history
# save each command's beginning timestamp and the duration to the history file
setopt extended_history
# display PID when suspending processes as well
setopt longlistjobs
# try to avoid the 'zsh: no matches found...'
setopt nonomatch
# report the status of backgrounds jobs immediately
setopt notify
# whenever a command completion is attempted, make sure the entire command path
# is hashed first.
setopt hash_list_all
# not just at the end
setopt completeinword
# use zsh style word splitting
setopt noshwordsplit
# allow use of comments in interactive code
setopt interactivecomments

if [[ -z "$ZSH_SANEOPT_INSANITY" ]]; then
    ZSH_SANEOPT_INSANITY=1
fi

if [[ "$ZSH_SANEOPT_INSANITY" -gt 0 ]]; then
    # in order to use #, ~ and ^ for filename generation grep word
    # *~(*.gz|*.bz|*.bz2|*.zip|*.Z) -> searches for word not in compressed files
    # don't forget to quote '^', '~' and '#'!
    setopt extended_glob
    
    # don't error out when unset parameters are used
    setopt unset
fi

###########
# These are some more options that might warrant being on higher insanity levels,
# but since I don't use them... I'll leave them out for now

# watch for everyone but me and root
#watch=(notme root)
# automatically remove duplicates from these arrays
#typeset -U path cdpath fpath manpath

# import new commands from the history file also in other zsh-session
#setopt share_history
# If a new command line being added to the history list duplicates an older
# one, the older command is removed from the list
#setopt histignorealldups
# remove command lines from the history list when the first character on the
# line is a space
#setopt histignorespace
# if a command is issued that can't be executed as a normal command, and the
# command is the name of a directory, perform the cd command to that directory.
#setopt auto_cd


# Don't send SIGHUP to background processes when the shell exits.
#setopt nohup
# make cd push the old directory onto the directory stack.
#setopt auto_pushd
# avoid "beep"ing
#setopt nobeep
# don't push the same dir twice.
#setopt pushd_ignore_dups
# * shouldn't match dotfiles. ever.
#setopt noglobdots


# These are used to help catch potential errors and issues during runtime
# Strict is for variable naming
use strict;
# Warnings is for runtime warnings
use warnings;

# Imports feature subroutine & says
use feature 'signatures';
use feature 'say';

# For Debugging
use Data::Dumper;

# This loads in the data from main
require './main.pl';

# Progams jumps to main to start
main();

sub start{

    # Retrieve the argument passed to the subroutine 
    our ($user_name) = @_; 

    say $user_name . " see inside Array or Hash?";
    say "    1 for Array, 
    2 for Hash 
    3 for Exit";
    # STDIN stores user input 
    my $user_input = <STDIN>;
    # Remove the newline character at the end
    chomp($user_input);

    # Now, you can use $user_input to process the user's choice
    if ($user_input == 1) 
    {
        # Clears the screen 
        system("cls");
        arrays();
    } 
    elsif ($user_input == 2) 
    {
        # Clears the screen 
        system("cls");
        hash();
    }
    elsif($user_input == 3 )
    {
        exit 0;
    } 
    else 
    {
        say "Invalid choice.";
        say"Lets try this again";
        start();
    }
}

sub arrays{

    # Temporary to show that we are inside the function
    say "You chose Array";
    say "What would you like to do?";
    say "    1 to view Array 
    ...
    3 for Exit"; 
    
    my $user_input = <STDIN>;

    # Clears the screen 
    system("cls");

    
    # An Array with data   #<-- Might need "$" for deref
    my @ array = [
        1,
        "hello",
        10.2,
    ];

    if($user_input == 1 )
    {
        say @array;
    }
    elsif($user_input == 2 )
    {
        ## 
    }

    elsif($user_input == 3 )
    {
        exit 0;
    } 
    else 
    {
        say "Invalid choice.";
        say"Lets try this again";
        start();
    }

    ## Add some logic here..
    
}

sub hash{

    # Temporary to show that we are inside the function
    say "You chose Hash";
    say "What would you like to do?";
    say "    1 to view Hash
    ...
    3 for Exit"; 

    my $user_input = <STDIN>;

    # Clears the screen 
    system("cls");

    # A Hash
    my %hash = (
        a => 1,
        b => 200,
        c => "Daily",
        C => "Caps",
    );

    if($user_input == 1 )
    {
        say %hash;
    }
    elsif($user_input == 2 )
    {
        ## 
    }

    elsif($user_input == 3 )
    {
        exit 0;
    } 
    else 
    {
        say "Invalid choice.";
        say"Lets try this again";
        start();
    }
    ## Add some logic here..
    
}
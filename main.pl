# Main Function, which perl doesn't need

# Imports feature says
use feature 'say';

sub main{
    # scaler $name is holding string Daily
    my $name = "Daily";

    say "Welcome to my First Perl Program!";
    say "My name is " . $name; # Add user input logic here soon
    print "Press any key to continue ";

    # STDIN stores user input 
    my $user_input = <STDIN>;

    # Clears the screen 
    system("cls");

    say "When ever your ready lets start the program!";
    print "Press any key to continue ";

    # STDIN stores user input 
    my $user_input = <STDIN>;

    if($user_input == 3)
    {
        exit 0;
    }

    # Clears the screen 
    system("cls");

    say "What is your name?";
    # STDIN stores user input 
    our $user_name = <STDIN>;

    chomp($user_name);

    # Yout must use eq(equal)here as ""=="" won't work
    if($user_name eq "")
    {
        system("cls");
        say "You must enter a name!";
        say "Lets try again!";
        main();
    }
    else
    {
    # Clears the screen 
    system("cls");

    # Sends user input to start subroutine
    start($user_name);

    }

}

# This is needed
main();
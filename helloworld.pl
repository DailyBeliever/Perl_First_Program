# These are used to help catch potential errors and issues during runtime
# Strict is for variable naming
use strict;
# Warnings is for runtime warnings
use warnings;

# Imports feature subroutine 
use feature 'signatures';

# For Debugging
use Data::Dumper;

# Main Function, which perl doesn't need
sub main{
    # scaler $name is holding string Daily
    my $name = "Daily";

    print "Welcome to my First Perl Program! \n";
    print "My name is " . $name . "\n"; # Add user input logic here soon

    print "When ever your ready lets start the program!\n";
    print "Press any key to continue ";

    # STDIN stores user input 
    my $user_input = <STDIN>;

    # Clears the screen 
    system("cls");

    print "What is your name? \n";
    # STDIN stores user input 
    my $user_name = <STDIN>;

    chomp($user_name);

    # Sends user input to start subroutine
    start($user_name);

}

sub start{

    # Retrieve the argument passed to the subroutine 
    my ($user_name) = @_; 

    print $user_name . " see inside Array or Hash?\n";
    print "1 for Array | 2 for Hash | 3 for Exit \n";
    # STDIN stores user input 
    my $user_input = <STDIN>;
    # Remove the newline character at the end
    chomp($user_input);

    # Now, you can use $user_input to process the user's choice
    if ($user_input == 1) 
    {
        hash();
    } 
    elsif ($user_input == 2) 
    {
        arrays();
    }
    elsif($user_input == 3 )
    {
        exit 0;
    } 
    else 
    {
        print "Invalid choice.\n";
        print "Lets try this again\n";
        start();
    }
}

sub arrays{

    # Temporary to show that we are inside the function
    print "You chose Array.\n";
    print "What would you like to do?";

    # An Array with data
    my @array = (
        1,
        "hello",
        10.2,
    );

    ## Add some logic here..
    
}

sub hash{

    # Temporary to show that we are inside the function
    print "You chose Hash.\n";
    print "What would you like to do?";

    # A Hash
    my %hash = (
        a => 1,
        b => 200,
        c => "Daily",
        C => "Caps",
    );

    ## Add some logic here..
    
}

# Progams jumps to main to start
main();
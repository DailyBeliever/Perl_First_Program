# Main Function, which perl doesn't need
sub main{
    # scaler $name is holding string Daily
    my $name = "Daily";

    print "Welcome to my First Perl Program! \n";
    print "My name is " . $name . "\n"; # Add user input logic here soon
    print "Press any key to continue ";

    # STDIN stores user input 
    my $user_input = <STDIN>;

    # Clears the screen 
    system("cls");

    print "When ever your ready lets start the program!\n";
    print "Press any key to continue ";

    # STDIN stores user input 
    my $user_input = <STDIN>;

    # Clears the screen 
    system("cls");

    print "What is your name? \n";
    # STDIN stores user input 
    our $user_name = <STDIN>;

    chomp($user_name);

    # Clears the screen 
    system("cls");

    # Sends user input to start subroutine
    start($user_name);

}

main();
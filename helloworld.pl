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

    say $user_name . ", what would you like to do?";
    say " \t 1 For Array, 
    \t 2 For Hash 
    \t 3 For Perl Version
    \t 4 For Path and ENV
    \t 5 to Exit";
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
    elsif ($user_input == 3) 
    {
        # Clears the screen 
        system("cls");
        say @INC;
        say \%ENV;
        print "Press any key to continue ";
        my $user_input = <STDIN>;
        # Clears the screen 
        system("cls");

        # Repass the user_name
        start($user_name);
    }
    elsif ($user_input == 4) 
    {
        # Clears the screen 
        system("cls");
        say $];
        print "Press any key to continue ";
        my $user_input = <STDIN>;
        # Clears the screen 
        system("cls");

        # Repass the user_name
        start($user_name);
    }
    elsif($user_input == 5)
    {
        exit 0;
    } 
    else 
    {
        say "Invalid choice.";
        say"Lets try this again";
        start($user_name);
    }
}

sub arrays{

    # Temporary to show that we are inside the function
    say "You chose Array";
    say "What would you like to do?";
    say "\t 1 To view Array 
    \t 2 To add to database
    \t 3 To add to array log
    \t 4 Exit"; 
    
    my $user_input = <STDIN>;

    # Clears the screen 
    system("cls");

    # An Array with data   #<-- Might need "$" for deref
    my @array = (1 , " hello ", 10.2,);

    if($user_input == 1 )
    {
        say "Current Array: ";
        say join(", ", @array);
    }
    elsif($user_input == 2 )
    {
        say "What do you want to add to database?";
        # This variable is holding user input
        my $user_choice = <STDIN>;

        push(@array, $user_choice);

        # Adds to array database
        say join(", ", @array);

        # Remove newline character
        chomp($user_choice);

        say "Array Updated!";
        say "What else did you want to do?";
        say "\t 1 To add to Array;
        \t 2 to Exit"; 

        my $user_input = <STDIN>;

        if($user_input == 1)
        {

        say "What do you want to add to database?";
        # This variable is holding user input
        my $user_choice = <STDIN>;

        push(@array, $user_choice);

        # Adds to array database
        say join(", ", @array);

        # Remove newline character
        chomp($user_choice);

        say "Array Updated!";
        say "What else did you want to do?";

        }
        if($user_input == 2)
        {
            say "This will remove the inputs to the array, ok?";
            say "Press any key to continue"    ;    
            my $userinput = <STDIN>;

            arrays();
        }

    }
    elsif ($user_input == 3) {
        print "Please enter the content you want to add to the file: ";
        my $user_content = <STDIN>;
        chomp($user_content);  # Remove newline character from the end of the input

        # Open the file for appending | rd is a var
        open(my $rd, '>>', 'array_log.txt') or die "Could not open file 'array_log.txt' $!";

        # Write the user input to the file | rd is a var
        print $rd "$user_content\n";

        # Close the file handle
        close($rd);

        say "Content added to array_log.txt.\n";

        # Go back to arrays
        arrays();

    }
    elsif($user_input == 4 )
    {
        exit 0;
    } 
    else 
    {
        say "Invalid choice.";
        say"Lets try this again";
        arrays();
    }

}

sub hash{

    # Temporary to show that we are inside the function
    say "You chose Hash";
    say "What would you like to do?";
    say "\t 1 To view Hash
    \t 2 To add to database
    \t 3 To add to hash log
    \t 4 Exit"; 

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
        
    }
    elsif ($user_input == 3) {
        print "Please enter the content you want to add to the file: ";
        my $user_content = <STDIN>;
        chomp($user_content);  # Remove newline character from the end of the input

        # Open the file for appending | rd is a var
        open(my $rd, '>>', 'array_log.txt') or die "Could not open file 'array_log.txt' $!";

        # Write the user input to the file | rd is a var
        print $rd "$user_content\n";

        # Close the file handle
        close($rd);

        say "Content added to hash_log.txt.\n";

        # Go back to arrays
        hash();

    }
    elsif($user_input == 4 )
    {
        exit 0;
    } 
    else 
    {
        say "Invalid choice.";
        say"Lets try this again";
        hash();
    }
    
}
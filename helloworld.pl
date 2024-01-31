# These are used to help catch potential errors and issues during runtime
# Strict is for variable naming
use strict;
# Warnings is for runtime warnings
use warnings;


# For Debugging
use Data::Dumper;

# An Array with data
my @array = (
    1,
    "hello",
    10.2,
);

# A Hash
my %hash = (
    a => 1,
    b => 200,
    c => "Daily",
    C => "Caps",
);

# scaler $name is holding string Daily
my $name = "Daily";

print "Welcome to my First Perl Program! \n";
print "My name is " . $name . "\n";

print "When ever your ready lets start the program!\n";
print "Press any key to continue ";

# STDIN stores user input 
my $user_input = <STDIN>;
# Remove the newline character at the end
chomp($user_input);

print "Would you like to see inside the Array or Hash?";
print "1 for Array | 2 for Hash" . "\n";
# STDIN stores user input 
my $user_input = <STDIN>;
# Remove the newline character at the end
chomp($user_input);

# Now, you can use $user_input to process the user's choice
if ($user_input == 1) {
    print "You chose Array.\n";
    # Add your Array logic here
} elsif ($user_input == 2) {
    print "You chose Hash.\n";
    # Add your Hash logic here
} else {
    print "Invalid choice.\n";
}
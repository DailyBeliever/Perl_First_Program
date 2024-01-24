# These are used to help catch potential errors and issues during runtime
# Strict is for variable naming
use strict;
# Warnings is for runtime warnings
use warnings;


# For Debugging
use Data::Dumper;

my @array = ();

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


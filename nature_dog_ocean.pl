#!/usr/bin/perl 

use strict;
use warnings;

# This script is to demonstrate ways in which technology can be used to 
# bring hope to healthcare.

# Connect healthcare providers to patients

# Connect patients with specialists

my $db_host = "localhost";
my $db_user = "dbuser";
my $db_pass = "password";
 
# Connect to the database
my $dbh = DBI->connect("DBI:mysql:database=healthcare;host=$db_host", $db_user, $db_pass) 
    or die "Unable to connect to database: $DBI::errstr\n";
 
# Execute a query to get patients
my $query = "SELECT * FROM patients;";
my $sth = $dbh->prepare($query);
$sth->execute();

# Loop through the results and store patient information in a hash
my %patients;
while(my @row = $sth->fetchrow_array) {
    $patients{$row[0]} = [ @row[1 .. $#row] ];
}
 
# Execute another query to get specialists
$query = "SELECT * FROM specialists;";
$sth = $dbh->prepare($query);
$sth->execute();

# Loop through the results and store specialist information in a hash
my %specialists;
while(my @row = $sth->fetchrow_array) {
    $specialists{$row[0]} = [ @row[1 .. $#row] ];
}

# Now that we have the data, we can loop through the patients and find
# the specialist that is the best match for each patient.
foreach my $patient_id (keys %patients) {
    my $best_match = find_best_match($patient_id, %specialists);
    if($best_match) {
        print "Patient $patient_id should see specialist $best_match\n";
    }
}

# Close the database connection
$dbh->disconnect;
 
# Subroutine to find the best match for a patient
sub find_best_match {
    my($patient_id, %specialists) = @_;
 
    # Get the patient information
    my $patient_info = $patients{$patient_id};
    # Loop through each specialist and find the best match
    my $best_match;
    my $best_score = 0;
    foreach my $specialist_id (keys %specialists) {
        my $specialist_info = $specialists{$specialist_id};
        # Calculate the score for this specialist
        my $score = calculate_score($patient_info, $specialist_info);
        if($score > $best_score) {
            $best_score = $score;
            $best_match = $specialist_id;
        }
    }
    return $best_match;
}
 
# Subroutine to calculate the score for a patient/specialist match
sub calculate_score {
    my($patient_info, $specialist_info) = @_;
    # First, calculate the score based on gender
    my $score = 0;
    if($patient_info->[1] eq $specialist_info->[1]) {
        $score += 10;
    }
    # Next, calculate the score based on age
    if($patient_info->[2] > $specialist_info->[2]) {
        $score += ($patient_info->[2] - $specialist_info->[2]) * 2;
    }
    # Finally, calculate the score based on location
    if($patient_info->[3] eq $specialist_info->[3]) {
        $score += 5;
    }
    return $score;
}
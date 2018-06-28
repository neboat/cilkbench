#!/usr/bin/perl -w
#
# Reads the output of series of test runs from stdin and prints the
# mean of the running time for each application to stdout:
#
#   $ cat results.out | ./rt-ave.pl > rt-ave.out

$verbose = 0;
sub compResult {
    my ($count, @runtime) = @_;

    my $i;
    my $cur_rt;
    my $ave;
    my $dev;
    my $dev_sq;
    my $st_dev;
    my ($total, my $dev_sq_sum) = (0, 0);
    
    if($verbose) {
        print "Runtime \t Deviation^2 \n";
    }

    for($i = 0; $i < $count; $i++) {
        $cur_rt = $runtime[$i];
        $total = $total + $cur_rt;
    }
    $ave = $total / $count;
    
    for($i = 0; $i < $count; $i++) {
        $dev = $ave - $runtime[$i];
        $dev_sq = $dev * $dev;
        if($verbose) {
            printf "%d %.3f \t %.3f\n", $i, $runtime[$i], $dev_sq;
        }
        $dev_sq_sum += $dev_sq;
    }
    $st_dev = $dev_sq_sum / ($count - 1);
    
    return ($ave, $st_dev);
}

$n = 0;
$app = "";
$cpu = "";
$throttle = "";
$ncomp = "";

printf "Program        # of proc   throttle      Average      Std dev.\n";

while (my $line = <STDIN>) {
    if ($line =~ /START\: [sudo ]*taskset -c (\d+[\-\d|\,\d]*\d*) \s*[\.\/\w+\.\w+]*\s*(.*?)\s+.*/) {
        if ($n > 0) {
            my ($ave, $st_dev) = compResult($n, @runtime);
            printf "%-15s %7s %7s \t%7.3f (std dev. %.3f, %.2f%%)\n", 
                    $app, $cpu, $throttle, $ave, $st_dev, 100.0*$st_dev/$ave;
            if ($ncomp > 0) {
                my ($ave, $st_dev) = compResult($ncomp, @comp_time);
                printf "%-15s %7s %7s \t%7.3f (std dev. %.3f, %.2f%%)\n", 
                       "", $cpu, $throttle, $ave, $st_dev, 100.0*$st_dev/$ave;
            }
            $cpu = "";
            $throttle = "";
        } 

        $#runtime = 0;  # reset array size
        $#comp_time = 0;  # reset array size
        $cpu = $1;
        $app = $2;
        $n = 0;
        $ncomp = 0;
    }
    elsif ($line =~ /START\: [sudo ]*\s*[\.\/\w+\.\w+]*\s*[\.\/]*(.*?)\s+.*/) {
        if ($n > 0) {
            my ($ave, $st_dev) = compResult($n, @runtime);
            printf "%-15s %7s %7s \t%7.3f (std dev. %.3f, %.2f%%)\n", 
                   $app, $cpu, $throttle, $ave, $st_dev, 100.0*$st_dev/$ave;
            if ($ncomp > 0) {
                my ($ave, $st_dev) = compResult($ncomp, @comp_time);
                printf "%-15s %7s %7s \t%7.3f (std dev. %.3f, %.2f%%)\n", 
                       "", $cpu, $throttle, $ave, $st_dev, 100.0*$st_dev/$ave;
            }
            $cpu = "";
            $throttle = "";
        }

        $#runtime = 0;  # reset array size
        $#comp_time = 0;  # reset array size
        $app = $1;
        $n = 0;
        $ncomp = 0;
    }
    elsif ($app ne "" && $line =~ /Processing time = .*?(\d*\.?\d*)\s*[seconds]?/) {
        $runtime[$n] = $1;
        $n++;
    }
    elsif ($app ne "" && $line =~ /Actual Compress time = .*?(\d*\.?\d*)\s*[seconds]?/) {
        $comp_time[$n] = $1;
        $ncomp++;
    }
    if ($line =~ /[\/\w+]*[\-]{2}nproc\s+(\d+)/) {
        $cpu = $1;
    }
    if ($line =~ /[\/\w+]*[\-]q\s+(\d+)/) {
        $throttle = $1;
    }
}

if ($n > 0) {
    my ($ave, $st_dev) = compResult($n, @runtime);
    printf "%-15s %7s %7s \t%7.3f (std dev. %.3f, %.2f%%)\n", 
           $app, $cpu, $throttle, $ave, $st_dev, 100.0*$st_dev/$ave;
    if ($ncomp > 0) {
        my ($ave, $st_dev) = compResult($ncomp, @comp_time);
        printf "%-15s %7s %7s \t%7.3f (std dev. %.3f, %.2f%%)\n", 
               "", $cpu, $throttle, $ave, $st_dev, 100.0*$st_dev/$ave;
    }
    $cpu = ""
}

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
while (my $line = <STDIN>) {
    if ($line =~ /START\: taskset -c (\d+[\-\d|\,\d]*)\s*\.\/run.sh (.*?) .*? .*? (\d+)/) {
        if ($n > 0) {
            my ($ave, $st_dev) = compResult($n, @runtime);
            if($proc ne "") { $proc = "[".$proc." (".$cpu.")]"; }
            else { $proc = "[(".$cpu.")]"; }
            printf "%-15s %-15s \t %7.3f (std dev. %3.3f, %3.3f%%)\n", 
                    $app, $proc, $ave, $st_dev, 100.0*($st_dev/$ave);
        } 
        $#runtime = 0;  # reset array size
        $n = 0;
        $cpu = $1;
        $app = $2;
        $proc = $3;
    } elsif ($line =~ /START\: [sudo ]*\s*\.\/run.sh (.*?) .*? .*? (\d+)/) {
        if ($n > 0) {
            my ($ave, $st_dev) = compResult($n, @runtime);
            if($proc ne "") { $proc = "[".$proc." (".$cpu.")]"; }
            else { $proc = "[(".$cpu.")]"; }
            # if($proc ne "") { $proc = "[".$proc."]"; }
            # else { $proc = "[]"; }
            printf "%-15s %-15s \t %7.3f (std dev. %3.3f, %3.3f%%)\n", 
                    $app, $proc, $ave, $st_dev, (100.0*($st_dev/$ave));
        } 
        $#runtime = 0;  # reset array size
        $n = 0;
        $app = $1;
        $proc = $2;
    }

    if ($app ne "" && $line =~ /QUERY TIME:\s*(\d*\.?\d*)\.?/) {
        $runtime[$n] = $1;
        $n++;
    }
}

if ($n > 0) {
    my ($ave, $st_dev) = compResult($n, @runtime);
    if($proc ne "") { $proc = "[".$proc." (".$cpu.")]"; }
    else { $proc = "[(".$cpu.")]"; }
    # $proc = "[".$proc."]";
    printf "%-15s %-15s \t %7.3f (std dev. %3.3f, %3.3f%%)\n", 
           $app, $proc, $ave, $st_dev, 100.0*($st_dev/$ave);
}

my $dim_magenta      = "\e[38;5;146m";
my $reset_color      = "\e[0m";
my $bold             = "\e[1m";
		my $remain       = bleach_text($5);
		print "@ $last_file_seen:$start_line \@${bold}${dim_magenta}${remain}\n";

sub bleach_text {
	my $str = shift();
	$str    =~ s/\e\[\d*(;\d+)*m//mg;

	return $str;
}
#!/usr/bin/env perl6
multi sub MAIN (｢set-package.json-version-from-github-ref｣) {
	use JSON::Pretty;
	my $file = ｢package.json｣;
	my $manifest = from-json(slurp $file);
	$_ = %*ENV<GITHUB_REF>;
	my $version = m{refs｢/｣tags｢/｣v(\d+｢.｣\d+｢.｣\d+)}[0];
	die "got a bad version from $_" unless $version;
	$manifest<version> = $version.Str;
	spurt $file, to-json($manifest) ~ "\n";
}

multi sub MAIN (｢pass｣) {
	exit 0;
}

multi sub MAIN (｢neut｣) {
	exit 78;
}

multi sub MAIN (｢fail｣) {
	exit 1;
}

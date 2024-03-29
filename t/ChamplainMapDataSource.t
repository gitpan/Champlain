#!/usr/bin/perl

use strict;
use warnings;

use Test::More;
use Clutter;
use Champlain;

exit tests();

sub tests {

	if (! Champlain::HAS_MEMPHIS) {
		plan skip_all => "No support for memphis";
		return 0;
	}
	plan tests => 2;

	Clutter->init();

	my $map_source = Champlain::NetworkMapDataSource->new();
	isa_ok($map_source, 'Champlain::MapDataSource');

	$map_source = Champlain::LocalMapDataSource->new();
	isa_ok($map_source, 'Champlain::MapDataSource');

	return 0;
}

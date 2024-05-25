#!/usr/bin/perl

use strict;
use warnings;

use Test::More;
use FindBin;
use Scalar::Util qw/blessed/;
use Pango::Cairo;

chdir $FindBin::Bin;

require_ok ("Pango::Cairo");

done_testing();
exit;

use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Spreadsheet::DataFromExcel',
    license             => 'perl',
    dist_author         => q|'Zoffix <'zoffix@cpan.org'>|,
    dist_version_from   => 'lib/Spreadsheet/DataFromExcel.pm',
    build_requires => {
        'Test::More' => 0,
    },
    build_recommends => {
        'App::ZofCMS::Test::Plugin' => '0.0104',
    },
    requires => {
        'Spreadsheet::ParseExcel' => 0.49,
    },
    add_to_cleanup      => [ 'Spreadsheet-DataFromExcel-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();

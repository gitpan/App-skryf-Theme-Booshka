
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Skryf base theme",
  "AUTHOR" => "Adam Stokes <adamjs\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "App-skryf-Theme-Booshka",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "App::skryf::Theme::Booshka",
  "PREREQ_PM" => {
    "File::Basename" => 0,
    "File::Spec::Functions" => 0,
    "Mojo::Base" => 0
  },
  "TEST_REQUIRES" => {
    "Test::More" => 0,
    "strict" => 0
  },
  "VERSION" => "0.001_01",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "File::Basename" => 0,
  "File::Spec::Functions" => 0,
  "Mojo::Base" => 0,
  "Test::More" => 0,
  "strict" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);




requires "File::Basename" => "0";
requires "File::Spec::Functions" => "0";
requires "Mojo::Base" => "0";

on 'test' => sub {
  requires "Test::More" => "0";
  requires "strict" => "0";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "6.30";
};

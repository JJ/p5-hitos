package My::Hitos;
use Mojo::Base 'Mojolicious', -signatures;

use lib qw(lib);

use My::Hitos::Config qw($hitos %config);

sub startup( $self ) {

  # set variables
  $self->log->path( "$config{'log_dir'}/$config{'file_name'}" );
  $self->log->level( $config{'log_level'} );

  my $routes = $self->routes;
  $routes->get( '/status' => sub ($c) {
    $c->render( json => { status => 'OK' } );
  });

  $routes->get( '/all' => sub ($c) {
    $c->render( json => $hitos );
  });
}

"Rock'n'roll";

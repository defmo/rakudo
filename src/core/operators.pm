our multi infix:<~~>($topic, $matcher) {
    $matcher.ACCEPTS($topic)
}

our multi sub infix:<+>($a, $b) {
    pir::box__PN(pir::add__NNN($a, $b))
}

our multi sub infix:<->($a, $b) {
    pir::box__PN(pir::sub__NNN($a, $b))
}

our multi sub infix:<*>($a, $b) {
    pir::box__PN(pir::mul__NNN($a, $b))
}

our multi sub infix:</>($a, $b) {
    pir::box__PN(pir::div__NNN($a, $b))
}

our multi sub infix:<%>($a, $b) {
    pir::box__PN(pir::mod__NNN($a, $b))
}

our multi sub infix:<**>($a, $b) {
    pir::box__PN(pir::pow__NNN($a, $b))
}

our multi prefix:<not>($x) { !$x }

our multi prefix:<true>($x) { ?$x }

our sub undefine($x is ref) {
    my $undefined;
    $x = $undefined;
}

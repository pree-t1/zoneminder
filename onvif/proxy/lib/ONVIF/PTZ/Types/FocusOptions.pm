package ONVIF::PTZ::Types::FocusOptions;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %AutoFocusModes_of :ATTR(:get<AutoFocusModes>);
my %DefaultSpeed_of :ATTR(:get<DefaultSpeed>);
my %NearLimit_of :ATTR(:get<NearLimit>);
my %FarLimit_of :ATTR(:get<FarLimit>);

__PACKAGE__->_factory(
    [ qw(        AutoFocusModes
        DefaultSpeed
        NearLimit
        FarLimit

    ) ],
    {
        'AutoFocusModes' => \%AutoFocusModes_of,
        'DefaultSpeed' => \%DefaultSpeed_of,
        'NearLimit' => \%NearLimit_of,
        'FarLimit' => \%FarLimit_of,
    },
    {
        'AutoFocusModes' => 'ONVIF::PTZ::Types::AutoFocusMode',
        'DefaultSpeed' => 'ONVIF::PTZ::Types::FloatRange',
        'NearLimit' => 'ONVIF::PTZ::Types::FloatRange',
        'FarLimit' => 'ONVIF::PTZ::Types::FloatRange',
    },
    {

        'AutoFocusModes' => 'AutoFocusModes',
        'DefaultSpeed' => 'DefaultSpeed',
        'NearLimit' => 'NearLimit',
        'FarLimit' => 'FarLimit',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::PTZ::Types::FocusOptions

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
FocusOptions from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * AutoFocusModes


=item * DefaultSpeed


=item * NearLimit


=item * FarLimit




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::PTZ::Types::FocusOptions
   AutoFocusModes => $some_value, # AutoFocusMode
   DefaultSpeed =>  { # ONVIF::PTZ::Types::FloatRange
     Min =>  $some_value, # float
     Max =>  $some_value, # float
   },
   NearLimit =>  { # ONVIF::PTZ::Types::FloatRange
     Min =>  $some_value, # float
     Max =>  $some_value, # float
   },
   FarLimit =>  { # ONVIF::PTZ::Types::FloatRange
     Min =>  $some_value, # float
     Max =>  $some_value, # float
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut


#!/bin/bash

FC=`nf-config --fc`
NCINC=`nf-config --fflags`
NCLIB=`nf-config --flibs`


cat > conftest.f90 <<_EOF
program main
  use ISO_C_BINDING
  use netcdf
  print *, nf90_inq_libvers()
  call exit(0)
end program
_EOF

# test compilation and run program
$FC -o conftest $NCINC $NCLIB conftest.f90 && ./conftest
success=$?

# clean up
rm -f conftest conftest.f90

exit $success
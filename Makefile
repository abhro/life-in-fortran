.SUFFIXES:
FC = gfortran

MOD_SOURCES = mod_*.f90
SOURCES = *.f90

all: $(subst .f90,.o,$(SOURCES))
	$(FC) -o $@ $+


.PHONY: clean
clean:
	rm -f *.o *.mod core

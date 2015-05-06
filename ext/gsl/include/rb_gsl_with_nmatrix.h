#ifndef RB_GSL_WITH_NMATRIX_H
#define RB_GSL_WITH_NMATRIX_H

#include <gsl/gsl_vector.h>

#ifdef HAVE_NMATRIX_H

#include "nmatrix.h"

#define NM_IsVector(nmatrix) \
  ((rb_obj_is_kind_of(nmatrix, cNMatrix) == Qtrue) && \
   (rb_funcall(nmatrix, rb_intern("vector?"), 0, NULL) == Qtrue))

// in array.c
gsl_vector* make_cvector_from_nmatrix(VALUE);
void cvector_set_from_nmatrix(gsl_vector*, VALUE);
void carray_set_from_nmatrix(double*, VALUE);

// in gsl_nmatrix.c
VALUE rb_gsl_nm_to_gsl_vector_view_method(VALUE nm);
VALUE rb_gsl_nm_to_gsl_matrix(VALUE obj, VALUE nm);
gsl_vector_view* nm_to_gv_view(VALUE nm);
gsl_matrix_view* nm_to_gm_view(VALUE nm);

gsl_vector_int_view* nm_to_gv_int_view(VALUE nm);
gsl_matrix_int_view* nm_to_gm_int_view(VALUE nm);
gsl_vector* nm_to_gv(VALUE nm);
gsl_vector_int* nm_to_gv_int(VALUE nm);
gsl_matrix* nm_to_gm(VALUE nm);
gsl_matrix_int* nm_to_gm_int(VALUE nm);
extern VALUE cNMatrix;
extern VALUE nm_eDataTypeError, nm_eStorageTypeError;

gsl_vector_complex* nm_to_gv_complex(VALUE nm);
gsl_vector_complex_view* nm_to_gv_complex_view(VALUE nm);

#endif // HAVE_NMATRIX_H
#endif // RB_GSL_WITH_NMATRIX_H
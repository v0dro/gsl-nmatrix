require 'test_helper'

class NmatrixGslTest < GSL::TestCase

  def setup
    @gsl_vector = GSL::Vector.alloc(2.354, 4.443, 6.776)
    @nm_vector  = NMatrix.new([3], [2.354, 4.443, 6.776])

    @gsl_int_vector = GSL::Vector::Int[1,2,3,4,5]
    @nm_int_vector  = NMatrix.new([5], [1,2,3,4,5], dtype: :int32)

    @gsl_complex_vector = GSL::Vector::Complex.alloc([[1,0], [2,0], [3,0]])
    @nm_complex_vector  = NMatrix.new([3], [1,2,3], dtype: :complex128)

    @gsl_matrix = GSL::Matrix.alloc(
      [1,2,3],
      [4,5,6],
      [7,8,9]
    )
    @nm_matrix  = NMatrix.new([3,3], [1,2,3,4,5,6,7,8,9], dtype: :float64)

    @gsl_int_matrix = GSL::Matrix::Int.alloc(
      [1,2,3],
      [4,5,6],
      [7,8,9] 
    )
    @nm_int_matrix = NMatrix.new([3,3], [1,2,3,4,5,6,7,8,9], dtype: :int32)
  end
  # GSL to NMatrix
  def test_gsl_vector_to_nmatrix
    assert_equal @nm_vector, @gsl_vector.to_nm, 'gsl_vector.to_nm == nm_vector. Single dimension vector.'
  end

  def test_gsl_vector_int_to_nmatrix
    assert_equal @nm_int_vector, @gsl_int_vector.to_nm
  end

  def test_gsl_vector_complex_to_nmatrix
    assert_equal @nm_complex_vector, @gsl_complex_vector.to_nm
  end

  def test_gsl_matrix_to_nmatrix
    assert_equal @nm_matrix, @gsl_matrix.to_nm, 'gsl_matrix.to_nm == nm_matrix. 2D matrix.'
  end

  # NMatrix to GSL::Vector
  def test_nmatrix_to_gsl_vector
    assert_equal @gsl_vector, @nm_vector.to_gslv
    assert_equal @gsl_vector, GSL::Vector.nm_to_gslv(@nm_vector)
  end

  def test_nmatrix_int_to_gsl_vector
    assert_equal @gsl_int_vector, @nm_int_vector.to_gslv
  end

  def test_nmatrix_complex_to_gsl_vector
    assert_equal @gsl_complex_vector, @nm_complex_vector.to_gslv
  end

  # NMatrix to GSL::Vector view functions
  def test_nmatrix_to_gsl_vector_view
    # TODO  see gsl_nmatrix.c
  end

  def test_nmatrix_to_gsl_vector_int_view
    # TODO  see gsl_nmatrix.c
  end

  def test_nmatrix_to_gsl_vector_complex_view
    # TODO  see gsl_nmatrix.c
  end

  # NMatrix to GSL::Matrix
  def test_nmatrix_to_gsl_matrix
    # TODO
  end

  def test_nmatrix_int_to_gsl_matrix
  # TODO
  end

  # NMatrix to GSL::Matrix view functions
  def test_nmatrix_to_gsl_matrix_view
    # TODO  see gsl_nmatrix.c
  end

  def test_nmatrix_to_gsl_matrix_int_view
    # TODO  see gsl_nmatrix.c
  end
end
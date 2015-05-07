require 'test_helper'

class MatrixTest < GSL::TestCase

  def test_ispos_neg
    m = GSL::Matrix::Int.alloc([0, 1, 2, 3, 4, 5, 6, 7, 8, 9], 3, 3)
    assert_equal 0,     m.ispos
    assert_equal false, m.ispos?
    assert_equal 0,     m.isneg
    assert_equal false, m.isneg?

    m += 1
    assert_equal 1,     m.ispos
    assert_equal true,  m.ispos?
    assert_equal 0,     m.isneg
    assert_equal false, m.isneg?

    m -= 100
    assert_equal 0,     m.ispos
    assert_equal false, m.ispos?
    assert_equal 1,     m.isneg
    assert_equal true,  m.isneg?
  end

  def test_isnonneg
    m = GSL::Matrix::Int.alloc([0, 1, 2, 3, 4, 5, 6, 7, 8, 9], 3, 3)
    assert_equal 1,     m.isnonneg
    assert_equal true,  m.isnonneg?
    assert_equal 0,     m.isneg
    assert_equal false, m.isneg?

    m -= 100
    assert_equal 0,     m.isnonneg
    assert_equal false, m.isnonneg?
    assert_equal 1,     m.isneg
    assert_equal true,  m.isneg?

    m += 200
    assert_equal 1,     m.isnonneg
    assert_equal true,  m.isnonneg?
    assert_equal 1,     m.ispos
    assert_equal true,  m.ispos?
  end

  def test_eye
    z = GSL::Complex[1, 0]
    m = GSL::Matrix::Complex.eye(2, z)

    assert_equal z, m[0, 0]
    assert_equal GSL::Complex[0, 0], m[0, 1]
    assert_equal GSL::Complex[0, 0], m[1, 0]
    assert_equal z, m[1, 1]
  end

  def test_set_row
    z0 = GSL::Complex[1, 0]
    z1 = GSL::Complex[2, 0]

    m = GSL::Matrix::Complex[2, 2]
    m.set_row(0, z0, z1)

    assert_equal z0, m[0, 0]
    assert_equal z1, m[0, 1]
  end

  def test_set_col
    z0 = GSL::Complex[1, 0]
    z1 = GSL::Complex[2, 0]

    m = GSL::Matrix::Complex[2, 2]
    m.set_col(0, z0, z1)

    assert_equal z0, m[0, 0]
    assert_equal z1, m[1, 0]
  end
  
  def test_coerce
    { 1 => m0 = GSL::Matrix.ones(1), 2 => GSL::Matrix[[2]] }.each { |a, b|
      [a, a.to_f].each { |c| assert_equal([b, m0], m0.coerce(c)) } }

    m1 = GSL::Matrix::Int.ones(1); [1, 2].each { |a|
      [a, a.to_f].each { |c| assert_equal([c, m0], m1.coerce(c)) } }

    { 1 => m2 = GSL::Complex[1, 0], 2 => GSL::Complex[2, 0] }.each { |a, b|
      [a, a.to_f].each { |c| assert_equal([b, m2], m2.coerce(c)) } }
  end

  def test_mul
    { 1 => m0 = GSL::Matrix.ones(1), 2 => GSL::Matrix[[2]] }.each { |a, b|
      [a, a.to_f].each { |c| assert_equal(b, m0 * c); assert_equal(b, c * m0) } }
  
    { 1 => m1 = GSL::Matrix::Int.ones(1), 2 => GSL::Matrix::Int[[2]] }.each { |a, b|
      assert_equal(b, m1 * a); [a, a.to_f].each { |c| assert_equal(b, c * m1) } }
  
    assert_equal GSL::Matrix[[0.2]], m0 * 0.2
    assert_equal GSL::Matrix[[0.2]], 0.2 * m0
    assert_equal GSL::Matrix::Int[[0]], 0.2 * m1
  end
end

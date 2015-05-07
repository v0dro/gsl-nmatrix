# -*- encoding: utf-8 -*-
# stub: gsl-nmatrix 1.16.0.4 ruby lib
# stub: ext/gsl/extconf.rb

Gem::Specification.new do |s|
  s.name = "gsl-nmatrix"
  s.version = "1.16.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Yoshiki Tsunesada", "David MacMahon", "Jens Wille"]
  s.date = "2014-12-19"
  s.description = "Ruby/GSL is a Ruby interface to the GNU Scientific Library, for numerical computing with Ruby [Ruby 2.x, GSL 1.16 and NMatrix compatible fork]"
  s.email = "jens.wille@gmail.com"
  s.extensions = ["ext/gsl/extconf.rb"]
  s.extra_rdoc_files = ["rdoc/sf.rdoc", "rdoc/alf.rdoc", "rdoc/dht.rdoc", "rdoc/fft.rdoc", "rdoc/fit.rdoc", "rdoc/min.rdoc", "rdoc/ref.rdoc", "rdoc/rng.rdoc", "rdoc/sum.rdoc", "rdoc/tut.rdoc", "rdoc/use.rdoc", "rdoc/blas.rdoc", "rdoc/cheb.rdoc", "rdoc/diff.rdoc", "rdoc/hist.rdoc", "rdoc/math.rdoc", "rdoc/perm.rdoc", "rdoc/poly.rdoc", "rdoc/qrng.rdoc", "rdoc/sort.rdoc", "rdoc/combi.rdoc", "rdoc/const.rdoc", "rdoc/eigen.rdoc", "rdoc/graph.rdoc", "rdoc/index.rdoc", "rdoc/intro.rdoc", "rdoc/monte.rdoc", "rdoc/odeiv.rdoc", "rdoc/roots.rdoc", "rdoc/siman.rdoc", "rdoc/start.rdoc", "rdoc/stats.rdoc", "rdoc/hist2d.rdoc", "rdoc/hist3d.rdoc", "rdoc/interp.rdoc", "rdoc/linalg.rdoc", "rdoc/matrix.rdoc", "rdoc/narray.rdoc", "rdoc/ntuple.rdoc", "rdoc/tensor.rdoc", "rdoc/vector.rdoc", "rdoc/bspline.rdoc", "rdoc/changes.rdoc", "rdoc/complex.rdoc", "rdoc/randist.rdoc", "rdoc/wavelet.rdoc", "rdoc/function.rdoc", "rdoc/multimin.rdoc", "rdoc/ndlinear.rdoc", "rdoc/ehandling.rdoc", "rdoc/multiroot.rdoc", "rdoc/integration.rdoc", "rdoc/nonlinearfit.rdoc", "rdoc/linalg_complex.rdoc", "rdoc/vector_complex.rdoc", "rdoc/cholesky_complex.rdoc"]
  s.files = `git ls-files`.split("\n")
  s.homepage = "http://github.com/v0dro/gsl-nmatrix"
  s.licenses = ["GPL-2.0"]
  s.rdoc_options = ["--title", "Ruby/GSL (v1.16.0.4)", "--charset", "UTF-8", "--line-numbers", "--all", "--main", "index.rdoc", "--root", "rdoc"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.requirements = ["GSL (http://www.gnu.org/software/gsl/)"]
  s.rubygems_version = "2.4.5"
  s.summary = "Ruby interface to the GNU Scientific Library (NMatrix fork)"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nmatrix>, [">= 0.1.0"])
      s.add_development_dependency(%q<hen>, [">= 0.8.1", "~> 0.8"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rake-compiler>, [">= 0"])
      s.add_development_dependency(%q<test-unit>, [">= 0"])
    else
      s.add_dependency(%q<nmatrix>, [">= 0.1.0"])
      s.add_dependency(%q<hen>, [">= 0.8.1", "~> 0.8"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rake-compiler>, [">= 0"])
      s.add_dependency(%q<test-unit>, [">= 0"])
    end
  else
    s.add_dependency(%q<nmatrix>, [">= 0.1.0"])
    s.add_dependency(%q<hen>, [">= 0.8.1", "~> 0.8"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rake-compiler>, [">= 0"])
    s.add_dependency(%q<test-unit>, [">= 0"])
  end
end

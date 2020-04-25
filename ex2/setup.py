from distutils.core import setup, Extension

setup(name = 'fibonach',
      version = '0.1',
      description = 'Fibonach function from C.',
      ext_modules = [Extension('fibonach', sources = ['fibonach.c'])]
)
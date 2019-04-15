# -*- coding: utf-8 -*-

from setuptools import setup, find_packages


with open('README.md') as f:
    readme = f.read()

with open('LICENSE') as f:
    license = f.read()

setup(
    name='<NAME>',
    version='0.1.0',
    description=' '.join([
        'Updates the AMI used for an AutoScaling Group in',
        'Amazon, using Systems Manager.'
    ]),
    long_description=readme,
    author='<Author>',
    author_email='<EMAIL>',
    url=''.join([
        '<REPO'
                 ]),
    license=license,
    packages=find_packages(exclude=('tests', 'docs'))
)

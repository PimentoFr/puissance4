from setuptools import find_packages, setup

setup(
    name='puissance4_ws2812',
    packages=find_packages(include=['puissance4_ws2812', 'rpi_ws281x']),
    version='0.1.0',
    description='This is a gameengine of Connect 4 controlled by a Twitch Chat on a custom LED board',
    author='PimentoFr',
    license='MIT',
    install_requires=['rpi_ws281x'],
    setup_requires=['pytest-runner'],
    tests_require=['pytest==6.2.2'],
    test_suite='tests',
)
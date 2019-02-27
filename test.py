from colorama import init
from colorama import Fore, Back, Style
from termcolor import colored

# use Colorama to make Termcolor work on Windows too
init()

# then use Termcolor for all colored text output
print(colored('Hello, World!', 'green', 'on_red'))

print(Fore.CYAN + 'some red text')
print( + 'and with a green background')
print(Style.DIM + 'and in dim text')
print(Style.RESET_ALL)
print('back to normal now')

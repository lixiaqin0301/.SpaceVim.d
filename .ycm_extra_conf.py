'''
This file is NOT licensed under the GPLv3, which is the license for the rest of YouCompleteMe.
'''

import os
import ycm_core

FLAGS = [
    '-Wall',
    '-Wextra',
    '-Werror',
    '-std=gnu11',
    '-D_GNU_SOURCE',
    '-x',
    'c',
    '-I',
    '.',
    '-isystem',
    '/usr/lib/gcc/x86_64-redhat-linux/7/include',
    '-isystem',
    '/usr/lib/gcc/x86_64-redhat-linux/4.8.2/include',
    '-isystem',
    '/usr/lib/gcc/x86_64-redhat-linux/4.4.4/include',
    '-isystem',
    '/usr/lib/gcc/x86_64-redhat-linux/4.1.1/include',
    '-isystem',
    '/usr/local/include',
    '-isystem',
    '/usr/include',
]

COMPILATION_DATABASE_FOLDER = ''

if os.path.exists(COMPILATION_DATABASE_FOLDER):
    DATABASE = ycm_core.CompilationDatabase(COMPILATION_DATABASE_FOLDER)
else:
    DATABASE = None

SOURCE_EXTENSIONS = ['.cpp', '.cxx', '.cc', '.c', '.m', '.mm']

def directory_of_this_script():
    '''directory of this script'''
    return os.path.dirname(os.path.abspath(__file__))


def is_header_file(filename):
    '''is header file'''
    extension = os.path.splitext(filename)[1]
    return extension in ['.h', '.hxx', '.hpp', '.hh']


def get_compilation_info_for_file(filename):
    '''get compilation info for file'''
    if is_header_file(filename):
        basename = os.path.splitext(filename)[0]
        for extension in SOURCE_EXTENSIONS:
            replacement_file = basename + extension
            if os.path.exists(replacement_file):
                compilation_info = DATABASE.get_compilation_info_for_file(replacement_file)
                if compilation_info.compiler_flags_:
                    return compilation_info
        return None
    return DATABASE.get_compilation_info_for_file(filename)


def FlagsForFile(filename, **kwargs):
    '''flags for file'''
    if not DATABASE:
        return {
            'flags': FLAGS,
            'include_paths_relative_to_dir': directory_of_this_script()
        }

    compilation_info = get_compilation_info_for_file(filename)
    if not compilation_info:
        return None

    final_flags = list(compilation_info.compiler_flags_)

    try:
        final_flags.remove('-stdlib=libc++')
    except ValueError:
        pass

    return {
        'FLAGS': final_flags,
        'include_paths_relative_to_dir': compilation_info.compiler_working_dir_
    }

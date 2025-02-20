#!/usr/bin/env python3
import os
from subprocess import call
from contextlib import contextmanager
import shutil


PLUGINS = [
    {
        'directory': 'colors_solarized',
        'repo': 'git@github.com:altercation/vim-colors-solarized.git',
        'commit': '528a59f26d12278698bb946f8fb82a63711eec21',
    },
    {
        'directory': 'commentary',
        'repo': 'git@github.com:tpope/vim-commentary.git',
        'commit': '9c685131a5facfa0d643feca3a61b41c007d8170',
    },
    {
        'directory': 'ctrlp',
        'repo': 'git@github.com:kien/ctrlp.vim.git',
        'commit': 'b5d3fe66a58a13d2ff8b6391f4387608496a030f',
    },
    {
        'directory': 'dart',
        'repo': 'git@github.com:dart-lang/dart-vim-plugin.git',
        'commit': '8404686b55685664fbc9912ef4bb34d8d29478fe',
    },
    {
        'directory': 'elm',
        'repo': 'git@github.com:lambdatoast/elm.vim.git',
        'commit': '04df290781f8a8a9a800e568262e0f2a077f503e',
    },
    {
        'directory': 'emmet',
        'repo': 'git@github.com:mattn/emmet-vim.git',
        'commit': '920904c53b1b426f83a4ad9729e004ac19675f50',
    },
    {
        'directory': 'exchange',
        'repo': 'git@github.com:tommcdo/vim-exchange.git',
        'commit': '9373a8471cd968e5e4605c3487f80c9364d412b2',
    },
    {
        'directory': 'gnupg',
        'repo': 'git@github.com:jamessan/vim-gnupg.git',
        'commit': '40cec4652cbd4f6d2d55fa8ae77db5598386da97',
    },
    {
        'directory': 'indent_object',
        'repo': 'git@github.com:michaeljsmith/vim-indent-object.git',
        'commit': '78fffa609b3e6b84ef01ee4c9aba6d7435d7b18e',
    },
    {
        'directory': 'line_object',
        'repo': 'git@github.com:kana/vim-textobj-line.git',
        'commit': '0a78169a33c7ea7718b9fa0fad63c11c04727291',
    },
    {
        'directory': 'nerdtree',
        'repo': 'git@github.com:scrooloose/nerdtree.git',
        'commit': '4f1e6ecb057fc0bac189171c1430d71ef25f6bb1',
    },
    {
        'directory': 'puppet_syntax',
        'repo': 'git@github.com:puppetlabs/puppet-syntax-vim.git',
        'commit': 'f36cf6936bf8667d6b86f84e1b81673e80e1f704',
    },
    {
        'directory': 'repeat',
        'repo': 'git@github.com:tpope/vim-repeat.git',
        'commit': '2a3c5f8e3c26a57b8eb4cfc4be79615a1c508ef6',
    },
    {
        'directory': 'rust',
        'repo': 'git@github.com:rust-lang/rust.vim.git',
        'commit': '115d321d383eb96d438466c56cc871fcc1bd0faa',
    },
    {
        'directory': 'salt',
        'repo': 'git@github.com:saltstack/salt-vim.git',
        'commit': '5b15d379fbcbb84f82c6a345abc08cea9d374be9',
    },
    {
        'directory': 'sneak',
        'repo': 'git@github.com:justinmk/vim-sneak.git',
        'commit': '1734d847d008caca16609cf128ff8ea6372c6b25',
    },
    {
        'directory': 'surround',
        'repo': 'git@github.com:tpope/vim-surround.git',
        'commit': 'fa433e0b7330753688f715f3be5d10dc480f20e5',
    },
    {
        'directory': 'taboo',
        'repo': 'git@github.com:gcmt/taboo.vim.git',
        'commit': '918aa0804e3e95e38df205716cdea266818f485f',
    },
    {
        'directory': 'titlecase',
        'repo': 'git@github.com:christoomey/vim-titlecase.git',
        'commit': 'a730d6f240c97a22a18c96767c39a89a744e662f',
    },
    {
        'directory': 'user_object',
        'repo': 'git@github.com:kana/vim-textobj-user.git',
        'commit': 'a3054162c09bcf732624f43ddacbd85dad09713b',
    },
]


@contextmanager
def cd(path):
    old_dir = os.getcwd()
    os.chdir(path)
    try:
        yield
    finally:
        os.chdir(old_dir)


def clone_plugin(plugin):
    call(['git', 'clone', plugin['repo'], plugin['directory']])
    with cd(plugin['directory']):
        call(['git', 'reset', '--hard', plugin['commit']])
        shutil.rmtree('.git')


def main():
    for plugin in PLUGINS:
        shutil.rmtree(plugin['directory'], ignore_errors=True)
        clone_plugin(plugin)


main()

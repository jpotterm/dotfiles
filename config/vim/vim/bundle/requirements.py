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
        'directory': 'easy_motion',
        'repo': 'git@github.com:Lokaltog/vim-easymotion.git',
        'commit': '0349345042a1750a10f1bbbc7061c43fe76e36fd',
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
        'directory': 'ultisnips',
        'repo': 'git@github.com:SirVer/ultisnips.git',
        'commit': 'f95ce290bc6394d25cd51d0db2e197cd14d6d07b',
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

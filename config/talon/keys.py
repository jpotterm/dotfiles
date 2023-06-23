from talon import Context, Module, actions, app

mod = Module()
ctx = Context()

mod.list('key', desc='Keys')
ctx.lists['user.key'] = {
    'air': 'a',
    'bat': 'b',
    'cap': 'c',
    'drum': 'd',
    'each': 'e',
    'fine': 'f',
    'gust': 'g',
    'harp': 'h',
    'sit': 'i',
    'jury': 'j',
    'crunch': 'k',
    'look': 'l',
    'made': 'm',
    'near': 'n',
    'odd': 'o',
    'pit': 'p',
    'quench': 'q',
    'red': 'r',
    'sun': 's',
    'trap': 't',
    'urge': 'u',
    'vest': 'v',
    'whale': 'w',
    'plex': 'x',
    'yank': 'y',
    'zip': 'z',

    'zero': '0',
    'one': '1',
    'two': '2',
    'three': '3',
    'four': '4',
    'five': '5',
    'six': '6',
    'seven': '7',
    'eight': '8',
    'nine': '9',

    'comma': ',',
    'semicolon': ';',
    'colon': ':',
    'at sign': '@',
    'dot': '.',
    'quote': "'",
    'question': '?',
    'square': '[',
    'close square': ']',
    'slash': '/',
    'backslash': '\\',
    'minus': '-',
    'equals': '=',
    'plus': '+',
    'grave': '`',
    'tilde': '~',
    'bang': '!',
    'down score': '_',
    'paren': '(',
    'close paren': ')',
    'brace': '{',
    'close brace': '}',
    'angle': '<',
    'close angle': '>',
    'star': '*',
    'hash': '#',
    'percent': '%',
    'caret': '^',
    'amper': '&',
    'pipe': '|',
    'dub quote': '"',
    'dollar': '$',

    'end': 'end',
    'enter': 'enter',
    'escape': 'escape',
    'home': 'home',
    'pagedown': 'pagedown',
    'pageup': 'pageup',
    'space': 'space',
    'tab': 'tab',
    'backspace': 'backspace',
    'delete': 'delete',
    'down': 'down',
    'left': 'left',
    'right': 'right',
    'up': 'up',
}

mod.list('modifier', desc='Modifiers')
ctx.lists['user.modifier'] = {
    'alt': 'alt',
    'control': 'ctrl',
    'shift': 'shift',
    'command': 'cmd',
}

mod.list('times', desc='Times')
ctx.lists['user.times'] = {
    'two': '2',
    'three': '3',
    'four': '4',
    'five': '5',
    'six': '6',
    'seven': '7',
    'eight': '8',
    'nine': '9',
    'ten': '10',
    'eleven': '11',
    'twelve': '12',
    'thirteen': '13',
    'fourteen': '14',
    'fifteen': '15',
    'sixteen': '16',
    'seventeen': '17',
    'eighteen': '18',
    'nineteen': '19',
    'twenty': '20',
    'twenty one': '21',
    'twenty two': '22',
    'twenty three': '23',
    'twenty four': '24',
    'twenty five': '25',
    'twenty six': '26',
    'twenty seven': '27',
    'twenty eight': '28',
    'twenty nine': '29',
    'thirty': '30',
    'thirty one': '31',
    'thirty two': '32',
    'thirty three': '33',
    'thirty four': '34',
    'thirty five': '35',
    'thirty six': '36',
    'thirty seven': '37',
    'thirty eight': '38',
    'thirty nine': '39',
    'forty': '40',
    'forty one': '41',
    'forty two': '42',
    'forty three': '43',
    'forty four': '44',
    'forty five': '45',
    'forty six': '46',
    'forty seven': '47',
    'forty eight': '48',
    'forty nine': '49',
    'fifty': '50',
    'fifty one': '51',
    'fifty two': '52',
    'fifty three': '53',
    'fifty four': '54',
    'fifty five': '55',
    'fifty six': '56',
    'fifty seven': '57',
    'fifty eight': '58',
    'fifty nine': '59',
}

@mod.action_class
class Actions:
    def join_dashes(xs: list[str]) -> str:
        '''Join with dashes'''
        return '-'.join(xs)

    def title_case(s: str) -> str:
        '''Title case'''
        return s.capitalize()

    def upper_case(s: str) -> str:
        '''Upper case'''
        return s.upper()

    def parse_int(s: str) -> int:
        '''Upper case'''
        return int(s)

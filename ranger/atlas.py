# Author:  Nick Platt <platt.nicholas@gmail.com>
# License: MIT <http://opensource.org/licenses/MIT>

from ranger.gui.color import *
from ranger.colorschemes.solarized import Solarized

class Atlas(Solarized):
    def use(self, context):
        fg, bg, attr = Solarized.use(self, context)

        progress_bar_color = white

        if context.in_browser:
            if context.selected:
                fg = 234
                bg = 253
                attr = reverse | bold

        if context.in_titlebar:
            if context.hostname:
                fg = context.bad and red or white

        return fg, bg, attr

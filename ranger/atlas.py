# Author:  Nick Platt <platt.nicholas@gmail.com>
# License: MIT <http://opensource.org/licenses/MIT>

from ranger.gui.color import *
from ranger.colorschemes.default import Default

class Atlas(Default):
    def use(self, context):
        fg, bg, attr = Default.use(self, context)

        progress_bar_color = white

        if context.in_browser:
            if context.selected:
                fg = blue
                bg = white
                attr = reverse | bold

        if context.in_titlebar:
            if context.hostname:
                fg = context.bad and red or white

        return fg, bg, attr

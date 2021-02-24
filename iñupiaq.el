;;; iñupiaq.el --- iñupiaq-postfix input method
;;
;; Copyright © 2015, 2021, Patrick M. Niedzielski.
;;
;; Filename:    iñupiaq.el
;; Description: Iñupiaq input method with postfix modifiers
;; Author:      Patrick M. Niedzielski <patrick@pniedzielski.net>
;; Created:     2021-02-21
;; Version:     1.0
;; URL:         https://github.com/pniedzielski/iñupiaq.el/
;; Keywords:    i18n
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;; Iñupiaq input method with postfix modifiers. This package supports the
;; North Slope and Northwest Arctic alphabet, the Seward Peninsula, and
;; the Canadian Iñupiaq alphabet.
;;
;; The following key sequences are recognized (as well as lowercase
;; versions):
;;
;;   - G. -> Ġ
;;   - L. -> Ḷ
;;   - L/ -> Ł
;;   - L./ -> Ł̣
;;   - L/. -> Ł̣
;;   - N~ -> Ñ
;;   - N, -> Ŋ
;;   - R^ -> R̂
;;
;; Doubling the postfix separates the letter and postfix: e.g. g.. ->
;; g.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

(require 'quail)
(quail-define-package
 "iñupiaq-postfix" "Latin-1" "IÑ<" t
 "Iñupiaq input method with postfix modifiers

G. -> Ġ
L. -> Ḷ
L/ -> Ł
L./ -> Ł̣
L/. -> Ł̣
N~ -> Ñ
N, -> Ŋ
R^ -> R̂

Doubling the postfix separates the letter and postfix: e.g. g.. ->
g.
" nil t nil nil nil nil nil nil nil nil t)

(quail-define-rules
 ("G."  ?Ġ)
 ("g."  ?ġ)
 ("L."  ?Ḷ)
 ("l."  ?ḷ)
 ("L/"  ?Ł)
 ("l/"  ?ł)
 ("L./" ["Ł̣"])
 ("L/." ["Ł̣"])
 ("l./" ["ł̣"])
 ("l/." ["ł̣"])
 ("N~"  ?Ñ)
 ("n~"  ?ñ)
 ("N,"  ?Ŋ)
 ("n,"  ?ŋ)
 ("R^"  ["R̂"])
 ("r^"  ["r̂"])

 ("G.."  ["G."])
 ("g.."  ["g."])
 ("L.."  ["L."])
 ("l.."  ["l."])
 ("L//"  ["L/"])
 ("l//"  ["l/"])
 ("L.//" ["Ḷ/"])
 ("L/.." ["Ł."])
 ("l.//" ["ḷ/"])
 ("l/.." ["ł."])
 ("N~~"  ["N~"])
 ("n~~"  ["n~"])
 ("N,,"  ["N,"])
 ("n,,"  ["n,"])
 ("R^^"  ["R^"])
 ("r^^"  ["r^"]))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; iñupiaq.el ends here

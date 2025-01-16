;;; rustdoc-dark-theme.el --- A color theme used by rustdoc for Emacs.

;; Copyright (C) 2013-2025 Errelin Noel
;; Copyright (C) 2009-2025 rust-lang/docs.rs

;; Author: Errlin Noel <leon.errelin@outlook.com>
;; URL: https://github.com/rust-lang/docs.rs/tree/master/templates/style
;; Version: 0.1

;; Permission is hereby granted, free of charge, to any person
;; obtaining a copy of this software and associated documentation
;; files (the "Software"), to deal in the Software without
;; restriction, including without limitation the rights to use, copy,
;; modify, merge, publish, distribute, sublicense, and/or sell copies
;; of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:

;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
;; BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
;; ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
;; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

;;; Commentary:
;;
;; Adapted from colors used in rust docs.


(deftheme rustdoc-dark
  "Rust Dark color theme for Emacs"
  :background-mode 'dark
  :kind 'color-shceme
  :family 'rust-doc)

;; Colors
(let ((text-background "#353535")
      (syntax-foreground "#dddddd")
      (syntax-attribute "#ee6868")
      (syntax-background "#2a2a2a")
      (syntax-bool "#ee6868")
      (syntax-comment "#8d8d8b")
      (syntax-doc-comment "#8ca375")
      (syntax-keyword1 "#ab8ac1")
      (syntax-keyword2 "#769acb")
      (syntax-lifetime "#d97f26")
      (syntax-macro "#3e999f")
      (syntax-number "#83a300")
      (syntax-prelude-ty "#769acb")
      (syntax-prelude-val "#ee6868")
      (syntax-question-mark "#ff9011")
      (syntax-self "#ee6868")
      (syntax-string "#83a300")
      (line-number "#3b91e2")
      (line-number-highlighted "#0a042f")

      ;; original e57300
      (errors  "#d93d3d")
      (function-link "#2bab63")
      (link-link"#d2991d")              ; `link-link'
      (setting-input "#2196f3")
      (side-bar "#505050")
      (side-bar-link "#fdbf35")
      (stab-background "#314559")       ; for nightly
      (target-backgournd "#494a3d")
      (text-main "#dddddd")
      (trait-link "#b78cf2")
      (type-link "#2dbfb8")
      (warning "#ff9124"))

  (custom-theme-set-faces
   'rustdoc-dark

   ;; Basic Coloring (or Uncategorized)
   `(border ((t (:background ,syntax-background :foreground ,text-background))))
   `(cursor ((t (:background ,syntax-foreground))))
   `(default ((t (:foreground ,syntax-foreground :background ,syntax-background))))
   `(fringe ((t (:background nil :foreground ,text-background))))
   `(vertical-border ((t (:foreground ,text-background))))
   `(link ((t (:foreground ,link-link :background nil :underline t))))
   `(link-visited ((t (:foreground ,link-link :background nil :underline t))))
   `(match ((t (:background ,text-background :foreground ,link-link))))
   `(minibuffer-prompt ((t (:foreground ,link-link))))
   `(region ((t (:background ,target-backgournd :foreground nil))))
   `(secondary-selection ((t (:background ,stab-background :foreground nil))))
   `(trailing-whitespace ((t (:foreground ,syntax-comment
                                          :background ,syntax-background))))
   `(tooltip ((t (:background ,target-backgournd :foreground ,syntax-foreground))))
   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,syntax-prelude-ty))))
   `(font-lock-comment-face ((t (:foreground ,syntax-comment))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,syntax-comment))))
   `(font-lock-constant-face ((t (:foreground ,syntax-foreground))))
   `(font-lock-doc-face ((t (:foreground ,syntax-doc-comment))))
   `(font-lock-doc-string-face ((t (:foreground ,syntax-doc-comment))))
   `(font-lock-function-name-face ((t (:inherit nil :foreground ,function-link))))
   `(font-lock-function-call-face ((t (:inherit nil))))
   `(font-lock-keyword-face ((t (:foreground ,syntax-keyword1))))
   `(font-lock-preprocessor-face ((t (:foreground ,syntax-attribute))))
   `(font-lock-reference-face ((t (:foreground ,syntax-foreground))))
   `(font-lock-string-face ((t (:foreground ,syntax-string))))
   `(font-lock-type-face ((t (:foreground ,syntax-foreground))))
   `(font-lock-variable-name-face ((t (:foreground ,syntax-foreground))))
   `(font-lock-warning-face ((t (:foreground ,warning))))

   ;; AUCTeX
   `(font-latex-bold-face ((t ())))
   `(font-latex-italic-face ((t ())))
   `(font-latex-math-face ((t (:foreground ,link-link))))
   `(font-latex-slide-title-face ((t ())))
   `(font-latex-string-face ((t (:foreground ,syntax-string))))
   `(font-latex-warning-face ((t (:foreground ,warning))))
   `(font-latex-sectioning-1-face ((t (:inherit default))))
   `(font-latex-sectioning-2-face ((t (:inherit default))))
   `(font-latex-sectioning-3-face ((t (:inherit default))))
   `(font-latex-sectioning-4-face ((t (:inherit default))))
   `(font-latex-sectioning-5-face ((t (:inherit default))))

   ;; Compilation
   `(compilation-info ((t (:foreground ,type-link))))
   `(compilation-warning ((t (:foreground ,warning :bold t))))
   `(compilation-error ((t (:foreground ,errors))))
   `(compilation-mode-line-fail ((t (:foreground ,errors :weight 'bold))))
   `(compilation-mode-line-exit ((t (:foreground ,type-link :weight 'bold))))

   ;; ;; Diff
   ;; `(diff-removed ((t ,(list :foreground gruber-darker-red+1
   ;;                           :background nil))))
   ;; `(diff-added ((t ,(list :foreground gruber-darker-green
   ;;                         :background nil))))

   ;; Dired
   `(dired-directory ((t (:foreground ,type-link))))
   `(dired-ignored ((t (:foreground ,syntax-comment))))

   ;; ;; Flymake
   ;; `(flymake-errline
   ;;   ((((supports :underline (:style wave)))
   ;;     (:underline (:style wave :color ,gruber-darker-red)
   ;;                 :foreground unspecified
   ;;                 :background unspecified
   ;;                 :inherit unspecified))
   ;;    (t (:foreground ,gruber-darker-red :weight bold :underline t))))
   ;; `(flymake-warnline
   ;;   ((((supports :underline (:style wave)))
   ;;     (:underline (:style wave :color ,gruber-darker-yellow)
   ;;                 :foreground unspecified
   ;;                 :background unspecified
   ;;                 :inherit unspecified))
   ;;    (t (:forground ,gruber-darker-yellow :weight bold :underline t))))
   ;; `(flymake-infoline
   ;;   ((((supports :underline (:style wave)))
   ;;     (:underline (:style wave :color ,gruber-darker-green)
   ;;                 :foreground unspecified
   ;;                 :background unspecified
   ;;                 :inherit unspecified))
   ;;    (t (:forground ,gruber-darker-green :weight bold :underline t))))

   ;; Flyspell
   ;; `(flyspell-incorrect
   ;;   ((((supports :underline (:style wave)))
   ;;     (:underline (:style wave :color ,gruber-darker-red) :inherit unspecified))
   ;;    (t (:foreground ,gruber-darker-red :weight bold :underline t))))
   ;; `(flyspell-duplicate
   ;;   ((((supports :underline (:style wave)))
   ;;     (:underline (:style wave :color ,gruber-darker-yellow) :inherit unspecified))
   ;;    (t (:foreground ,gruber-darker-yellow :weight bold :underline t))))

   ;; Highlights
   `(highlight ((t (:background ,side-bar :foreground ,syntax-foreground))))
   `(highlight-current-line-face ((t (:inherit highlight))))
   `(highlight-defined-function-name-face ((t (:inherit font-lock-builtin-face))))

   ;; Info
   `(info-xref ((t (:foreground ,link-link))))
   `(info-visited ((t (:foreground ,link-link))))


   ;; line numbers
   `(line-number ((t (:inherit default :foreground ,line-number))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,line-number-highlighted))))

   ;; Magit
   `(magit-branch ((t (:foreground ,link-link))))
   `(magit-branch-remote ((t (:foreground ,type-link))))
   `(magit-diff-hunk-header ((t (:background ,text-background))))
   `(magit-diff-file-header ((t (:background ,text-background))))
   `(magit-section-highlight ((t (:background ,stab-background :forground ,text-main))))
   `(magit-section-heading ((t (:foreground ,syntax-foreground))))
   `(magit-bisect-good ((t (:forground ,function-link))))
   `(magit-bisect-bad ((t (:forground ,errors))))
   `(magit-sequence-part ((t (:foreground ,link-link))))
   `(magit-sequence-stop ((t (:foreground ,type-link))))
   `(magit-reflog-rebase ((t (:foreground ,trait-link))))
   `(magit-tag ((t (:foreground ,type-link))))

   ;; `(magit-log-sha1 ((t (:foreground ,gruber-darker-red+1))))
   ;; `(magit-log-author ((t (:foreground ,gruber-darker-brown))))
   ;; `(magit-log-head-label-remote ((t ,(list :foreground gruber-darker-green
   ;;                                          :background gruber-darker-bg+1))))
   ;; `(magit-log-head-label-local ((t ,(list :foreground link-link
   ;;                                         :background gruber-darker-bg+1))))
   ;; `(magit-log-head-label-tags ((t ,(list :foreground gruber-darker-yellow
   ;;                                        :background gruber-darker-bg+1))))
   ;; `(magit-log-head-label-head ((t ,(list :foreground gruber-darker-fg
   ;;                                        :background gruber-darker-bg+1))))
   ;; `(magit-item-highlight ((t (:background ,gruber-darker-bg+1))))
   ;; `(magit-tag ((t ,(list :foreground gruber-darker-yellow
   ;;                        :background gruber-darker-bg))))
   ;; `(magit-blame-heading ((t ,(list :background gruber-darker-bg+1
   ;;                                  :foreground gruber-darker-fg))))

   ;; Meow
   `(meow-insert-cursor ((t (:background ,link-link))))
   `(meow-beacon-cursor ((t (:background ,link-link))))
   `(meow-keypad-cursor ((t (:background ,link-link))))
   `(meow-normal-cursor ((t (:background ,link-link))))
   `(meow-search-highlight ((t (:background ,stab-background))))
   `(meow-search-indicator ((t (:foreground ,setting-input))))

   ;; Mode Line
   `(mode-line ((t (:background ,stab-background :foreground ,text-main))))
   `(mode-line-inactive ((t ( :background ,text-background
                              :foreground ,syntax-comment))))

   ;; Org Mode
   ;; `(org-agenda-structure ((t (:foreground ,link-link))))
   ;; `(org-column ((t (:background ,gruber-darker-bg-1))))
   ;; `(org-column-title ((t (:background ,gruber-darker-bg-1 :underline t :weight bold))))
   ;; `(org-done ((t (:foreground ,gruber-darker-green))))
   ;; `(org-todo ((t (:foreground ,gruber-darker-red-1))))
   ;; `(org-upcoming-deadline ((t (:foreground ,gruber-darker-yellow))))

   `(orderless-match-face-0 ((t (:foreground ,link-link))))
   `(orderless-match-face-1 ((t (:foreground ,function-link))))
   `(orderless-match-face-2 ((t (:foreground ,type-link))))
   `(orderless-match-face-3 ((t (:foreground "#ffc3c3"))))

   ;; Search
   ;; `(isearch ((t ,(list :foreground gruber-darker-black
   ;;                      :background gruber-darker-fg+2))))
   ;; `(isearch-fail ((t ,(list :foreground gruber-darker-black
   ;;                           :background gruber-darker-red))))
   ;; `(isearch-lazy-highlight-face ((t ,(list
   ;;                                     :foreground gruber-darker-fg+1
   ;;                                     :background gruber-darker-niagara-1))))

   ;; Sh
   ;; `(sh-quoted-exec ((t (:foreground ,gruber-darker-red+1))))

   ;; Show Paren
   ;; `(show-paren-match-face ((t (:background ,gruber-darker-bg+4))))
   ;; `(show-paren-mismatch-face ((t (:background ,gruber-darker-red-1))))
   `(transient-key-return ((t (:foreground ,function-link))))
   `(transient-key-stay ((t (:foreground ,type-link))))
   `(transient-key-exit ((t (:foreground ,trait-link))))
   `(transient-key ((t (:foreground ,link-link))))
   `(transient-unreachable ((t (:inherit transient-key-noop))))
   `(transient-unreachable-key ((t (:inherit transient-key-noop))))

   ;; Tuareg
   ;; `(tuareg-font-lock-governing-face ((t (:foreground ,gruber-darker-yellow))))

   ;; Whitespace
   ;; `(whitespace-space ((t ,(list :background gruber-darker-bg
   ;;                               :foreground gruber-darker-bg+1))))
   ;; `(whitespace-tab ((t ,(list :background gruber-darker-bg
   ;;                             :foreground gruber-darker-bg+1))))
   ;; `(whitespace-hspace ((t ,(list :background gruber-darker-bg
   ;;                                :foreground text-background))))
   ;; `(whitespace-line ((t ,(list :background text-background
   ;;                              :foreground gruber-darker-red+1))))
   ;; `(whitespace-newline ((t ,(list :background gruber-darker-bg
   ;;                                 :foreground text-background))))
   ;; `(whitespace-trailing ((t ,(list :background gruber-darker-red
   ;;                                  :foreground gruber-darker-red))))
   ;; `(whitespace-empty ((t ,(list :background gruber-darker-yellow
   ;;                               :foreground gruber-darker-yellow))))
   ;; `(whitespace-indentation ((t ,(list :background gruber-darker-yellow
   ;;                                     :foreground gruber-darker-red))))
   ;; `(whitespace-space-after-tab ((t ,(list :background gruber-darker-yellow
   ;;                                         :foreground gruber-darker-yellow))))
   ;; `(whitespace-space-before-tab ((t ,(list :background gruber-darker-brown
   ;;                                          :foreground gruber-darker-brown))))

   ;; tab-bar
   ;; `(tab-bar ((t (:background ,gruber-darker-bg+1 :foreground ,gruber-darker-bg+4))))
   ;; `(tab-bar-tab ((t (:background nil :foreground ,gruber-darker-yellow :weight bold))))
   ;; `(tab-bar-tab-inactive ((t (:background nil))))

;;;;; company-mode
   ;; `(company-tooltip ((t (:foreground ,gruber-darker-fg :background ,gruber-darker-bg+1))))
   ;; `(company-tooltip-annotation ((t (:foreground ,gruber-darker-brown :background ,gruber-darker-bg+1))))
   ;; `(company-tooltip-annotation-selection ((t (:foreground ,gruber-darker-brown :background ,gruber-darker-bg-1))))
   ;; `(company-tooltip-selection ((t (:foreground ,gruber-darker-fg :background ,gruber-darker-bg-1))))
   ;; `(company-tooltip-mouse ((t (:background ,gruber-darker-bg-1))))
   ;; `(company-tooltip-common ((t (:foreground ,gruber-darker-green))))
   ;; `(company-tooltip-common-selection ((t (:foreground ,gruber-darker-green))))
   ;; `(company-scrollbar-fg ((t (:background ,gruber-darker-bg-1))))
   ;; `(company-scrollbar-bg ((t (:background ,text-background))))
   ;; `(company-preview ((t (:background ,gruber-darker-green))))
   ;; `(company-preview-common ((t (:foreground ,gruber-darker-green :background ,gruber-darker-bg-1))))

   ;; Proof General
   ;; `(proof-locked-face ((t (:background ,gruber-darker-niagara-2))))

   ;; Vertico
   `(vertico-current ((t (:foreground ,syntax-foreground :background ,stab-background))))

   ;; Which-func
   `(which-func ((t (:foreground ,function-link :background ,text-background))))

   ;; Which-key
   `(which-key-command-description-face ((t (:foreground ,function-link))))
   `(which-key-group-description-face ((t (:foreground ,type-link))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'rustdoc-dark)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; End:

;;; rustdoc-dark-theme.el ends here.

;;; jadoroso-theme.el --- Colors to match your Gyokuro green tea.

;; Created 2016 by Alexander F. Adhyatma

;; Author: Alexander F. Adhyatma
;; URL: http:/github.com/franksn/ambience-theme
;; Version: 0.1.0
;; Package-Requires: ((emacs "24"))
;;
;; This file is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;;; Installation:
;;
;;   M-x package-install -> ambience-theme
;;
;;   (load-theme 'jadoroso t)
;;
;;; Bugs
;;
;; report any bugs to franksn@openmailbox.org
;;
;;; Code:

(unless (>= emacs-major-version 24)
  (error "jadoroso requires Emacs 24 or later!"))

(deftheme jadoroso "Colors to match your Gyokuro green tea.")

(defgroup jadoroso nil
  "jadoroso options."
  :group 'faces)

(defcustom jadoroso-variable-pitch t
  "Use variable pitch for latex, markdown, or org-mode"
  :type 'boolean
  :group 'jadoroso)

(defcustom jadoroso-org-height t
  "Use varying text heights for org headings."
  :type 'boolean
  :group 'jadoroso)

(defcustom jadoroso-tex-height-90 0.9
  "Font size 90%"
  :type 'number
  :group 'jadoroso)

(defcustom jadoroso-tex-height-110 1.1
  "Font size 110%"
  :type 'number
  :group 'jadoroso)

(defcustom jadoroso-tex-height-120 1.2
  "Font size 120%"
  :type 'number
  :group 'jadoroso)

(defcustom jadoroso-tex-height-130 1.3
  "Font size 130%"
  :type 'number
  :group 'jadoroso)

(let* (;; variable pitch
       (jadoroso-pitch (if jadoroso-variable-pitch 'variable-pitch 'default))
       (class '((class color) (min-colors 257)))
       (dark0          "#EDF2F7")
       (dark1          "#E6EBF0")
       (dark2          "#9DA7AB")
       (medium         "#808C91")

       (light0         "#555859")
       (light1         "#626662")

       (neutral0       "#7C8487")

       (prim0          "#306363")
       (prim1          "#3E6B63")
       (prim2          "#5E7D6D")

       (delim0         "#AFD99C")
       (delim1         "#5691C2")
       (delim2         "#72AD87")

       (err            "#A15881")
       (warn           "#A8A55E")
       )

    (custom-theme-set-faces
     'jadoroso

     ;; UI
     `(default                                   ((,class (:foreground ,light0 :background ,dark0))))
     `(cursor                                    ((,class (:background ,light1 :inverse-video t))))
     `(link                                      ((,class (:foreground ,prim1 :underline t))))
     `(link-visited                              ((,class (:foreground ,neutral0 :underline t))))
     `(mode-line                                 ((,class (:foreground ,light1 :background ,dark0 :box nil))))
     `(mode-line-inactive                        ((,class (:foreground ,dark0 :background ,dark2 :box nil))))
     `(mode-line-buffer-id                       ((,class (:bold t :foreground ,prim0))))
     `(fringe                                    ((,class (:background ,dark1))))
     `(linum                                     ((,class (:foreground ,medium :background ,dark1))))
     `(hl-line                                   ((,class (:background ,dark1))))
     `(region                                    ((,class (:background ,neutral0 :distant-foreground ,light0))))
     `(secondary-selection                       ((,class (:background ,neutral0 :foreground ,light0))))
     `(cua-rectangle                             ((,class (:background ,neutral0))))
     `(header-line                               ((,class (:foreground ,neutral0 :background ,dark0 :bold nil))))
     `(minibuffer-prompt                         ((,class (:foreground ,prim0 :background ,dark0 :bold nil))))
     `(success                                   ((,class (:foreground ,prim2))))
     `(eval-sexp-fu-flash                        ((,class (:foreground ,dark1 :background ,neutral0))))
     `(eval-sexp-fu-flash-error                  ((,class (:foreground ,dark0 :background ,err))))

     ;; Built-in syntax
     `(font-lock-builtin-face                    ((,class (:foreground ,light0 :weight bold))))
     `(font-lock-constant-face                   ((,class (:foreground ,neutral0))))
     `(font-lock-comment-face                    ((,class (:foreground ,dark2 :background ,dark0))))
     `(font-lock-doc-face                        ((,class (:inherit font-lock-comment-face))))
     `(font-lock-doc-string-face                 ((,class (:inherit font-lock-comment-face))))
     `(font-lock-function-name-face              ((,class (:foreground ,prim1))))
     `(font-lock-keyword-face                    ((,class (:foreground ,prim0 :weight bold))))
     `(font-lock-negation-char-face              ((,class (:foreground ,medium))))
     `(font-lock-preprocessor-face               ((,class (:foreground ,neutral0))))
     `(font-lock-reference-face                  ((,class (:foreground ,medium))))
     `(font-lock-string-face                     ((,class (:foreground ,prim2))))
     `(font-lock-type-face                       ((,class (:foreground ,medium :italic t))))
     `(font-lock-variable-name-face              ((,class (:foreground ,light1))))
     `(font-lock-warning-face                    ((,class (:foreground ,warn :bold t))))

     ;; Font lock extras
     `(clojure-keyword-face                      ((,class (:foreground ,medium))))
     `(clojure-interop-method-face               ((,class (:foreground ,medium))))
     `(elixir-atom-face                          ((,class (:foreground ,medium :weight bold))))
     `(css-selector                              ((,class (:inherit font-lock-function-name-face))))
     `(css-property                              ((,class (:inherit font-lock-string-face))))

     ;; ag (The Silver Searcher)
     `(ag-hit-face                               ((,class (:background ,light0 :foreground ,dark0))))
     `(ag-match-face                             ((,class (:background ,prim0 :foreground ,dark0))))

     ;; auctex / latex-mode
     `(font-latex-bold-face                      ((,class (:foreground ,light0 :bold t))))
     `(font-latex-italic-face                    ((,class (:foreground ,light1 :italic t))))
     `(font-latex-match-reference-keywords       ((,class (:foreground ,prim0))))
     `(font-latex-match-variable-keywords        ((,class (:foreground ,prim1))))
     `(font-latex-math-face                      ((,class (:foreground ,prim2 :weight bold))))
     `(font-latex-sectioning-0-face              ((,class (:inherit font-latex-sectioning-1-face
                                                                    :height ,jadoroso-tex-height-120))))
     `(font-latex-sectioning-1-face              ((,class (:inherit font-latex-sectioning-2-face
                                                                    :height ,jadoroso-tex-height-110))))
     `(font-latex-sectioning-2-face              ((,class (:inherit font-latex-sectioning-3-face
                                                                    :height ,jadoroso-tex-height-110))))
     `(font-latex-sectioning-3-face              ((,class (:inherit font-latex-sectioning-4-face
                                                                    :height ,jadoroso-tex-height-110))))
     `(font-latex-sectioning-4-face              ((,class (:inherit font-latex-sectioning-5-face
                                                                    :height ,jadoroso-tex-height-110))))
     `(font-latex-sectioning-5-face              ((,class (:inherit ,jadoroso-pitch :foreground ,prim1
                                                                    :weight bold))))
     `(font-latex-sedate-face                    ((,class (:foreground ,medium))))
     `(font-latex-slide-title-face               ((,class (:inherit (,jadoroso-pitch font-lock-type-face)
                                                                    :weight bold :height ,jadoroso-tex-height-130))))
     `(font-latex-string-face                    ((,class (:foreground ,prim2))))
     `(font-latex-subscript-face                 ((,class (:height ,jadoroso-tex-height-90))))
     `(font-latex-superscript-face               ((,class (:height ,jadoroso-tex-height-90))))
     `(font-latex-warning-face                   ((,class (:inherit bold :foreground ,prim1 :underline t))))

     ;; Auto completion mode
     `(ac-dabbrev-menu-face                      ((,class (:inherit popup-face))))
     `(ac-dabbrev-selection-face                 ((,class (:inherit popup-menu-selection-face))))

     ;; Avy
     `(avy-lead-face-0                           ((,class (:foreground ,prim2))))
     `(avy-lead-face-1                           ((,class (:foreground ,prim0))))
     `(avy-lead-face-2                           ((,class (:foreground ,prim1))))
     `(avy-lead-face                             ((,class (:foreground ,neutral0))))
     `(avy-background-face                       ((,class (:foreground ,dark2))))
     `(avy-goto-char-timer-face                  ((,class (:inherit    highlight))))

     ;; clojure-test-mode
     `(clojure-test-failure-face                 ((,class (:foreground ,warn :weight bold :underline t))))
     `(clojure-test-error-face                   ((,class (:foreground ,err :weight bold :underline t))))
     `(clojure-test-success-face                 ((,class (:foreground ,prim2 :weight bold :underline t))))

     ;; cider-repl-mode
     `(cider-repl-err-output-face                ((,class (:inherit ,font-lock-warning-face :underline nil))))

     ;; cider-test-mode
     `(cider-test-failure-face                   ((,class (:foreground ,prim1 :weight bold :underline t))))
     `(cider-test-error-face                     ((,class (:foreground ,neutral0 :weight bold :underline t))))
     `(cider-test-success-face                   ((,class (:foreground ,prim2 :weight bold :underline t))))

     ;; circe
     `(circe-prompt-face                         ((,class (:foreground ,prim0 :weight bold :background nil))))
     `(circe-server-face                         ((,class (:foreground ,medium))))
     `(circe-highlight-nick-face                 ((,class (:foreground ,neutral0))))
     `(circe-topic-diff-new-face                 ((,class (:background ,prim2 :foreground ,dark1))))
     `(circe-topic-diff-removed-face             ((,class (:background ,neutral0 :foreground ,dark1))))
     `(circe-fool-face                           ((,class (:foreground ,medium))))

     ;; company mode
     `(company-echo                              ((,class (:inherit company-echo-common))))
     `(company-echo-common                       ((,class (:foreground ,prim0 :background nil))))
     `(company-preview-common                    ((,class (:underline t :foreground ,light1))))
     `(company-preview                           ((,class (:inherit company-preview-common))))
     `(company-preview-search                    ((,class (:foreground ,prim1))))
     `(company-template-field                    ((,class (:foreground ,prim2 :background nil :underline ,prim0))))
     `(company-scrollbar-fg                      ((,class (:foreground nil :background ,dark2))))
     `(company-scrollbar-bg                      ((,class (:foreground nil :background ,dark1))))
     `(company-tooltip                           ((,class (:foreground ,light0 :background ,dark1))))
     `(company-preview-common                    ((,class (:inherit font-lock-comment-face))))
     `(company-tooltip-common                    ((,class (:foreground ,medium :background ,dark1))))
     `(company-tooltip-annotation                ((,class (:foreground ,medium :background ,dark1))))
     `(company-tooltip-annotation-selection      ((,class (:foreground ,dark1 :background ,prim1))))
     `(company-tooltip-common-selection          ((,class (:foreground ,dark0 :background ,prim1))))
     `(company-tooltip-mouse                     ((,class (:foreground ,dark0 :background ,prim1))))
     `(company-tooltip-selection                 ((,class (:foreground ,dark0 :background ,prim1))))

     ;; Diffs
     `(diff-changed                              ((,class (:foreground ,dark1 :background ,prim0))))
     `(diff-added                                ((,class (:foreground ,prim2 :background nil))))
     `(diff-removed                              ((,class (:foreground ,dark2 :background nil))))
     `(diff-indicator-changed                    ((,class (:inherit diff-changed))))
     `(diff-indicator-added                      ((,class (:inherit diff-added))))
     `(diff-indicator-removed                    ((,class (:inherit diff-removed))))

     ;; Diff-hl
     `(diff-hl-change                            ((,class (:inherit diff-changed))))
     `(diff-hl-delete                            ((,class (:inherit diff-removed))))
     `(diff-hl-insert                            ((,class (:inherit diff-added))))
     `(diff-hl-unknown                           ((,class (:inherit highlight))))

     ;; Dired
     `(dired-directory                           ((,class (:foreground ,prim1 :weight bold))))
     `(dired-flagged                             ((,class (:foreground ,medium))))
     `(dired-header                              ((,class (:foreground ,medium :weight bold))))
     `(dired-ignored                             ((,class (:inherit font-lock-comment-face))))
     `(dired-mark                                ((,class (:foreground ,prim2 :weight bold))))
     `(dired-marked                              ((,class (:foreground ,prim2 :weight bold))))
     `(dired-perm-write                          ((,class (:foreground ,light1 :underline t))))
     `(dired-symlink                             ((,class (:foreground ,dark1 :weight bold))))
     `(dired-warning                             ((,class (:foreground ,warn :weight bold))))


     ;; Elfeed
     `(elfeed-search-date-face                   ((,class (:foreground ,medium))))
     `(elfeed-search-feed-face                   ((,class (:foreground ,medium))))
     `(elfeed-search-tag-face                    ((,class (:foreground ,prim2))))
     `(elfeed-search-title-face                  ((,class (:foreground ,prim0))))

     ;; elscreen
     `(elscreen-tab-background-face              ((,class (:background ,dark0 :box nil))))
     `(elscreen-tab-control-face                 ((,class (:foreground ,light1 :background ,dark1 :box nil :underline nil))))
     `(elscreen-tab-current-screen-face          ((,class (:foreground ,light1 :background ,medium :box nil))))
     `(elscreen-tab-other-screen-face            ((,class (:foreground ,medium :background ,dark1 :box nil :underline nil))))

     ;; Eshell
     `(eshell-ls-archive                         ((,class (:foreground ,neutral0 :weight bold))))
     `(eshell-ls-backup                          ((,class (:inherit font-lock-comment-face))))
     `(eshell-ls-clutter                         ((,class (:inherit font-lock-comment-face))))
     `(eshell-ls-directory                       ((,class (:foreground ,prim1))))
     `(eshell-ls-executable                      ((,class (:foreground ,prim2 :weight bold))))
     `(eshell-ls-missing                         ((,class (:inherit font-lock-warning-face))))
     `(eshell-ls-product                         ((,class (:inherit font-lock-doc-face))))
     `(eshell-ls-special                         ((,class (:foreground ,neutral0 :weight bold))))
     `(eshell-ls-symlink                         ((,class (:foreground ,dark1 :weight bold))))
     `(eshell-ls-unreadable                      ((,class (:foreground ,warn))))
     `(eshell-prompt                             ((,class (:foreground ,prim0 :weight bold))))

     ;; Flycheck
     `(flycheck-error                            ((,class (:foreground ,dark0 :background ,err :weight bold :underline t))))
     `(flycheck-error-list-checker-name          ((,class (:foreground ,err))))
     `(flycheck-fringe-error                     ((,class (:foreground ,err :weight bold))))
     `(flycheck-fringe-ylwo           ((,class (:foreground ,prim0 :weight bold))))
     `(flycheck-fringe-warning                   ((,class (:foreground ,warn :weight bold))))
     `(flycheck-ylwo                  ((,class (:foreground ,dark0 :background ,neutral0 :weight bold :underline t))))
     `(flycheck-warning                          ((,class (:foreground ,dark0 :background ,warn :weight bold :underline t))))


     ;; Haskell
     `(haskell-interactive-face-compile-warning  ((,class (:underline (:color ,warn :style wave)))))
     `(haskell-interactive-face-compile-error    ((,class (:underline (:color ,err :style wave)))))
     `(haskell-interactive-face-garbage          ((,class (:foreground ,medium :background nil))))
     `(haskell-interactive-face-prompt           ((,class (:foreground ,light0 :background nil))))
     `(haskell-interactive-face-result           ((,class (:foreground ,medium :background nil))))
     `(haskell-literate-comment-face             ((,class (:foreground ,medium :background nil))))
     `(haskell-pragma-face                       ((,class (:foreground ,prim2 :background nil))))
     `(haskell-constructor-face                  ((,class (:foreground ,prim0 :background nil))))

     ;; Helm
     `(helm-M-x-key                              ((,class (:foreground ,prim1))))
     `(helm-action                               ((,class (:foreground ,light0 :underline t))))
     `(helm-bookmark-addressbook                 ((,class (:foreground ,neutral0))))
     `(helm-bookmark-directory                   ((,class (:foreground ,neutral0))))
     `(helm-bookmark-file                        ((,class (:foreground ,prim0))))
     `(helm-bookmark-gnus                        ((,class (:foreground ,neutral0))))
     `(helm-bookmark-ylwo                        ((,class (:foreground ,neutral0))))
     `(helm-bookmark-man                         ((,class (:foreground ,prim0))))
     `(helm-bookmark-w3m                         ((,class (:foreground ,neutral0))))
     `(helm-buffer-directory                     ((,class (:foreground ,dark0 :background ,prim0))))
     `(helm-buffer-file                          ((,class (:foreground ,dark1 :background ,prim0))))
     `(helm-buffer-not-saved                     ((,class (:foreground ,neutral0))))
     `(helm-buffer-process                       ((,class (:foreground ,neutral0))))
     `(helm-buffer-saved-out                     ((,class (:foreground ,neutral0))))
     `(helm-buffer-size                          ((,class (:foreground ,neutral0))))
     `(helm-candidate-number                     ((,class (:foreground ,prim2))))
     `(helm-ff-directory                         ((,class (:foreground ,neutral0))))
     `(helm-ff-executable                        ((,class (:foreground ,neutral0))))
     `(helm-ff-file                              ((,class (:foreground ,prim0))))
     `(helm-ff-invalid-symlink                   ((,class (:foreground ,light0 :background ,warn))))
     `(helm-ff-prefix                            ((,class (:foreground ,dark0 :background ,prim1))))
     `(helm-ff-symlink                           ((,class (:foreground ,dark1))))
     `(helm-grep-cmd-line                        ((,class (:foreground ,prim2))))
     `(helm-grep-file                            ((,class (:foreground ,prim1))))
     `(helm-grep-finish                          ((,class (:foreground ,neutral0))))
     `(helm-grep-lineno                          ((,class (:foreground ,neutral0))))
     `(helm-grep-match                           ((,class (:foreground ,warn))))
     `(helm-grep-running                         ((,class (:foreground ,neutral0))))
     `(helm-header                               ((,class (:foreground ,prim1))))
     `(helm-header-line-left-margin              ((,class (:foreground ,prim0))))
     `(helm-helper                               ((,class (:foreground ,prim1))))
     `(helm-history-deleted                      ((,class (:foreground ,dark0 :background ,err))))
     `(helm-history-remote                       ((,class (:foreground ,medium))))
     `(helm-lisp-completion-ylwo                 ((,class (:foreground ,neutral0))))
     `(helm-lisp-show-completion                 ((,class (:foreground ,neutral0))))
     `(helm-locate-finish                        ((,class (:foreground ,dark0 :background ,neutral0))))
     `(helm-match                                ((,class (:foreground ,neutral0))))
     `(helm-moccur-buffer                        ((,class (:foreground ,prim0 :underline t))))
     `(helm-prefarg                              ((,class (:foreground ,neutral0))))
     `(helm-selection                            ((,class (:foreground ,dark0 :background ,dark2))))
     `(helm-selection-line                       ((,class (:foreground ,dark0 :background ,dark2))))
     `(helm-separator                            ((,class (:foreground ,neutral0))))
     `(helm-source-header                        ((,class (:foreground ,medium :background ,dark1))))
     `(helm-swoop-target-line-block-face         ((,class (:foreground ,dark1 :background ,neutral0))))
     `(helm-swoop-target-line-face               ((,class (:foreground ,dark1 :background ,neutral0))))
     `(helm-swoop-target-word-face               ((,class (:foreground ,dark0 :background ,prim2))))
     `(helm-visible-mark                         ((,class (:foreground ,dark0 :background ,medium))))

     ;; Highlight indentation mode
     `(highlight-indentation-current-column-face ((,class (:background ,medium))))
     `(highlight-indentation-face                ((,class (:background ,dark1))))

     ;; Highlight-numbers
     `(highlight-numbers-number                  ((,class (:background ,dark0 :foreground ,light1 :bold nil))))

     ;; Highlight-symbol
     `(highlight-symbol-face                     ((,class (:background ,medium :foreground ,prim2))))

     ;; hydra
     `(hydra-face-red                            ((,class (:foreground ,neutral0))))
     `(hydra-face-blue                           ((,class (:foreground ,neutral0))))
     `(hydra-face-amaranth                       ((,class (:foreground ,neutral0))))
     `(hydra-face-pink                           ((,class (:foreground ,neutral0))))
     `(hydra-face-teal                           ((,class (:foreground ,prim2))))

     ;; Ido
     `(ido-first-match                           ((,class (:foreground ,prim1 :background ,dark0))))
     `(ido-incomplete-regexp                     ((,class (:foreground ,neutral0 :weight bold))))
     `(ido-only-match                            ((,class (:foreground ,neutral0))))
     `(ido-subdir                                ((,class (:foreground ,medium))))
     `(ido-vertical-match-face                   ((,class (:foreground ,prim1))))

     ;; ivy
     `(ivy-confirm-face                          ((,class (:foreground ,prim0))))
     `(ivy-current-match                         ((,class (:foreground ,dark0 :background ,prim0))))
     `(ivy-match-required-face                   ((,class (:foreground ,prim2))))
     `(ivy-minibuffer-match-face-1               ((,class (:foreground ,medium))))
     `(ivy-minibuffer-match-face-2               ((,class (:foreground ,prim0))))
     `(ivy-minibuffer-match-face-3               ((,class (:foreground ,neutral0))))
     `(ivy-minibuffer-match-face-4               ((,class (:foreground ,neutral0))))
     `(ivy-remote                                ((,class (:foreground ,prim1))))

     ;; Js2
     `(js2-warning                               ((,class (:underline (:color ,warn :style wave)))))
     `(js2-error                                 ((,class (:underline (:color ,err :style wave)))))
     `(js2-external-variable                     ((,class (:underline (:color ,prim0 :style wave)))))
     `(js2-jsdoc-tag                             ((,class (:foreground ,medium :background nil))))
     `(js2-jsdoc-type                            ((,class (:foreground ,medium :background nil))))
     `(js2-jsdoc-value                           ((,class (:foreground ,medium :background nil))))
     `(js2-function-param                        ((,class (:foreground ,prim0 :background nil))))
     `(js2-function-call                         ((,class (:foreground ,neutral0 :background nil))))
     `(js2-instance-member                       ((,class (:foreground ,neutral0 :background nil))))
     `(js2-private-member                        ((,class (:foreground ,prim1 :background nil))))
     `(js2-private-function-call                 ((,class (:foreground ,prim0 :background nil))))
     `(js2-jsdoc-html-tag-name                   ((,class (:foreground ,neutral0 :background nil))))
     `(js2-jsdoc-html-tag-delimiter              ((,class (:foreground ,neutral0 :background nil))))

     ;; linum-relative
     `(linum-relative-current-face               ((,class (:foreground ,medium :background ,dark1))))

     ;; lui
     `(lui-irc-colors-fg-1-face                  ((,class (:foreground ,dark1))))
     `(lui-irc-colors-fg-2-face                  ((,class (:foreground ,neutral0))))
     `(lui-irc-colors-fg-3-face                  ((,class (:foreground ,prim2))))
     `(lui-irc-colors-fg-4-face                  ((,class (:foreground ,neutral0))))
     `(lui-irc-colors-fg-5-face                  ((,class (:foreground ,prim0))))
     `(lui-irc-colors-fg-6-face                  ((,class (:foreground ,neutral0))))
     `(lui-irc-colors-fg-7-face                  ((,class (:foreground ,prim0))))
     `(lui-irc-colors-fg-8-face                  ((,class (:foreground ,prim1))))
     `(lui-irc-colors-fg-9-face                  ((,class (:foreground ,prim2))))
     `(lui-irc-colors-fg-10-face                 ((,class (:foreground ,prim0))))
     `(lui-irc-colors-fg-11-face                 ((,class (:foreground ,medium))))
     `(lui-irc-colors-fg-12-face                 ((,class (:foreground ,neutral0))))
     `(lui-irc-colors-fg-13-face                 ((,class (:foreground ,delim0))))
     `(lui-irc-colors-fg-14-face                 ((,class (:foreground ,medium))))
     `(lui-irc-colors-fg-15-face                 ((,class (:foreground ,light0))))
     `(lui-button-face                           ((,class (:inherit link))))
     `(lui-highlight-face                        ((,class (:foreground ,medium :weight bold))))
     `(lui-time-stamp-face                       ((,class (:inherit font-lock-comment-face))))

     ;; Magit
     `(magit-blame-culprit                       ((,class (:foreground ,neutral0))))
     `(magit-blame-header                        ((,class (:foreground ,prim2))))
     `(magit-blame-sha1                          ((,class (:foreground ,neutral0))))
     `(magit-blame-subject                       ((,class (:foreground ,prim1))))
     `(magit-blame-time                          ((,class (:foreground ,neutral0))))
     `(magit-blame-name                          ((,class (:foreground ,prim1))))
     `(magit-blame-heading                       ((,class (:foreground ,prim2))))
     `(magit-blame-hash                          ((,class (:foreground ,neutral0))))
     `(magit-blame-summary                       ((,class (:foreground ,medium))))
     `(magit-blame-date                          ((,class (:foreground ,prim0))))
     `(magit-branch                              ((,class (:foreground ,neutral0 :background nil))))
     `(magit-branch-local                        ((,class (:foreground ,neutral0 :background nil))))
     `(magit-branch-remote                       ((,class (:foreground ,prim1 :background nil))))
     `(magit-cherry-equivalent                   ((,class (:foreground ,neutral0))))
     `(magit-cherry-unmatched                    ((,class (:foreground ,neutral0))))
     `(magit-diff-context                        ((,class (:foreground ,dark1 :background nil))))
     `(magit-diff-context-highlight              ((,class (:foreground ,dark0 :background ,medium))))
     `(magit-diff-added                          ((,class (:foreground ,dark1 :background ,prim2))))
     `(magit-diff-added-highlight                ((,class (:foreground ,dark0 :background ,prim2))))
     `(magit-diff-removed                        ((,class (:foreground ,dark1 :background ,neutral0))))
     `(magit-diff-removed-highlight              ((,class (:foreground ,dark0 :background ,neutral0))))
     `(magit-diff-add                            ((,class (:foreground ,prim0))))
     `(magit-diff-del                            ((,class (:foreground ,neutral0))))
     `(magit-diff-file-header                    ((,class (:foreground ,neutral0))))
     `(magit-diff-hunk-header                    ((,class (:foreground ,prim0))))
     `(magit-diff-merge-current                  ((,class (:background ,prim1))))
     `(magit-diff-merge-diff3-separator          ((,class (:foreground ,neutral0 :weight bold))))
     `(magit-diff-merge-proposed                 ((,class (:background ,prim2))))
     `(magit-diff-merge-separator                ((,class (:foreground ,medium))))
     `(magit-diff-none                           ((,class (:foreground ,medium))))
     `(magit-item-highlight                      ((,class (:background ,dark1 :weight normal))))
     `(magit-item-mark                           ((,class (:background ,dark1))))
     `(magit-key-mode-args-face                  ((,class (:foreground ,medium))))
     `(magit-key-mode-button-face                ((,class (:foreground ,neutral0 :weight bold))))
     `(magit-key-mode-header-face                ((,class (:foreground ,medium :weight bold))))
     `(magit-key-mode-switch-face                ((,class (:foreground ,neutral0 :weight bold))))
     `(magit-log-author                          ((,class (:foreground ,prim0))))
     `(magit-log-date                            ((,class (:foreground ,neutral0))))
     `(magit-log-graph                           ((,class (:foreground ,light1))))
     `(magit-log-head-label-bisect-bad           ((,class (:foreground ,neutral0))))
     `(magit-log-head-label-bisect-good          ((,class (:foreground ,prim2))))
     `(magit-log-head-label-bisect-skip          ((,class (:foreground ,prim1))))
     `(magit-log-head-label-default              ((,class (:foreground ,prim0))))
     `(magit-log-head-label-head                 ((,class (:foreground ,light0 :background ,prim2))))
     `(magit-log-head-label-local                ((,class (:foreground ,neutral0 :weight bold))))
     `(magit-log-head-label-patches              ((,class (:foreground ,medium))))
     `(magit-log-head-label-remote               ((,class (:foreground ,neutral0 :weight bold))))
     `(magit-log-head-label-tags                 ((,class (:foreground ,prim0))))
     `(magit-log-head-label-wip                  ((,class (:foreground ,neutral0))))
     `(magit-log-message                         ((,class (:foreground ,light1))))
     `(magit-log-reflog-label-amend              ((,class (:foreground ,neutral0))))
     `(magit-log-reflog-label-checkout           ((,class (:foreground ,prim1))))
     `(magit-log-reflog-label-cherry-pick        ((,class (:foreground ,neutral0))))
     `(magit-log-reflog-label-commit             ((,class (:foreground ,prim2))))
     `(magit-log-reflog-label-merge              ((,class (:foreground ,prim2))))
     `(magit-log-reflog-label-other              ((,class (:foreground ,neutral0))))
     `(magit-log-reflog-label-rebase             ((,class (:foreground ,neutral0))))
     `(magit-log-reflog-label-remote             ((,class (:foreground ,neutral0))))
     `(magit-log-reflog-label-reset              ((,class (:foreground ,prim1))))
     `(magit-log-sha1                            ((,class (:foreground ,neutral0))))
     `(magit-process-ng                          ((,class (:foreground ,prim0 :weight bold))))
     `(magit-process-ok                          ((,class (:foreground ,prim2 :weight bold))))
     `(magit-section-heading                     ((,class (:foreground ,medium :background ,neutral0))))
     `(magit-signature-bad                       ((,class (:foreground ,neutral0 :weight bold))))
     `(magit-signature-good                      ((,class (:foreground ,prim2 :weight bold))))
     `(magit-signature-none                      ((,class (:foreground ,neutral0))))
     `(magit-signature-untrusted                 ((,class (:foreground ,neutral0 :weight bold))))
     `(magit-tag                                 ((,class (:foreground ,light1))))
     `(magit-whitespace-warning-face             ((,class (:background ,warn))))
     `(magit-bisect-bad                          ((,class (:foreground ,neutral0))))
     `(magit-bisect-good                         ((,class (:foreground ,prim2))))
     `(magit-bisect-skip                         ((,class (:foreground ,medium))))

     ;; Matches and Isearch
     `(lazy-highlight                            ((,class (:foreground ,dark0 :background ,dark2))))
     `(highlight                                 ((,class (:foreground ,dark0 :background ,neutral0))))
     `(match                                     ((,class (:foreground ,dark0 :background ,dark2))))
     `(isearch                                   ((,class (:foreground ,dark0 :background ,prim2))))
     `(isearch-fail                              ((,class (:foreground ,dark0 :background ,err))))
     `(show-paren-match                          ((,class (:foreground ,dark0 :background ,prim2))))
     `(show-paren-mismatch                       ((,class (:foreground ,dark0 :background ,err))))
     `(anzu-mode-line                            ((,class (:foreground ,dark0 :height 100 :background ,neutral0))))

;;;;; mingus
     `(mingus-directory-face                     ((,class (:foreground ,neutral0))))
     `(mingus-pausing-face                       ((,class (:foreground ,prim1))))
     `(mingus-playing-face                       ((,class (:foreground ,prim2))))
     `(mingus-playlist-face                      ((,class (:foreground ,light1))))
     `(mingus-song-file-face                     ((,class (:foreground ,prim1))))
     `(mingus-stopped-face                       ((,class (:foreground ,neutral0))))
     `(mingus-artist-face                        ((,class (:foreground ,neutral0))))
     `(mingus-album-face                         ((,class (:foreground ,neutral0))))
     `(mingus-album-stale-face                   ((,class (:foreground ,neutral0))))

     ;; Neotree
     `(neo-dir-link-face                         ((,class (:foreground ,prim0 :weight bold))))
     `(neo-expand-btn-face                       ((,class (:foreground ,medium))))
     `(neo-file-link-face                        ((,class (:foreground ,medium))))
     `(neo-root-dir-face                         ((,class (:foreground ,neutral0 :weight bold))))

     ;; Org-mode
     `(org-agenda-date-today                     ((,class (:foreground ,medium :slant italic :weight bold :height ,(if jadoroso-org-height 1.2 1.0)))))
     `(org-agenda-structure                      ((,class (:inherit font-lock-comment-face))))
     `(org-archived                              ((,class (:foreground ,light0 :weight bold))))
     `(org-checkbox                              ((,class (:foreground ,medium :background ,dark0 :box (:line-width 1 :style released-button)))))
     `(org-date                                  ((,class (:foreground ,neutral0 :underline t))))
     `(org-deadline-announce                     ((,class (:foreground ,neutral0))))
     `(org-document-title                        ((,class (:foreground ,prim1 :weight bold :height ,(if jadoroso-org-height 1.3 1.0) :underline t))))
     `(org-done                                  ((,class (:background ,prim2 :foreground ,dark0 :bold t :weight bold))))
     `(org-formula                               ((,class (:foreground ,prim1))))
     `(org-headline-done                         ((,class (:foreground ,prim2))))
     `(org-hide                                  ((,class (:foreground ,dark1))))
     `(org-level-1                               ((,class (:foreground ,prim0 :height ,(if jadoroso-org-height 1.2 1.0)))))
     `(org-level-2                               ((,class (:foreground ,prim2 :height ,(if jadoroso-org-height 1.1 1.0)))))
     `(org-level-3                               ((,class (:foreground ,prim0))))
     `(org-level-4                               ((,class (:foreground ,neutral0))))
     `(org-level-5                               ((,class (:foreground ,prim1))))
     `(org-level-6                               ((,class (:foreground ,prim2))))
     `(org-level-7                               ((,class (:foreground ,neutral0))))
     `(org-level-8                               ((,class (:foreground ,neutral0))))
     `(org-link                                  ((,class (:foreground ,prim1 :underline t))))
     `(org-scheduled                             ((,class (:foreground ,prim2))))
     `(org-scheduled-previously                  ((,class (:foreground ,neutral0))))
     `(org-scheduled-today                       ((,class (:foreground ,prim0 :height ,(if jadoroso-org-height 1.1 1.0)))))
     `(org-sexp-date                             ((,class (:foreground ,prim1 :underline t))))
     `(org-special-keyword                       ((,class (:inherit font-lock-comment-face))))
     `(org-table                                 ((,class (:foreground ,medium))))
     `(org-tag                                   ((,class (:bold t :weight bold))))
     `(org-time-grid                             ((,class (:foreground ,neutral0))))
     `(org-todo                                  ((,class (:foreground ,neutral0 :weight bold :bold t))))
     `(org-upcoming-deadline                     ((,class (:inherit font-lock-function-name-face))))
     `(org-warning                               ((,class (:foreground ,neutral0 :weight bold :underline nil :bold t))))
     `(org-column                                ((,class (:background ,dark0))))
     `(org-column-title                          ((,class (:background ,dark0 :underline t :weight bold))))
     `(org-mode-line-clock                       ((,class (:foreground ,medium))))
     `(org-mode-line-clock-overrun               ((,class (:foreground ,dark0 :background ,warn))))
     `(org-ellipsis                              ((,class (:foreground ,prim1 :underline t))))
     `(org-footnote                              ((,class (:foreground ,prim0 :underline t))))

     ;; Popup
     `(popup-face                                ((,class (:foreground ,light0 :background ,dark1))))
     `(popup-menu-mouse-face                     ((,class (:foreground ,light0 :background ,dark1))))
     `(popup-menu-selection-face                 ((,class (:foreground ,dark0 :background ,light1))))
     `(popup-tip-face                            ((,class (:foreground ,dark0 :background ,prim2))))

     ;; Powerline
     `(powerline-active1                         ((,class (:background ,dark1 :inherit mode-line))))
     `(powerline-active2                         ((,class (:background ,dark1 :inherit mode-line))))
     `(powerline-inactive1                       ((,class (:background ,dark2 :inherit mode-line-inactive))))
     `(powerline-inactive2                       ((,class (:background ,dark2 :inherit mode-line-inactive))))

     ;; Rainbow-Blocks
     `(rainbow-blocks-depth-1-face               ((,class (:foreground ,delim0))))
     `(rainbow-blocks-depth-2-face               ((,class (:foreground ,delim1))))
     `(rainbow-blocks-depth-3-face               ((,class (:foreground ,delim2))))
     `(rainbow-blocks-depth-4-face               ((,class (:foreground ,delim1))))
     `(rainbow-blocks-depth-5-face               ((,class (:foreground ,prim2))))
     `(rainbow-blocks-depth-6-face               ((,class (:foreground ,prim1))))
     `(rainbow-blocks-depth-7-face               ((,class (:foreground ,neutral0))))
     `(rainbow-blocks-depth-8-face               ((,class (:foreground ,delim1))))
     `(rainbow-blocks-depth-9-face               ((,class (:foreground ,prim0))))
     `(rainbow-blocks-unmatched-face             ((,class (:foreground ,neutral0))))

     ;; Rainbow-Delimiters
     `(rainbow-delimiters-depth-1-face           ((,class (:foreground ,delim0))))
     `(rainbow-delimiters-depth-2-face           ((,class (:foreground ,delim1))))
     `(rainbow-delimiters-depth-3-face           ((,class (:foreground ,delim2))))
     `(rainbow-delimiters-depth-4-face           ((,class (:foreground ,delim1))))
     `(rainbow-delimiters-depth-5-face           ((,class (:foreground ,delim0))))
     `(rainbow-delimiters-depth-6-face           ((,class (:foreground ,delim1))))
     `(rainbow-delimiters-depth-7-face           ((,class (:foreground ,delim2))))
     `(rainbow-delimiters-depth-8-face           ((,class (:foreground ,delim1))))
     `(rainbow-delimiters-depth-9-face           ((,class (:foreground ,neutral0))))
     `(rainbow-delimiters-depth-10-face          ((,class (:foreground ,neutral0))))
     `(rainbow-delimiters-depth-11-face          ((,class (:foreground ,prim2))))
     `(rainbow-delimiters-depth-12-face          ((,class (:foreground ,neutral0))))
     `(rainbow-delimiters-unmatched-face         ((,class (:foreground ,light0 :background nil))))

     ;; sh mode
     `(sh-heredoc                                ((,class (:foreground ,medium :background nil))))
     `(sh-quoted-exec                            ((,class (:foreground ,medium :background nil))))

     ;; shm
     `(shm-current-face                          ((,class (:background ,prim0))))

     ;; Smart-mode-line
     ;; use (setq sml/theme nil) to enable jadoroso for sml
     `(sml/modes                                 ((,class (:foreground ,light0 :weight bold :bold t))))
     `(sml/minor-modes                           ((,class (:foreground ,medium))))
     `(sml/filename                              ((,class (:foreground ,light0 :weight bold :bold t))))
     `(sml/prefix                                ((,class (:foreground ,prim0))))
     `(sml/git                                   ((,class (:inherit sml/prefix))))
     `(sml/process                               ((,class (:inherit sml/prefix))))
     `(sml/sudo                                  ((,class (:foreground ,neutral0 :weight bold))))
     `(sml/read-only                             ((,class (:foreground ,neutral0))))
     `(sml/outside-modified                      ((,class (:foreground ,neutral0))))
     `(sml/modified                              ((,class (:foreground ,prim1))))
     `(sml/vc                                    ((,class (:foreground ,prim2))))
     `(sml/vc-edited                             ((,class (:foreground ,prim2 :weight bold))))
     `(sml/charging                              ((,class (:foreground ,neutral0))))
     `(sml/discharging                           ((,class (:foreground ,neutral0 :weight bold))))
     `(sml/col-number                            ((,class (:foreground ,prim0))))
     `(sml/position-percentage                   ((,class (:foreground ,dark1))))

     ;; Smartparens
     `(sp-pair-overlay-face                      ((,class (:background ,dark0))))
     `(sp-show-pair-match-face                   ((,class (:background ,dark1 :foreground ,prim0 :weight bold))))
     `(sp-show-pair-mismatch-face                ((,class (:background ,err))))
     `(sp-wrap-overlay-closing-pair              ((,class (:foreground ,err :bold t))))
     `(sp-wrap-overlay-opening-pair              ((,class (:foreground ,prim1 :bold t))))

     ;;Smerge
     `(smerge-mine                               ((,class (:background ,neutral0 :foreground ,light0))))
     `(smerge-other                              ((,class (:background ,neutral0 :foreground ,light1))))
     `(smerge-markers                            ((,class (:background ,dark0 :foreground ,light1))))
     `(smerge-refined-added                      ((,class (:background ,prim2 :foreground ,light1))))
     `(smerge-refined-removed                    ((,class (:background ,neutral0 :foreground ,light1))))

     ;; swiper
     `(swiper-line-face                          ((,class (:background ,dark1))))
     `(swiper-match-face-1                       ((,class (:weight bold :foreground ,prim0))))
     `(swiper-match-face-2                       ((,class (:weight bold :foreground ,neutral0))))
     `(swiper-match-face-3                       ((,class (:weight bold :foreground ,prim2))))
     `(swiper-match-face-4                       ((,class (:weight bold :foreground ,prim2))))

     ;; Term
     `(term-color-black                          ((,class (:foreground ,dark2))))
     `(term-color-blue                           ((,class (:foreground ,neutral0))))
     `(term-color-cyan                           ((,class (:foreground ,prim0))))
     `(term-color-green                          ((,class (:foreground ,prim2))))
     `(term-color-magenta                        ((,class (:foreground ,neutral0))))
     `(term-color-red                            ((,class (:foreground ,neutral0))))
     `(term-color-white                          ((,class (:foreground ,medium))))
     `(term-color-yellow                         ((,class (:foreground ,prim1))))
     `(term-default-fg-color                     ((,class (:foreground ,light0))))
     `(term-default-bg-color                     ((,class (:background ,dark0))))

     ;; Web-mode
     `(web-mode-builtin-face                     ((,class (:inherit ,font-lock-builtin-face))))
     `(web-mode-comment-face                     ((,class (:inherit ,font-lock-comment-face))))
     `(web-mode-constant-face                    ((,class (:inherit ,font-lock-constant-face))))
     `(web-mode-doctype-face                     ((,class (:inherit ,font-lock-comment-face))))
     `(web-mode-function-name-face               ((,class (:inherit ,font-lock-function-name-face))))
     `(web-mode-html-attr-name-face              ((,class (:foreground ,neutral0))))
     `(web-mode-html-attr-value-face             ((,class (:foreground ,neutral0))))
     `(web-mode-html-tag-face                    ((,class (:foreground ,prim0))))
     `(web-mode-keyword-face                     ((,class (:foreground ,neutral0))))
     `(web-mode-string-face                      ((,class (:foreground ,prim2))))
     `(web-mode-type-face                        ((,class (:inherit ,font-lock-type-face))))
     `(web-mode-warning-face                     ((,class (:inherit ,font-lock-warning-face))))

     ;; Which-key
     `(which-key-command-description-face         ((,class (:foreground ,medium))))
     `(which-key-group-description-face           ((,class (:foreground ,medium))))
     `(which-key-key-face                         ((,class (:foreground ,neutral0 :weight bold))))
     `(which-key-separator-face                   ((,class (:background nil :foreground ,prim2))))
     `(which-key-special-key-face                 ((,class (:background ,neutral0 :foreground ,dark0))))

     ;; whitespace-mode
     `(whitespace-space                           ((,class (:foreground ,medium :background ,dark0))))
     `(whitespace-hspace                          ((,class (:foreground ,medium :background ,dark0))))
     `(whitespace-tab                             ((,class (:foreground ,medium :background ,dark0))))
     `(whitespace-newline                         ((,class (:foreground ,medium :background ,dark0))))
     `(whitespace-trailing                        ((,class (:foreground ,prim1 :background ,dark1))))
     `(whitespace-line                            ((,class (:foreground ,neutral0 :background ,dark1))))
     `(whitespace-space-before-tab                ((,class (:foreground ,medium :background ,dark0))))
     `(whitespace-indentation                     ((,class (:foreground ,medium :background ,dark0))))
     `(whitespace-empty                           ((,class (:foreground nil :background nil))))
     `(whitespace-space-after-tab                 ((,class (:foreground ,medium :background ,dark0))))

     ;; Weechat
     `(weechat-color-list
       `(unspecified ,dark2 ,dark2
                     ,neutral0 ,neutral0
                     ,prim2 ,prim2
                     ,prim1 ,prim1
                     ,neutral0 ,neutral0
                     ,neutral0 ,neutral0
                     ,prim0 ,prim0
                     ,light1 ,light1)))

    (custom-theme-set-variables
     'jadoroso

     `(pos-tip-foreground-color ,light0)
     `(pos-tip-background-color ,dark1)

     `(ansi-color-names-vector [,dark2
                                ,neutral0
                                ,prim2
                                ,prim1
                                ,neutral0
                                ,neutral0
                                ,prim0
                                ,light1])
     `(xterm-color-names [,dark2 ,neutral0 ,prim2 ,prim1 ,neutral0 ,neutral0 ,prim0 ,light1])
     `(xterm-color-names-bright
       [,medium ,neutral0 ,prim2 ,prim1 ,neutral0 ,neutral0 ,prim0 ,light1])))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'jadoroso)

;; Local Variables:
;; no-byte-compile: t
;; fill-column: 95
;; End:

;;; jadoroso-theme.el ends here

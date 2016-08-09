;;; verda-theme.el --- A very dark and minimal greenish theme.

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
;;   (load-theme 'verda t)
;;
;;; Bugs
;;
;; report any bugs to franksn@openmailbox.org
;;
;;; Code:

(unless (>= emacs-major-version 24)
  (error "verda requires Emacs 24 or later!"))

(deftheme verda "A very dark and minimal greenish theme.")

(defgroup verda nil
  "verda options."
  :group 'faces)

(defcustom verda-variable-pitch t
  "Use variable pitch for latex, markdown, or org-mode"
  :type 'boolean
  :group 'verda)

(defcustom verda-org-height t
  "Use varying text heights for org headings."
  :type 'boolean
  :group 'verda)

(defcustom verda-tex-height-90 0.9
  "Font size 90%"
  :type 'number
  :group 'verda)

(defcustom verda-tex-height-110 1.1
  "Font size 110%"
  :type 'number
  :group 'verda)

(defcustom verda-tex-height-120 1.2
  "Font size 120%"
  :type 'number
  :group 'verda)

(defcustom verda-tex-height-130 1.3
  "Font size 130%"
  :type 'number
  :group 'verda)

(let* (;; variable pitch
       (verda-pitch (if verda-variable-pitch 'variable-pitch 'default))
       (class '((class color) (min-colors 257)))
       (dark0          "#060F0F")
       (dark1          "#0A1A1A")
       (dark2          "#244242")
       (dark3          "#2E5454")
       (medium         "#405E5E")

       (light0         "#BECCCA")
       (light1         "#ABB8B6")
       (light2         "#96BCB3")

       (red            "#4D807A")
       (blu            "#456969")
       (purple         "#52706D")
       (grn            "#3B948B")
       (ylw            "#80CCAA")
       (cyan           "#A4E0D1")

       (delim-one      "#4EAEBB")
       (delim-two      "#9CD9B2")
       (delim-three    "#727AAD")

       (err            "#F0A1C4")
       (warn           "#F0EBA1")
       )

    (custom-theme-set-faces
     'verda

     ;; UI
     `(default                                   ((,class (:foreground ,light0 :background ,dark0))))
     `(cursor                                    ((,class (:background ,light1 :inverse-video t))))
     `(link                                      ((,class (:foreground ,ylw :underline t))))
     `(link-visited                              ((,class (:foreground ,red :underline t))))
     `(mode-line                                 ((,class (:foreground ,light1 :background ,dark0 :box nil))))
     `(mode-line-inactive                        ((,class (:foreground ,medium :background ,dark2 :box nil))))
     `(mode-line-buffer-id                       ((,class (:bold t :foreground ,cyan))))
     `(fringe                                    ((,class (:background ,dark0))))
     `(linum                                     ((,class (:foreground ,medium :background ,dark0))))
     `(hl-line                                   ((,class (:background ,dark1))))
     `(region                                    ((,class (:background ,blu :distant-foreground ,light0))))
     `(secondary-selection                       ((,class (:background ,blu :foreground ,light0))))
     `(cua-rectangle                             ((,class (:background ,blu))))
     `(header-line                               ((,class (:foreground ,purple :background ,dark0 :bold nil))))
     `(minibuffer-prompt                         ((,class (:foreground ,cyan :background ,dark0 :bold nil))))
     `(success                                   ((,class (:foreground ,grn))))
     `(eval-sexp-fu-flash                        ((,class (:foreground ,light1 :background ,blu))))
     `(eval-sexp-fu-flash-error                  ((,class (:foreground ,light0 :background ,err))))

     ;; Built-in syntax
     `(font-lock-builtin-face                    ((,class (:foreground ,purple))))
     `(font-lock-constant-face                   ((,class (:foreground ,red))))
     `(font-lock-comment-face                    ((,class (:foreground ,medium :background ,dark0))))
     `(font-lock-doc-face                        ((,class (:inherit font-lock-comment-face))))
     `(font-lock-doc-string-face                 ((,class (:inherit font-lock-comment-face))))
     `(font-lock-function-name-face              ((,class (:foreground ,cyan))))
     `(font-lock-keyword-face                    ((,class (:foreground ,ylw :weight bold))))
     `(font-lock-negation-char-face              ((,class (:foreground ,medium))))
     `(font-lock-preprocessor-face               ((,class (:foreground ,blu))))
     `(font-lock-reference-face                  ((,class (:foreground ,light2))))
     `(font-lock-string-face                     ((,class (:foreground ,grn))))
     `(font-lock-type-face                       ((,class (:foreground ,light2 :italic t))))
     `(font-lock-variable-name-face              ((,class (:foreground ,red))))
     `(font-lock-warning-face                    ((,class (:foreground ,warn :bold t))))

     ;; Font lock extras
     `(clojure-keyword-face                      ((,class (:foreground ,light2))))
     `(clojure-interop-method-face               ((,class (:foreground ,medium))))
     `(elixir-atom-face                          ((,class (:foreground ,light2 :weight bold))))
     `(css-selector                              ((,class (:inherit font-lock-function-name-face))))
     `(css-property                              ((,class (:inherit font-lock-string-face))))

     ;; ag (The Silver Searcher)
     `(ag-hit-face                               ((,class (:background ,light0 :foreground ,dark0))))
     `(ag-match-face                             ((,class (:background ,blu :foreground ,light0))))

     ;; auctex / latex-mode
     `(font-latex-bold-face                      ((,class (:foreground ,light0 :bold t))))
     `(font-latex-italic-face                    ((,class (:foreground ,light1 :italic t))))
     `(font-latex-match-reference-keywords       ((,class (:foreground ,cyan))))
     `(font-latex-match-variable-keywords        ((,class (:foreground ,ylw))))
     `(font-latex-math-face                      ((,class (:foreground ,grn :weight bold))))
     `(font-latex-sectioning-0-face              ((,class (:inherit font-latex-sectioning-1-face
                                                                    :height ,verda-tex-height-120))))
     `(font-latex-sectioning-1-face              ((,class (:inherit font-latex-sectioning-2-face
                                                                    :height ,verda-tex-height-110))))
     `(font-latex-sectioning-2-face              ((,class (:inherit font-latex-sectioning-3-face
                                                                    :height ,verda-tex-height-110))))
     `(font-latex-sectioning-3-face              ((,class (:inherit font-latex-sectioning-4-face
                                                                    :height ,verda-tex-height-110))))
     `(font-latex-sectioning-4-face              ((,class (:inherit font-latex-sectioning-5-face
                                                                    :height ,verda-tex-height-110))))
     `(font-latex-sectioning-5-face              ((,class (:inherit ,verda-pitch :foreground ,ylw
                                                                    :weight bold))))
     `(font-latex-sedate-face                    ((,class (:foreground ,medium))))
     `(font-latex-slide-title-face               ((,class (:inherit (,verda-pitch font-lock-type-face)
                                                                    :weight bold :height ,verda-tex-height-130))))
     `(font-latex-string-face                    ((,class (:foreground ,grn))))
     `(font-latex-subscript-face                 ((,class (:height ,verda-tex-height-90))))
     `(font-latex-superscript-face               ((,class (:height ,verda-tex-height-90))))
     `(font-latex-warning-face                   ((,class (:inherit bold :foreground ,ylw :underline t))))

     ;; Auto completion mode
     `(ac-dabbrev-menu-face                      ((,class (:inherit popup-face))))
     `(ac-dabbrev-selection-face                 ((,class (:inherit popup-menu-selection-face))))

     ;; Avy
     `(avy-lead-face-0                           ((,class (:foreground ,grn))))
     `(avy-lead-face-1                           ((,class (:foreground ,cyan))))
     `(avy-lead-face-2                           ((,class (:foreground ,ylw))))
     `(avy-lead-face                             ((,class (:foreground ,red))))
     `(avy-background-face                       ((,class (:foreground ,dark2))))
     `(avy-goto-char-timer-face                  ((,class (:inherit    highlight))))

     ;;Clojure-test-mode
     `(clojure-test-failure-face                 ((,class (:foreground ,warn :weight bold :underline t))))
     `(clojure-test-error-face                   ((,class (:foreground ,err :weight bold :underline t))))
     `(clojure-test-success-face                 ((,class (:foreground ,grn :weight bold :underline t))))

     ;; Cider-repl-mode
     `(cider-repl-err-output-face                ((,class (:inherit ,font-lock-warning-face :underline nil))))

     ;; Cider-test-mode
     `(cider-test-failure-face                   ((,class (:foreground ,ylw :weight bold :underline t))))
     `(cider-test-error-face                     ((,class (:foreground ,red :weight bold :underline t))))
     `(cider-test-success-face                   ((,class (:foreground ,grn :weight bold :underline t))))

     ;; circe
     `(circe-prompt-face                         ((,class (:foreground ,cyan :weight bold :background nil))))
     `(circe-server-face                         ((,class (:foreground ,purple))))
     `(circe-highlight-nick-face                 ((,class (:foreground ,blu))))
     `(circe-topic-diff-new-face                 ((,class (:background ,grn :foreground ,light1))))
     `(circe-topic-diff-removed-face             ((,class (:background ,purple :foreground ,light1))))
     `(circe-fool-face                           ((,class (:foreground ,medium))))

     ;; Company Mode
     `(company-echo                              ((,class (:inherit company-echo-common))))
     `(company-echo-common                       ((,class (:foreground ,cyan :background nil))))
     `(company-preview-common                    ((,class (:underline t :foreground ,light1))))
     `(company-preview                           ((,class (:inherit company-preview-common))))
     `(company-preview-search                    ((,class (:foreground ,ylw))))
     `(company-template-field                    ((,class (:foreground ,grn :background nil :underline ,cyan))))
     `(company-scrollbar-fg                      ((,class (:foreground nil :background ,dark2))))
     `(company-scrollbar-bg                      ((,class (:foreground nil :background ,dark3))))
     `(company-tooltip                           ((,class (:foreground ,light0 :background ,dark1))))
     `(company-preview-common                    ((,class (:inherit font-lock-comment-face))))
     `(company-tooltip-common                    ((,class (:foreground ,light2 :background ,dark1))))
     `(company-tooltip-annotation                ((,class (:foreground ,medium :background ,dark1))))
     `(company-tooltip-annotation-selection      ((,class (:foreground ,dark1 :background ,light0))))
     `(company-tooltip-common-selection          ((,class (:foreground ,dark0 :background ,light0))))
     `(company-tooltip-mouse                     ((,class (:foreground ,dark0 :background ,light0))))
     `(company-tooltip-selection                 ((,class (:foreground ,dark0 :background ,light0))))

     ;; Diffs
     `(diff-changed                              ((,class (:foreground ,light1 :background ,purple))))
     `(diff-added                                ((,class (:foreground ,grn :background nil))))
     `(diff-removed                              ((,class (:foreground ,red :background nil))))
     `(diff-indicator-changed                    ((,class (:inherit diff-changed))))
     `(diff-indicator-added                      ((,class (:inherit diff-added))))
     `(diff-indicator-removed                    ((,class (:inherit diff-removed))))

     ;; Diff-hl
     `(diff-hl-change                            ((,class (:inherit diff-changed))))
     `(diff-hl-delete                            ((,class (:inherit diff-removed))))
     `(diff-hl-insert                            ((,class (:inherit diff-added))))
     `(diff-hl-unknown                           ((,class (:inherit highlight))))

     ;; Dired
     `(dired-directory                           ((,class (:foreground ,purple :weight bold))))
     `(dired-flagged                             ((,class (:foreground ,ylw))))
     `(dired-header                              ((,class (:foreground ,medium :weight bold))))
     `(dired-ignored                             ((,class (:inherit font-lock-comment-face))))
     `(dired-mark                                ((,class (:foreground ,blu :weight bold))))
     `(dired-marked                              ((,class (:foreground ,cyan :weight bold))))
     `(dired-perm-write                          ((,class (:foreground ,light1 :underline t))))
     `(dired-symlink                             ((,class (:foreground ,dark3 :weight bold))))
     `(dired-warning                             ((,class (:foreground ,ylw :weight bold))))


     ;; Elfeed
     `(elfeed-search-date-face                   ((,class (:foreground ,dark1))))
     `(elfeed-search-feed-face                   ((,class (:foreground ,dark1))))
     `(elfeed-search-tag-face                    ((,class (:foreground ,dark0))))
     `(elfeed-search-title-face                  ((,class (:foreground ,dark0))))

     ;; elscreen
     `(elscreen-tab-background-face              ((,class (:background ,dark0 :box nil))))
     `(elscreen-tab-control-face                 ((,class (:foreground ,red :background ,dark2 :box nil :underline nil))))
     `(elscreen-tab-current-screen-face          ((,class (:foreground ,dark0 :background ,medium :box nil))))
     `(elscreen-tab-other-screen-face            ((,class (:foreground light2 :background ,dark2 :box nil :underline nil))))

     ;; Eshell
     `(eshell-ls-archive                         ((,class (:foreground ,red :weight bold))))
     `(eshell-ls-backup                          ((,class (:inherit font-lock-comment-face))))
     `(eshell-ls-clutter                         ((,class (:inherit font-lock-comment-face))))
     `(eshell-ls-directory                       ((,class (:foreground ,blu))))
     `(eshell-ls-executable                      ((,class (:foreground ,grn :weight bold))))
     `(eshell-ls-missing                         ((,class (:inherit font-lock-warning-face))))
     `(eshell-ls-product                         ((,class (:inherit font-lock-doc-face))))
     `(eshell-ls-special                         ((,class (:foreground ,ylw :weight bold))))
     `(eshell-ls-symlink                         ((,class (:foreground ,cyan :weight bold))))
     `(eshell-ls-unreadable                      ((,class (:foreground ,medium))))
     `(eshell-prompt                             ((,class (:foreground ,blu :weight bold))))

     ;; Flycheck
     `(flycheck-error                            ((,class (:foreground ,light0 :background ,red :weight bold :underline t))))
     `(flycheck-error-list-checker-name          ((,class (:foreground ,blu))))
     `(flycheck-fringe-error                     ((,class (:foreground ,red :weight bold))))
     `(flycheck-fringe-ylwo           ((,class (:foreground ,blu :weight bold))))
     `(flycheck-fringe-warning                   ((,class (:foreground ,ylw :weight bold))))
     `(flycheck-ylwo                  ((,class (:foreground ,light0 :background ,purple :weight bold :underline t))))
     `(flycheck-warning                          ((,class (:foreground ,dark0 :background ,ylw :weight bold :underline t))))


     ;; Haskell
     `(haskell-interactive-face-compile-warning  ((,class (:underline (:color ,ylw :style wave)))))
     `(haskell-interactive-face-compile-error    ((,class (:underline (:color ,red :style wave)))))
     `(haskell-interactive-face-garbage          ((,class (:foreground ,medium :background nil))))
     `(haskell-interactive-face-prompt           ((,class (:foreground ,light0 :background nil))))
     `(haskell-interactive-face-result           ((,class (:foreground light2 :background nil))))
     `(haskell-literate-comment-face             ((,class (:foreground ,light0 :background nil))))
     `(haskell-pragma-face                       ((,class (:foreground ,medium :background nil))))
     `(haskell-constructor-face                  ((,class (:foreground ,cyan :background nil))))

     ;; Helm
     `(helm-M-x-key                              ((,class (:foreground ,purple))))
     `(helm-action                               ((,class (:foreground ,light0 :underline t))))
     `(helm-bookmark-addressbook                 ((,class (:foreground ,red))))
     `(helm-bookmark-directory                   ((,class (:foreground ,purple))))
     `(helm-bookmark-file                        ((,class (:foreground ,blu))))
     `(helm-bookmark-gnus                        ((,class (:foreground ,purple))))
     `(helm-bookmark-ylwo             ((,class (:foreground ,purple))))
     `(helm-bookmark-man                         ((,class (:foreground ,blu))))
     `(helm-bookmark-w3m                         ((,class (:foreground ,ylw))))
     `(helm-buffer-directory                     ((,class (:foreground ,light0 :background ,blu))))
     `(helm-buffer-file                          ((,class (:foreground ,light1 :background ,blu))))
     `(helm-buffer-not-saved                     ((,class (:foreground ,red))))
     `(helm-buffer-process                       ((,class (:foreground ,red))))
     `(helm-buffer-saved-out                     ((,class (:foreground ,red))))
     `(helm-buffer-size                          ((,class (:foreground ,purple))))
     `(helm-candidate-number                     ((,class (:foreground ,grn))))
     `(helm-ff-directory                         ((,class (:foreground ,red))))
     `(helm-ff-executable                        ((,class (:foreground ,purple))))
     `(helm-ff-file                              ((,class (:foreground ,blu))))
     `(helm-ff-invalid-symlink                   ((,class (:foreground ,light0 :background ,red))))
     `(helm-ff-prefix                            ((,class (:foreground ,dark2 :background ,ylw))))
     `(helm-ff-symlink                           ((,class (:foreground ,ylw))))
     `(helm-grep-cmd-line                        ((,class (:foreground ,grn))))
     `(helm-grep-file                            ((,class (:foreground ,red))))
     `(helm-grep-finish                          ((,class (:foreground ,purple))))
     `(helm-grep-lineno                          ((,class (:foreground ,blu))))
     `(helm-grep-match                           ((,class (:foreground ,warn))))
     `(helm-grep-running                         ((,class (:foreground ,red))))
     `(helm-header                               ((,class (:foreground ,ylw))))
     `(helm-header-line-left-margin              ((,class (:foreground ,blu))))
     `(helm-helper                               ((,class (:foreground ,ylw))))
     `(helm-history-deleted                      ((,class (:foreground ,dark2 :background ,red))))
     `(helm-history-remote                       ((,class (:foreground ,red))))
     `(helm-lisp-completion-ylwo      ((,class (:foreground ,blu))))
     `(helm-lisp-show-completion                 ((,class (:foreground ,red))))
     `(helm-locate-finish                        ((,class (:foreground ,light0 :background ,blu))))
     `(helm-match                                ((,class (:foreground ,warn))))
     `(helm-moccur-buffer                        ((,class (:foreground ,cyan :underline t))))
     `(helm-prefarg                              ((,class (:foreground ,purple))))
     `(helm-selection                            ((,class (:foreground ,light0 :background ,dark2))))
     `(helm-selection-line                       ((,class (:foreground ,light0 :background ,dark2))))
     `(helm-separator                            ((,class (:foreground ,red))))
     `(helm-source-header                        ((,class (:foreground ,light2 :background ,dark1))))
     `(helm-swoop-target-line-block-face         ((,class (:foreground ,light1 :background ,blu))))
     `(helm-swoop-target-line-face               ((,class (:foreground ,light1 :background ,blu))))
     `(helm-swoop-target-word-face               ((,class (:foreground ,light0 :background ,grn))))
     `(helm-visible-mark                         ((,class (:foreground ,dark2 :background light2))))

     ;; Highlight indentation mode
     `(highlight-indentation-current-column-face ((,class (:background ,medium))))
     `(highlight-indentation-face                ((,class (:background ,dark1))))

     ;; Highlight-numbers
     `(highlight-numbers-number                  ((,class (:background ,dark0 :foreground ,light0 :bold nil))))

     ;; Highlight-symbol
     `(highlight-symbol-face                     ((,class (:background ,medium :foreground ,grn))))

     ;; hydra
     `(hydra-face-red                            ((,class (:foreground ,red))))
     `(hydra-face-blue                           ((,class (:foreground ,blu))))
     `(hydra-face-amaranth                       ((,class (:foreground ,purple))))
     `(hydra-face-pink                           ((,class (:foreground ,delim-one))))
     `(hydra-face-teal                           ((,class (:foreground ,grn))))

     ;; Ido
     `(ido-first-match                           ((,class (:foreground ,delim-one :background ,dark0))))
     `(ido-incomplete-regexp                     ((,class (:foreground ,red :weight bold))))
     `(ido-only-match                            ((,class (:foreground ,blu))))
     `(ido-subdir                                ((,class (:foreground ,medium))))
     `(ido-vertical-match-face                   ((,class (:foreground ,delim-one))))

     ;; ivy
     `(ivy-confirm-face                          ((,class (:foreground ,delim-one))))
     `(ivy-current-match                         ((,class (:foreground ,light0 :background ,blu))))
     `(ivy-match-required-face                   ((,class (:foreground ,grn))))
     `(ivy-minibuffer-match-face-1               ((,class (:foreground light2))))
     `(ivy-minibuffer-match-face-2               ((,class (:foreground ,delim-one))))
     `(ivy-minibuffer-match-face-3               ((,class (:foreground ,red))))
     `(ivy-minibuffer-match-face-4               ((,class (:foreground ,blu))))
     `(ivy-remote                                ((,class (:foreground ,ylw))))

     ;; Js2
     `(js2-warning                               ((,class (:underline (:color ,ylw :style wave)))))
     `(js2-error                                 ((,class (:underline (:color ,red :style wave)))))
     `(js2-external-variable                     ((,class (:underline (:color ,cyan :style wave)))))
     `(js2-jsdoc-tag                             ((,class (:foreground ,medium :background nil))))
     `(js2-jsdoc-type                            ((,class (:foreground light2 :background nil))))
     `(js2-jsdoc-value                           ((,class (:foreground light2 :background nil))))
     `(js2-function-param                        ((,class (:foreground ,cyan :background nil))))
     `(js2-function-call                         ((,class (:foreground ,blu :background nil))))
     `(js2-instance-member                       ((,class (:foreground ,blu :background nil))))
     `(js2-private-member                        ((,class (:foreground ,ylw :background nil))))
     `(js2-private-function-call                 ((,class (:foreground ,cyan :background nil))))
     `(js2-jsdoc-html-tag-name                   ((,class (:foreground ,blu :background nil))))
     `(js2-jsdoc-html-tag-delimiter              ((,class (:foreground ,purple :background nil))))

     ;; linum-relative
     `(linum-relative-current-face               ((,class (:foreground light2 :background ,dark1))))

     ;; lui
     `(lui-irc-colors-fg-1-face                  ((,class (:foreground ,dark3))))
     `(lui-irc-colors-fg-2-face                  ((,class (:foreground ,red))))
     `(lui-irc-colors-fg-3-face                  ((,class (:foreground ,grn))))
     `(lui-irc-colors-fg-4-face                  ((,class (:foreground ,blu))))
     `(lui-irc-colors-fg-5-face                  ((,class (:foreground ,cyan))))
     `(lui-irc-colors-fg-6-face                  ((,class (:foreground ,purple))))
     `(lui-irc-colors-fg-7-face                  ((,class (:foreground ,ylw))))
     `(lui-irc-colors-fg-8-face                  ((,class (:foreground ,ylw))))
     `(lui-irc-colors-fg-9-face                  ((,class (:foreground ,grn))))
     `(lui-irc-colors-fg-10-face                  ((,class (:foreground ,cyan))))
     `(lui-irc-colors-fg-11-face                  ((,class (:foreground ,medium))))
     `(lui-irc-colors-fg-12-face                  ((,class (:foreground ,blu))))
     `(lui-irc-colors-fg-13-face                  ((,class (:foreground ,delim-one))))
     `(lui-irc-colors-fg-14-face                  ((,class (:foreground light2))))
     `(lui-irc-colors-fg-15-face                  ((,class (:foreground ,light0))))
     `(lui-button-face                            ((,class (:inherit link))))
     `(lui-highlight-face                         ((,class (:foreground ,medium :weight bold))))
     `(lui-time-stamp-face                        ((,class (:inherit font-lock-comment-face))))

     ;; Magit
     `(magit-blame-culprit                       ((,class (:foreground ,ylw))))
     `(magit-blame-header                        ((,class (:foreground ,grn))))
     `(magit-blame-sha1                          ((,class (:foreground ,red))))
     `(magit-blame-subject                       ((,class (:foreground ,ylw))))
     `(magit-blame-time                          ((,class (:foreground ,cyan))))
     `(magit-blame-name                          ((,class (:foreground ,ylw))))
     `(magit-blame-heading                       ((,class (:foreground ,grn))))
     `(magit-blame-hash                          ((,class (:foreground ,red))))
     `(magit-blame-summary                       ((,class (:foreground ,medium))))
     `(magit-blame-date                          ((,class (:foreground ,grn))))
     `(magit-branch                              ((,class (:foreground ,purple :background nil))))
     `(magit-branch-local                        ((,class (:foreground ,purple :background nil))))
     `(magit-branch-remote                       ((,class (:foreground ,ylw :background nil))))
     `(magit-cherry-equivalent                   ((,class (:foreground ,blu))))
     `(magit-cherry-unmatched                    ((,class (:foreground ,purple))))
     `(magit-diff-context                        ((,class (:foreground ,dark3 :background nil))))
     `(magit-diff-context-highlight              ((,class (:foreground ,medium :background ,dark0))))
     `(magit-diff-added                          ((,class (:foreground ,warn :background ,grn))))
     `(magit-diff-added-highlight                ((,class (:foreground ,grn :background ,grn))))
     `(magit-diff-removed                        ((,class (:foreground ,red :background ,red))))
     `(magit-diff-removed-highlight              ((,class (:foreground ,red :background ,red))))
     `(magit-diff-add                            ((,class (:foreground ,grn))))
     `(magit-diff-del                            ((,class (:foreground ,red))))
     `(magit-diff-file-header                    ((,class (:foreground ,blu))))
     `(magit-diff-hunk-header                    ((,class (:foreground ,cyan))))
     `(magit-diff-merge-current                  ((,class (:background ,ylw))))
     `(magit-diff-merge-diff3-separator          ((,class (:foreground ,blu :weight bold))))
     `(magit-diff-merge-proposed                 ((,class (:background ,grn))))
     `(magit-diff-merge-separator                ((,class (:foreground ,blu))))
     `(magit-diff-none                           ((,class (:foreground ,medium))))
     `(magit-item-highlight                      ((,class (:background ,dark1 :weight normal))))
     `(magit-item-mark                           ((,class (:background ,dark0))))
     `(magit-key-mode-args-face                  ((,class (:foreground light2))))
     `(magit-key-mode-button-face                ((,class (:foreground ,blu :weight bold))))
     `(magit-key-mode-header-face                ((,class (:foreground light2 :weight bold))))
     `(magit-key-mode-switch-face                ((,class (:foreground ,purple :weight bold))))
     `(magit-log-author                          ((,class (:foreground ,cyan))))
     `(magit-log-date                            ((,class (:foreground ,blu))))
     `(magit-log-graph                           ((,class (:foreground ,light1))))
     `(magit-log-head-label-bisect-bad           ((,class (:foreground ,red))))
     `(magit-log-head-label-bisect-good          ((,class (:foreground ,grn))))
     `(magit-log-head-label-bisect-skip          ((,class (:foreground ,ylw))))
     `(magit-log-head-label-default              ((,class (:foreground ,blu))))
     `(magit-log-head-label-head                 ((,class (:foreground ,light0 :background ,cyan))))
     `(magit-log-head-label-local                ((,class (:foreground ,blu :weight bold))))
     `(magit-log-head-label-patches              ((,class (:foreground ,blu))))
     `(magit-log-head-label-remote               ((,class (:foreground ,blu :weight bold))))
     `(magit-log-head-label-tags                 ((,class (:foreground ,cyan))))
     `(magit-log-head-label-wip                  ((,class (:foreground ,red))))
     `(magit-log-message                         ((,class (:foreground ,light1))))
     `(magit-log-reflog-label-amend              ((,class (:foreground ,blu))))
     `(magit-log-reflog-label-checkout           ((,class (:foreground ,ylw))))
     `(magit-log-reflog-label-cherry-pick        ((,class (:foreground ,red))))
     `(magit-log-reflog-label-commit             ((,class (:foreground ,grn))))
     `(magit-log-reflog-label-merge              ((,class (:foreground ,grn))))
     `(magit-log-reflog-label-other              ((,class (:foreground ,red))))
     `(magit-log-reflog-label-rebase             ((,class (:foreground ,blu))))
     `(magit-log-reflog-label-remote             ((,class (:foreground ,blu))))
     `(magit-log-reflog-label-reset              ((,class (:foreground ,ylw))))
     `(magit-log-sha1                            ((,class (:foreground ,blu))))
     `(magit-process-ng                          ((,class (:foreground ,blu :weight bold))))
     `(magit-process-ok                          ((,class (:foreground ,grn :weight bold))))
     `(magit-section-heading                     ((,class (:foreground ,light2 :background ,blu))))
     `(magit-signature-bad                       ((,class (:foreground ,red :weight bold))))
     `(magit-signature-good                      ((,class (:foreground ,grn :weight bold))))
     `(magit-signature-none                      ((,class (:foreground ,red))))
     `(magit-signature-untrusted                 ((,class (:foreground ,purple :weight bold))))
     `(magit-tag                                 ((,class (:foreground ,warn))))
     `(magit-whitespace-warning-face             ((,class (:background ,red))))
     `(magit-bisect-bad                          ((,class (:foreground ,red))))
     `(magit-bisect-good                         ((,class (:foreground ,grn))))
     `(magit-bisect-skip                         ((,class (:foreground ,light2))))

     ;; Matches and Isearch
     `(lazy-highlight                            ((,class (:foreground ,light0 :background ,dark1))))
     `(highlight                                 ((,class (:foreground ,light0 :background ,blu))))
     `(match                                     ((,class (:foreground ,light0 :background ,dark2))))
     `(isearch                                   ((,class (:foreground ,light0 :background ,grn))))
     `(isearch-fail                              ((,class (:foreground ,light0 :background ,red))))
     `(show-paren-match                          ((,class (:foreground ,light0 :background ,grn))))
     `(show-paren-mismatch                       ((,class (:foreground ,light0 :background ,red))))
     `(anzu-mode-line                            ((,class (:foreground ,light0 :height 100 :background ,blu))))

;;;;; mingus
     `(mingus-directory-face                           ((,class (:foreground ,cyan))))
     `(mingus-pausing-face                             ((,class (:foreground ,ylw))))
     `(mingus-playing-face                             ((,class (:foreground ,grn))))
     `(mingus-playlist-face                            ((,class (:foreground ,grn))))
     `(mingus-song-file-face                           ((,class (:foreground ,blu))))
     `(mingus-stopped-face                             ((,class (:foreground ,red))))
     `(mingus-artist-face                              ((,class (:foreground ,purple))))
     `(mingus-album-face                               ((,class (:foreground ,ylw))))
     `(mingus-album-stale-face                         ((,class (:foreground ,red))))

     ;; Neotree
     `(neo-dir-link-face                         ((,class (:foreground ,purple :weight bold))))
     `(neo-expand-btn-face                       ((,class (:foreground ,medium))))
     `(neo-file-link-face                        ((,class (:foreground light2))))
     `(neo-root-dir-face                         ((,class (:foreground ,red :weight bold))))

     ;; Org-mode
     `(org-agenda-date-today                     ((,class (:foreground ,light2 :slant italic :weight bold :height ,(if verda-org-height 1.2 1.0)))))
     `(org-agenda-structure                      ((,class (:inherit font-lock-comment-face))))
     `(org-archived                              ((,class (:foreground ,light0 :weight bold))))
     `(org-checkbox                              ((,class (:foreground ,light2 :background ,dark0 :box (:line-width 1 :style released-button)))))
     `(org-date                                  ((,class (:foreground ,blu :underline t))))
     `(org-deadline-announce                     ((,class (:foreground ,red))))
     `(org-document-title                        ((,class (:background ,dark0 :foreground ,grn :weight bold :height ,(if verda-org-height 1.3 1.0) :underline t))))
     `(org-done                                  ((,class (:background ,grn :foreground ,grn :bold t :weight bold))))
     `(org-formula                               ((,class (:foreground ,ylw))))
     `(org-headline-done                         ((,class (:foreground ,grn))))
     `(org-hide                                  ((,class (:foreground ,dark0))))
     `(org-level-1                               ((,class (:background ,blu :foreground ,blu :height ,(if verda-org-height 1.2 1.0)))))
     `(org-level-2                               ((,class (:background ,grn :foreground ,grn :height ,(if verda-org-height 1.1 1.0)))))
     `(org-level-3                               ((,class (:foreground ,red))))
     `(org-level-4                               ((,class (:foreground ,ylw))))
     `(org-level-5                               ((,class (:foreground ,cyan))))
     `(org-level-6                               ((,class (:foreground ,grn))))
     `(org-level-7                               ((,class (:foreground ,red))))
     `(org-level-8                               ((,class (:foreground ,blu))))
     `(org-link                                  ((,class (:foreground ,ylw :underline t))))
     `(org-scheduled                             ((,class (:foreground ,grn))))
     `(org-scheduled-previously                  ((,class (:foreground ,red))))
     `(org-scheduled-today                       ((,class (:foreground ,blu :height ,(if verda-org-height 1.1 1.0)))))
     `(org-sexp-date                             ((,class (:foreground ,blu :underline t))))
     `(org-special-keyword                       ((,class (:inherit font-lock-comment-face))))
     `(org-table                                 ((,class (:foreground ,grn))))
     `(org-tag                                   ((,class (:bold t :weight bold))))
     `(org-time-grid                             ((,class (:foreground ,blu))))
     `(org-todo                                  ((,class (:foreground ,purple :weight bold :bold t))))
     `(org-upcoming-deadline                     ((,class (:inherit font-lock-function-name-face))))
     `(org-warning                               ((,class (:foreground ,red :weight bold :underline nil :bold t))))
     `(org-column                                ((,class (:background ,dark0))))
     `(org-column-title                          ((,class (:background ,dark0 :underline t :weight bold))))
     `(org-mode-line-clock                       ((,class (:foreground ,light2 :background ,dark0))))
     `(org-mode-line-clock-overrun               ((,class (:foreground ,dark2 :background ,red))))
     `(org-ellipsis                              ((,class (:foreground ,ylw :underline t))))
     `(org-footnote                              ((,class (:foreground ,cyan :underline t))))

     ;; Popup
     `(popup-face                                ((,class (:foreground ,light0 :background ,dark1))))
     `(popup-menu-mouse-face                     ((,class (:foreground ,light0 :background ,blu))))
     `(popup-menu-selection-face                 ((,class (:foreground ,light0 :background ,blu))))
     `(popup-tip-face                            ((,class (:foreground ,light0 :background ,cyan))))

     ;; Powerline
     `(powerline-active1                         ((,class (:background ,dark1 :inherit mode-line))))
     `(powerline-active2                         ((,class (:background ,dark2 :inherit mode-line))))
     `(powerline-inactive1                       ((,class (:background ,dark1 :inherit mode-line-inactive))))
     `(powerline-inactive2                       ((,class (:background ,dark3 :inherit mode-line-inactive))))

     ;; Rainbow-Blocks
     `(rainbow-blocks-depth-1-face               ((,class (:foreground ,delim-one))))
     `(rainbow-blocks-depth-2-face               ((,class (:foreground ,delim-two))))
     `(rainbow-blocks-depth-3-face               ((,class (:foreground ,delim-three))))
     `(rainbow-blocks-depth-4-face               ((,class (:foreground ,delim-two))))
     `(rainbow-blocks-depth-5-face               ((,class (:foreground ,grn))))
     `(rainbow-blocks-depth-6-face               ((,class (:foreground ,ylw))))
     `(rainbow-blocks-depth-7-face               ((,class (:foreground ,blu))))
     `(rainbow-blocks-depth-8-face               ((,class (:foreground ,purple))))
     `(rainbow-blocks-depth-9-face               ((,class (:foreground ,cyan))))
     `(rainbow-blocks-unmatched-face             ((,class (:foreground ,red))))

     ;; Rainbow-Delimiters
     `(rainbow-delimiters-depth-1-face           ((,class (:foreground ,delim-one))))
     `(rainbow-delimiters-depth-2-face           ((,class (:foreground ,delim-two))))
     `(rainbow-delimiters-depth-3-face           ((,class (:foreground ,delim-three))))
     `(rainbow-delimiters-depth-4-face           ((,class (:foreground ,delim-two))))
     `(rainbow-delimiters-depth-5-face           ((,class (:foreground ,delim-one))))
     `(rainbow-delimiters-depth-6-face           ((,class (:foreground ,delim-two))))
     `(rainbow-delimiters-depth-7-face           ((,class (:foreground ,delim-three))))
     `(rainbow-delimiters-depth-8-face           ((,class (:foreground ,delim-two))))
     `(rainbow-delimiters-depth-9-face           ((,class (:foreground ,red))))
     `(rainbow-delimiters-depth-10-face          ((,class (:foreground ,blu))))
     `(rainbow-delimiters-depth-11-face          ((,class (:foreground ,grn))))
     `(rainbow-delimiters-depth-12-face          ((,class (:foreground ,purple))))
     `(rainbow-delimiters-unmatched-face         ((,class (:foreground ,light0 :background nil))))

     ;; sh mode
     `(sh-heredoc                                ((,class (:foreground ,light2 :background nil))))
     `(sh-quoted-exec                            ((,class (:foreground ,light2 :background nil))))

     ;; shm
     `(shm-current-face                          ((,class (:background ,blu))))

     ;; Smart-mode-line
     ;; use (setq sml/theme nil) to enable verda for sml
     `(sml/modes                                 ((,class (:foreground ,light0 :weight bold :bold t))))
     `(sml/minor-modes                           ((,class (:foreground ,blu))))
     `(sml/filename                              ((,class (:foreground ,light0 :weight bold :bold t))))
     `(sml/prefix                                ((,class (:foreground ,blu))))
     `(sml/git                                   ((,class (:inherit sml/prefix))))
     `(sml/process                               ((,class (:inherit sml/prefix))))
     `(sml/sudo                                  ((,class (:foreground ,red :weight bold))))
     `(sml/read-only                             ((,class (:foreground ,blu))))
     `(sml/outside-modified                      ((,class (:foreground ,blu))))
     `(sml/modified                              ((,class (:foreground ,ylw))))
     `(sml/vc                                    ((,class (:foreground ,grn))))
     `(sml/vc-edited                             ((,class (:foreground ,grn))))
     `(sml/charging                              ((,class (:foreground ,cyan))))
     `(sml/discharging                           ((,class (:foreground ,cyan :weight bold))))
     `(sml/col-number                            ((,class (:foreground ,blu))))
     `(sml/position-percentage                   ((,class (:foreground ,cyan))))

     ;; Smartparens
     `(sp-pair-overlay-face                      ((,class (:background ,dark0))))
     `(sp-show-pair-match-face                   ((,class (:background ,dark2 :foreground ,grn))))
     `(sp-show-pair-mismatch-face                ((,class (:background ,red))))
     `(sp-wrap-overlay-closing-pair              ((,class (:foreground ,red :bold t))))
     `(sp-wrap-overlay-opening-pair              ((,class (:foreground ,ylw :bold t))))

     ;;Smerge
     `(smerge-mine                               ((,class (:background ,purple))))
     `(smerge-other                              ((,class (:background ,blu))))
     `(smerge-markers                            ((,class (:background ,dark0))))
     `(smerge-refined-added                      ((,class (:background ,grn))))
     `(smerge-refined-removed                    ((,class (:background ,red))))

     ;; swiper
     `(swiper-line-face                          ((,class (:background ,dark1))))
     `(swiper-match-face-1                       ((,class (:weight bold :foreground ,blu))))
     `(swiper-match-face-2                       ((,class (:weight bold :foreground ,red))))
     `(swiper-match-face-3                       ((,class (:weight bold :foreground ,grn))))
     `(swiper-match-face-4                       ((,class (:weight bold :foreground ,grn))))

     ;; Term
     `(term-color-black                          ((,class (:foreground ,dark1))))
     `(term-color-blue                           ((,class (:foreground ,blu))))
     `(term-color-cyan                           ((,class (:foreground ,cyan))))
     `(term-color-green                          ((,class (:foreground ,grn))))
     `(term-color-magenta                        ((,class (:foreground ,purple))))
     `(term-color-red                            ((,class (:foreground ,red))))
     `(term-color-white                          ((,class (:foreground ,light1))))
     `(term-color-yellow                         ((,class (:foreground ,ylw))))
     `(term-default-fg-color                     ((,class (:foreground ,light0))))
     `(term-default-bg-color                     ((,class (:background ,dark0))))

     ;; Web-mode
     `(web-mode-builtin-face                     ((,class (:inherit ,font-lock-builtin-face))))
     `(web-mode-comment-face                     ((,class (:inherit ,font-lock-comment-face))))
     `(web-mode-constant-face                    ((,class (:inherit ,font-lock-constant-face))))
     `(web-mode-doctype-face                     ((,class (:inherit ,font-lock-comment-face))))
     `(web-mode-function-name-face               ((,class (:inherit ,font-lock-function-name-face))))
     `(web-mode-html-attr-name-face              ((,class (:foreground ,red))))
     `(web-mode-html-attr-value-face             ((,class (:foreground ,blu))))
     `(web-mode-html-tag-face                    ((,class (:foreground ,cyan))))
     `(web-mode-keyword-face                     ((,class (:foreground ,blu))))
     `(web-mode-string-face                      ((,class (:foreground ,grn))))
     `(web-mode-type-face                        ((,class (:inherit ,font-lock-type-face))))
     `(web-mode-warning-face                     ((,class (:inherit ,font-lock-warning-face))))

     ;; Which-key
     `(which-key-command-description-face         ((,class (:foreground ,light2))))
     `(which-key-group-description-face           ((,class (:foreground ,medium))))
     `(which-key-key-face                         ((,class (:foreground ,purple :weight bold))))
     `(which-key-separator-face                   ((,class (:background nil :foreground ,grn))))
     `(which-key-special-key-face                 ((,class (:background ,red :foreground ,dark0))))

     ;; whitespace-mode
     `(whitespace-space                           ((,class (:foreground ,medium :background ,dark0))))
     `(whitespace-hspace                          ((,class (:foreground ,medium :background ,dark0))))
     `(whitespace-tab                             ((,class (:foreground ,medium :background ,dark0))))
     `(whitespace-newline                         ((,class (:foreground ,medium :background ,dark0))))
     `(whitespace-trailing                        ((,class (:foreground ,ylw :background ,dark1))))
     `(whitespace-line                            ((,class (:foreground ,red :background ,dark1))))
     `(whitespace-space-before-tab                ((,class (:foreground ,medium :background ,dark0))))
     `(whitespace-indentation                     ((,class (:foreground ,medium :background ,dark0))))
     `(whitespace-empty                           ((,class (:foreground nil :background nil))))
     `(whitespace-space-after-tab                 ((,class (:foreground ,medium :background ,dark0))))

     ;; Weechat
     `(weechat-color-list
       `(unspecified ,dark1 ,dark3
                     ,red ,red
                     ,grn ,grn
                     ,ylw ,ylw
                     ,blu ,blu
                     ,purple ,purple
                     ,cyan ,cyan
                     ,light1 light2)))

    (custom-theme-set-variables
     'verda

     `(pos-tip-foreground-color ,light0)
     `(pos-tip-background-color ,dark3)

     `(ansi-color-names-vector [,dark3
                                ,red
                                ,grn
                                ,ylw
                                ,blu
                                ,purple
                                ,cyan
                                light2])
     `(xterm-color-names [,dark3 ,red ,grn ,ylw ,blu ,purple ,cyan light2])
     `(xterm-color-names-bright
       [,medium ,red ,grn ,ylw ,blu ,purple ,cyan light2])))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'verda)

;; Local Variables:
;; no-byte-compile: t
;; fill-column: 95
;; End:

;;; verda-theme.el ends here

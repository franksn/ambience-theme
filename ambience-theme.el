;;; ambience-theme.el 
;;; A collection of minimally designed themes.
;;; Add theme files under 'variants' subdir to load path.

;;; Code:
(let ((dir (file-name-directory load-file-name)))
  (add-to-list 'custom-theme-load-path (concat dir "/variants")))

(provide 'ambience-theme)

;;; ambience-theme.el ends here.

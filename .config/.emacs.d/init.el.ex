(require 'package)

(setq EMACS_DIR "~/.emacs.d/")

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("elpa" . "https://elpa.gnu.org/packages/")
						  ("org" . "https://orgmode.org/elpa/")
))

;; Avoid garbage collection at statup
(setq gc-cons-threshold most-positive-fixnum ; 2^61 bytes
      gc-cons-percentage 0.6)


;; JAVA
(setq lsp-java-java-path "path_to_java_folder/Contents/Home/bin/java"


;; PACKAGES
(package-initialize)

; Fetch the list of packages available 
(unless package-archive-contents (package-refresh-contents))

; Install use-package
(setq package-list '(use-package))
(dolist (package package-list)
(unless (package-installed-p package) (package-install package)))
									

;;(windmove-default-keybindings)

;;; Add ELPA repository
(require 'package)
(setq package-user-dir "~/.emacs.d/elisp/elpa/")
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
;; パッケージ情報の更新
(package-refresh-contents)

;; インストールするパッケージ
(defvar my/favorite-packages
  '(
    ;;;; for auto-complete
    ;auto-complete fuzzy popup pos-tip

    ;;;; buffer utils
    ;popwin elscOAreen yascroll buffer-move

    ;;;; flymake
    ;flycheck flymake-jslint

    ;;;; go
    ;go-mode

    ;;;; python
    ;jedi

    ;;;; helm
    helm

    ;;;; git
    ;magit git-gutter
    ))

;; my/favorite-packagesからインストールしていないパッケージをインストール
(dolist (package my/favorite-packages)
  (unless (package-installed-p package)
    (package-install package)))

;;; set helm
(global-set-key (kbd "C-x h") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)



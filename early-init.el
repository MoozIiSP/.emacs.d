;;; early-init.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2023 mooziisp
;;
;; Author: mooziisp <mooziisp@ldStation>
;; Maintainer: mooziisp <mooziisp@ldStation>
;; Created: 十二月 26, 2023
;; Modified: 十二月 26, 2023
;; Version: 0.0.1
;; Keywords: Symbol’s value as variable is void: finder-known-keywords
;; Homepage: https://github.com/mooziisp/.emacs.d
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:

(setq
 ;; Do not make installed packages available when Emacs starts
 package-enable-at-startup nil
 ;; HACK: Increase the garbage collection (GC) threshold for faster startup.
 ;; This will be overwritten when `gcmh-mode' (a.k.a. the Garbage Collector
 ;; Magic Hack) gets loaded in the `me-gc' module (see "init.el").
 gc-cons-threshold most-positive-fixnum
 ;; Prefer loading newer files
 load-prefer-newer t
 ;; Remove some unneeded UI elements
 default-frame-alist '((tool-bar-lines . 0)
                       (menu-bar-lines . 0)
                       (vertical-scroll-bars)
                       (mouse-color . "blue")
                       (left-fringe . 8)
                       (right-fringe . 13)
                       (fullscreen . maximized))
 ;; Explicitly set modes disabled in `default-frame-alist' to nil
 tool-bar-mode nil
 menu-bar-mode nil
 scroll-bar-mode nil)

;; Better titlebar on MacOS!
(when (and os/mac (featurep 'ns))
  (push '(ns-transparent-titlebar . t) default-frame-alist))

;;; early-init.el ends here

# emacs.d

Personal emacs configuration. Best used with emacs26.

## Features

### Package management

* [`use-package`](https://github.com/jwiegley/use-package)

### Language support, servers and addons

* [`lsp-mode`](https://github.com/emacs-lsp/lsp-mode)
* [`lsp-ui`](https://github.com/emacs-lsp/lsp-ui)
* [`lsp-treemacs`](https://github.com/emacs-lsp/lsp-treemacs)
* [`helm-lsp`](https://github.com/emacs-lsp/helm-lsp)

#### Bash

* [`bash-language-server`](
https://github.com/mads-hartmann/bash-language-server)
* [`shellcheck`](https://github.com/koalaman/shellcheck)

#### C/C++

* [`clangd`](https://github.com/clangd/clangd)
* [`ccls`](https://github.com/MaskRay/ccls)
* [`emacs-ccls`](https://github.com/MaskRay/emacs-ccls)
* [`modern-cpp-font-lock`](
https://github.com/ludwigpacifici/modern-cpp-font-lock)
* [`cppcheck`](https://github.com/danmar/cppcheck)
* [`flycheck-clang-tidy`](https://github.com/ch1bo/flycheck-clang-tidy)

#### CMake

* [`cmake-mode`](
https://github.com/Kitware/CMake/blob/master/Auxiliary/cmake-mode.el)
* [`cmake-language-server`](https://github.com/regen100/cmake-language-server)

#### Dockerfile

* [`dockerfile-mode`](https://github.com/spotify/dockerfile-mode)
* [`dockerfile-language-server-nodejs`](
https://github.com/rcjsuen/dockerfile-language-server-nodejs)

#### Doxygen

* [`highlight-doxygen`](https://github.com/Lindydancer/highlight-doxygen)

#### Markdown/AsciiDoc

* [`adoc-mode`](https://github.com/sensorflo/adoc-mode)
* [`markdown-mode`](https://github.com/jrblevin/markdown-mode)
* [`markdownlint`](https://github.com/markdownlint/markdownlint)

#### Python

* [`python-language-server`](https://github.com/palantir/python-language-server)

#### YAML

* [`yaml-mode`](https://github.com/yoshiki/yaml-mode)
* [`yaml-language-server`](
https://github.com/redhat-developer/yaml-language-server)

#### Verilog

* [`verilator`](https://github.com/verilator/verilator)
* [`hdl_checker`](https://github.com/suoto/hdl_checker)

### Code completion

* [`company`](https://github.com/company-mode/company-mode)
* [`company-box`](https://github.com/sebastiencs/company-box)

### Syntax checker

* [`flycheck`](https://github.com/flycheck/flycheck)
* [`proselint`](https://github.com/amperser/proselint)
* [`textlint`](https://github.com/textlint/textlint)

### Code snippets

* [`yasnippet`](https://github.com/joaotavora/yasnippet)

### File/command searching

#### Helm

* [`helm`](https://github.com/emacs-helm/helm)
* [`helm-swoop`](https://github.com/emacsorphanage/helm-swoop)
* [`helm-ag`](https://github.com/emacsorphanage/helm-ag)
* [`helm-descbinds`](https://github.com/emacs-helm/helm-descbinds)

#### Projectile

* [`projectile`](https://github.com/bbatsov/projectile)
* [`helm-projectile`](https://github.com/bbatsov/helm-projectile)

#### Treemacs

* [`treemacs`](https://github.com/Alexander-Miller/treemacs)
* [`treemacs-projectile`](https://github.com/Alexander-Miller/treemacs)
* [`treemacs-icons-dired`](https://github.com/Alexander-Miller/treemacs)

### 3rd Party UI

* [`dashboard`](https://github.com/emacs-dashboard/emacs-dashboard)
* [`magit`](https://github.com/magit/magit)
* [`undo-tree`](https://www.emacswiki.org/emacs/UndoTree)
* [`emacs-doom-themes`](https://github.com/hlissner/emacs-doom-themes)
* [`doom-modeline`](https://github.com/seagle0128/doom-modeline)
* [`whitespace`](https://www.emacswiki.org/emacs/WhiteSpace)
* [`which-key`](https://github.com/justbur/emacs-which-key)
* [`fill-column-indicator`](https://github.com/alpaker/Fill-Column-Indicator)
* [`rainbow-delimiters`](https://github.com/Fanael/rainbow-delimiters)

### Other

* [`docker-tramp`](https://github.com/emacs-pe/docker-tramp.el)
* [`esup`](https://github.com/jschaf/esup)
* [`Hack`](https://github.com/source-foundry/Hack)

## Installation

1. Clone the repository to your home directory (or wherever your `.emacs.d` is
defined).
1. Open `emacs`.
1. Install `use-package`: `M-x package install RET use-package`
1. If above does not work, package repositories may need to be refreshed. Run
`M-x package-refresh-contents` to do so.
1. Open `init.el` in an `emacs` buffer.
1. Evaluate the buffer: `M-x eval-buffer`

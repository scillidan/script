@echo off

set "LATEX_SRC=%HOME_DIR%\Usr\Source\latex"
cd "%LATEX_SRC%"

:: Found at ctan.org
git clone --depth=1 https://github.com/MartinScharrer/adjustbox
git clone --depth=1 https://github.com/piazzai/arguelles
git clone --depth=1 https://github.com/rolfn/blowup
git clone --depth=1 https://github.com/ummels/ccicons
git clone --depth=1 https://github.com/simon-pfahler/colorblind
git clone --depth=1 https://github.com/rpgtex/DND-5e-LaTeX-Template
git clone --depth=1 https://github.com/pablgonz/enumext
git clone --depth=1 https://github.com/FrankMittelbach/fmitex-parnotes
rem latexmk -pdf parnotes.tex
rem latexmk -c parnotes.tex
git clone --depth=1 https://github.com/braniii/fontawesome
git clone --depth=1 https://github.com/xdanaux/fontawesome-latex
rem cd fontawesome-latex/templates
rem cp fontawesome.tex.template fontawesome.tex
rem latexmk -pdf fontawesome.tex
git clone --depth=1 https://github.com/LaTeX-Package-Repositories/geometry
rem cd geometry
rem latexmk -pdf geometry.pdf
git clone --depth=1 https://github.com/Hightor/gitinfo2
git clone --depth=1 https://github.com/Hightor/gitlog
git clone --depth=1 https://github.com/munepi/graphicxpsd
git clone --depth=1 https://github.com/sfr682k/hackthefootline
git clone --depth=1 https://github.com/yegor256/href-ul
rem cd href-ul
rem pdflatex --shell-escape href-ul.dtx
git clone --depth=1 https://github.com/benjamin-weiss/hsrmbeamertheme
git clone --depth=1 https://github.com/no-preserve-root/invoice2
rem cd invoice2
rem pdflatex --shell-escape invoice2.dtx
git clone --depth=1 https://github.com/yegor256/kdpcover
rem cd kdpcover
rem pdflatex --shell-escape kdpcover.dtx
git clone --depth=1 https://github.com/kmaed/kmbeamer
git clone --depth=1 https://github.com/friedemannbartels/latex-pagelayout
rem cd latex-pagelayout
rem git restore --source=HEAD :/
git clone --depth=1 https://github.com/pmichaillat/latex-presentation
git clone --depth=1 https://github.com/cmhughes/latexindent.pl
rem cd latexindent.pl/documentation
rem latexmk -pdf latexindent.tex
git clone --depth=1 https://github.com/Skillmon/ltx_clrstrip
git clone --depth=1 https://github.com/ljguo1020/magicwatermark
git clone --depth=1 https://github.com/michal-h21/make4ht
rem cd make4ht
rem make
git clone --depth=1 https://github.com/tweh/menukeys
rem cd menukeys
rem make
git clone --depth=1 https://github.com/T-F-S/mercatormap
git clone --depth=1 https://github.com/schlcht/microtype
rem cd microtype
rem pdflatex --shell-escape microtype.tex
git clone --depth=1 https://github.com/polysyllabic/multicolrule
git clone --depth=1 https://github.com/micheld93/oPlotSymbl-LaTeX
git clone --depth=1 https://github.com/LaurensS/pdfprivacy
rem cd pdfprivacy
rem make
git clone --depth=1 https://github.com/phfaist/phfqitltx
rem cd phfqitltx
rem make pdf
git clone --depth=1 https://github.com/reutenauer/polyglossia
rem cd polyglossia/doc
rem xelatex polyglossia.tex
git clone --depth=1 https://github.com/Jinwen-XU/Q-and-A
git clone --depth=1 https://github.com/varkor/quiver
git clone --depth=1 https://github.com/ho-tex/rerunfilecheck
rem cd rerunfilecheck
rem pdflatex --shell-escape rerunfilecheck.dtx
git clone --depth=1 https://github.com/michal-h21/responsive-latex
rem cd responsive-latex
rem make
git clone --depth=1 https://github.com/michal-h21/sectionbreak
rem cd sectionbreak
rem make
git clone --depth=1 https://github.com/nlschn/semesterplanner
git clone --depth=1 https://github.com/atticus-sullivan/semesterplannerLua
git clone --depth=1 https://github.com/anton-vrba/sidenotesplus
git clone --depth=1 https://github.com/urdh/skrapport
git clone --depth=1 https://github.com/jbezos/soulpos
git clone --depth=1 https://github.com/rrthomas/stage
rem cd stage
rem make
rem latexmk -pdf stage-documentation.tex
git clone --depth=1 https://github.com/lvjr/tabularray
rem cd tabularray/nanual
rem latexmk -pdf nanual.tex
git clone --depth=1 https://github.com/michal-h21/tex4ebook
rem cd tex4ebook
rem make
git clone --depth=1 https://github.com/samcarter/tikzducks
rem cd tikzducks
rem make
git clone --depth=1 https://github.com/mscroggs/truchet
git clone --depth=1 https://github.com/Ri-Ga/typed-checklist
rem cd typed-checklist
rem pdflatex --shell-escape typed-checklist.dtx
git clone --depth=1 https://github.com/cspiel/typog
git clone --depth=1 https://github.com/weifanw/unifront
git clone --depth=1 https://github.com/profound-labs/wallcalendar

:: Found at github.com
git clone --depth=1 https://github.com/raphink/geneve_1564
rem cd geneve_1564
rem rm D.png
rem cp images/D.png D.png
rem xelatex geneve_1564.tex
git clone --depth=1 https://github.com/logological/thesis-invitation

pause
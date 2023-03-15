%% This is file "ssputhesis.cls".
%% !Mode:: "TeX:UTF-8"
%% -----------------------------
%% Author: Andre
%% This file is for SSPU undergraduated
%% thesis.
%% 上海第二大学毕业论文 LaTeX 2e 模板
%% c = 299792458 m/s
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{ssputhesis}
    [2021/05/28 v0.1 SSPU Thesis template]
\typeout{SSPU Thesis - 上海第二工业大学本科毕业论文模板 - Andre}

\LoadClass[twoside, zihao=-4, openright]{ctexbook} % 基于 ctexbook，双面右开

\RequirePackage[dvipsnames]{xcolor} % 用于定义颜色
\colorlet{darkred}{red!15!black}  % 深红色

\RequirePackage{geometry}   % 修改页面布局

\geometry{a4paper, top=2.5cm, bottom=2.5cm, inner=3cm, outer=2.5cm}
% A4 大小，上下边距 2.5cm，内边距 3cm，外边距 2.5cm

\RequirePackage{xkeyval}    % 键值对设置（使用 \setkeys{} 设置文档内容）

\define@cmdkeys{ssputhesis}[ssputhesis@]{session, title, longtitle, titleen, institute, major, name, number, mentor, date}[none]
\setkeys{ssputhesis}{
    session=某,   % 届
    title=你还未设置论文题目,   % 论文题目
    longtitle=请在设置中添加 longtitle 设置项\\ 设置长题目，支持强制折行,
    titleen=You have not yet set your English title,    %论文英文题目
    institute=你还没有设置你的学院名称, % 学院名称
    major=你还未设置专业,   % 专业名称
    name=你的名字,  % 姓名
    number=0000000000,  % 学号
    mentor=你的导师,    % 指导教师
    date=2019年1月1日   % 完成日期
}

\providecommand{\ssputhesisset}[1]{\setkeys{ssputhesis}{#1}}
\RequirePackage{xeCJK} % 切换字体
\IfFileExists{STZhongsong.ttf}{% 如果目录下有 STZhongsong.ttf
    \newCJKfontfamily\Zhongsong{STZhongsong.ttf}[AutoFakeBold=4] % 使用华文中宋 ttf 文件
    \newCJKfontfamily\ZhongsongNormal{STZhongsong.ttf}[AutoFakeBold=false] % 普通粗细的华文中宋
}{% 目录下没有，尝试使用系统字体
    \newCJKfontfamily\Zhongsong{STZhongsong}[AutoFakeBold=4] % 使用系统华文中宋
    \newCJKfontfamily\ZhongsongNormal{STZhongsong}[AutoFakeBold=false] % 普通粗细的华文中宋
}
\IfFileExists{STKaiti.ttf}{% 如果目录下有 STKaiti.ttf
    \newCJKfontfamily\Kaiti{STKaiti.ttf}[AutoFakeBold=2]     % 使用华文楷体 ttf 文件
    \newfontfamily\bKaiA{STKaiti.ttf}[AutoFakeBold=2]        % 英文楷体
}{% 目录下没有，尝试使用系统字体
    \newCJKfontfamily\Kaiti{STKaiti}[AutoFakeBold=2]         % 使用系统华文楷体
    \newfontfamily\bKaiA{STKaiti}[AutoFakeBold=2]            % 英文楷体
}
\setmainfont{Times New Roman} % 英文字体使用 Times
\IfFileExists{STSong.ttf}{% 如果目录下有 STSong.ttf
    \setCJKmainfont[AutoFakeBold=2.6]{STSong.ttf} % 使用华文宋体 ttf 文件
}{% 目录下没有，尝试使用系统字体
    \setCJKmainfont[AutoFakeBold=2.6]{STSong}     % 使用系统华文宋体
}

\ctexset { % 设置文档样式
    contentsname = 目\quad 录,
    chapter = {
        number = \arabic{chapter},
        format = {\Zhongsong\bfseries\centering\zihao{3}},
        numberformat += \bfseries,
        pagestyle = fancy,
        fixskip = true,
        beforeskip = 49pt,
        afterskip = 35pt
    },
    section = {
        format = {\bfseries\zihao{4}},
        numberformat += \bfseries,
        aftername = \hspace{0.5em} ,
        beforeskip = 9pt,
        afterskip = 6pt,
    },
    subsection = {
        format = {\bfseries\zihao{-4}},
        numberformat += \bfseries,
        aftername = \hspace{0.5em} ,
        fixskip = true,
        beforeskip = 13pt,
        afterskip = 9pt,
    },
    subsubsection = {   % （非标准）小小节定义，可以根据需求自己修改
        format = {\bfseries\zihao{-4}},
        name = {,)},
        number = {\arabic{subsubsection}},
        numberformat += \bfseries,
        aftername = \hspace{0.5em},
        fixskip = true,
        beforeskip = 10pt,
        afterskip = 7pt,
    }
}

% issue:#1，遇到与 subfig、subfloat 宏包冲突时，请将下面两行中的 subfigure 注释掉
\RequirePackage{subfigure}
\RequirePackage[subfigure]{tocloft}    % 目录格式定制
\renewcommand{\cfttoctitlefont}{\hfill\Zhongsong\bfseries\zihao{3}} % “目录”字体
\renewcommand{\cftaftertoctitle}{\hfill} % 上一行和此行的 \hfill 使“目录”居中
\renewcommand{\cftdotsep}{0.1}      % 点间距
\setlength{\cftbeforechapskip}{6pt}
\setlength{\cftbeforesecskip}{0pt}
\setlength{\cftbeforesubsecskip}{0pt}
\setlength{\cftsecindent}{1em}
\setlength{\cftsubsecindent}{2em}
\setlength{\cftsecnumwidth}{1em}
\setlength{\cftsubsecnumwidth}{2em}
\renewcommand{\cftchapfont}{\bfseries\zihao{-4}}
\renewcommand{\cftsecfont}{\zihao{-4}}
\renewcommand{\cftsubsecfont}{\zihao{-4}}
\renewcommand{\cftchapleader}{\bfseries\cftdotfill{\cftchapdotsep}}
\renewcommand{\cftchapdotsep}{\cftdotsep}
\renewcommand{\numberline}[1]{% 目录中数字所占宽度
\settowidth\@tempdimb{#1\hspace{0.5em}}%
\ifdim\@tempdima<\@tempdimb%
  \@tempdima=\@tempdimb%
\fi%
\hb@xt@\@tempdima{\@cftbsnum #1\@cftasnum\hfil}\@cftasnumb}

\RequirePackage{fancyhdr}   % 页眉页脚
\fancyhf{}
\fancyhead[CO]{\zihao{-5}\ssputhesis@title}
\fancyhead[CE]{\zihao{-5}上海第二工业大学本科毕业设计(论文)}
\fancyfoot[RO,LE]{\thepage}
\renewcommand{\headrulewidth}{0.8pt}    % 页眉线粗细
\setlength{\headheight}{16pt}   % 页眉线与顶端距离
\pagestyle{fancy}
\fancypagestyle{plain}{%
    \fancyhead{} %
    \fancyfoot[RO,LE]{\thepage} %
    \renewcommand{\headrulewidth}{0pt}  %
    \renewcommand{\footrulewidth}{0pt}  %
}

\setcounter{secnumdepth}{3}  % 编号的深度, 3 表示到 subsubsection
\setcounter{tocdepth}{2}     % 目录的深度，2 表示到 subsection
\setlength{\@fptop}{0pt}     % fixed #7：图片在单独页时置顶而非居中

\RequirePackage{amsmath}    % \numberwithin{}{}
\numberwithin{equation}{chapter} % 公式编号以 *.* 为格式
\numberwithin{table}{chapter}    % 表格按章编号 
\providecommand*{\dif}{\ensuremath{\mathop{}\!\mathrm{d}}} % 微分算子 d
\providecommand*{\difx}{\ensuremath{\dif x}} % dx
\providecommand*{\dify}{\ensuremath{\dif y}} % dy

\RequirePackage{tabularx}   % 表格
\RequirePackage{booktabs}   % 三线表 \toprule \midrule \bottomrule
\RequirePackage{boldline}   % \hlineB{num} \clineB{c1-c2}{num}

\RequirePackage{caption}    % 其他环境中的 caption
\DeclareCaptionFont{wuhao}{\zihao{5}}
\captionsetup {
    labelsep=quad,
    font = {wuhao}
}

\providecommand{\tableCapSet}{  % 调节表格标题和上下文的间距
\setlength{\abovecaptionskip}{.1cm} %
\setlength{\belowcaptionskip}{0cm} %
}
\providecommand{\figureCapSet}{ % 调节图片标题和上下文的间距
\setlength{\abovecaptionskip}{.1cm} %
\setlength{\belowcaptionskip}{.1cm} %
}
\providecommand{\codeCapSet}{   % 调节代码环境标题和上下文的间距
\setlength{\abovecaptionskip}{.5cm} %
\setlength{\belowcaptionskip}{-.1cm} %
}

\RequirePackage{listings}   % 代码环境
\RequirePackage{newfloat}
\colorlet{codeblue}{blue!25!black}
\colorlet{codegreen}{green!10!black}
\colorlet{codered}{red!15!blue!50!black}
\colorlet{codeyellow}{yellow!15!blue!50!black}
\colorlet{codegray}{red!50!green!50!blue}
\colorlet{codemauve}{red!60!blue!40!black}
\lstdefinestyle{mystyle}{ %
  basicstyle=%\normalsize
    \ttfamily%
    \lst@ifdisplaystyle\scriptsize\fi
}
\lstset{ %
	backgroundcolor=\color{white},   % 背景颜色
	style=mystyle,         % 代码风格（字体）
	columns=fullflexible,  % 设置列对齐策略
	breaklines=true,       % 自动断行
	captionpos=t,          % 设置 caption 位置为顶部
	tabsize=4,             % 自动 tab 为 4 个空格
	commentstyle=\color{codegreen},  % 注释颜色
	escapeinside={\%*}{*)},          % 逃逸字符（详见 Listings 文档）
    keywordstyle=\color{codeblue},   % 关键词风格
    keywordstyle=[2]\color{codered}, % 关键词风格 2
    keywordstyle=[3]\color{codeyellow}, % 关键词风格 3
	stringstyle=\color{codemauve}\ttfamily, % 字符串风格
	frame=single,    % 框线
	frameround=fttt, % 框线为右上角直角，其余弧形
	keepspaces=true, % 保留空格
}

\lstdefinelanguage{kotlin}{
  comment=[l]{//},
  commentstyle={\color{gray}\ttfamily},
  emph={filter, first, firstOrNull, forEach, lazy, map, mapNotNull, println},
  emphstyle={\color{OrangeRed}},
  identifierstyle=\color{black},
  keywords={!in, !is, abstract, actual, annotation, as, as?, break, by, catch, class, companion, const, constructor, continue, crossinline, data, delegate, do, dynamic, else, enum, expect, external, false, field, file, final, finally, for, fun, get, if, import, in, infix, init, inline, inner, interface, internal, is, lateinit, noinline, null, object, open, operator, out, override, package, param, private, property, protected, public, receiveris, reified, return, return@, sealed, set, setparam, super, suspend, tailrec, this, throw, true, try, typealias, typeof, val, var, vararg, when, where, while},
  keywordstyle={\color{NavyBlue}\bfseries},
  morecomment=[s]{/*}{*/},
  morestring=[b]",
  morestring=[s]{"""*}{*"""},
  ndkeywords={@Deprecated, @JvmField, @JvmName, @JvmOverloads, @JvmStatic, @JvmSynthetic, Array, Byte, Double, Float, Int, Integer, Iterable, Long, Runnable, Short, String, Any, Unit, Nothing},
  ndkeywordstyle={\color{BurntOrange}\bfseries},
  sensitive=true,
  stringstyle={\color{ForestGreen}\ttfamily},
}

\lstdefinelanguage{typescript}{
  morekeywords={typeof, new, true, false, catch, function, return, null, catch, switch, var, if, in, while, do, else, case, break, public, let, class, export, throw, implements, import, this, interface, of},% 定义2类关键字
  keywordstyle=\color{purple}\bfseries,% 2类关键字风格
  classoffset=2,% 关键字类别2
  morekeywords={string, boolean, },% 定义1类关键字
  keywordstyle=\color{OliveGreen}\bfseries,% 1类关键字风格
  classoffset=1,% 关键字类别1
  morekeywords={constructor,},% 定义1类关键字
  keywordstyle=\color{Cerulean}\bfseries,% 1类关键字风格
  classoffset=0,% 关键字类别0
  identifierstyle=\color{black},% 标识符风格
  sensitive=true,% 大小写敏感。
  comment=[l]{//},% 定义单行注释
  morecomment=[s]{/*}{*/},% 定义多行注释
  commentstyle=\color{MidnightBlue}\ttfamily,% 注释风格
  stringstyle=\color{Orchid}\ttfamily,% 字符串风格
  morestring=[b]',% 定义字符串
  morestring=[b]"% 定义字符串
}

\renewcommand{\lstlistingname}{清单} % 代码环境名称
\RequirePackage{graphicx} % \includegraphics{}

\RequirePackage[super]{cite} % 引用风格为右上角
\renewcommand\citeform[1]{[#1]} % 引用风格为方括号

\def\@font@warning#1{} % 消除字体警告

\RequirePackage[
    colorlinks,
    linkcolor=black,
    citecolor=black]{hyperref}

\def\equationautorefname{式}
\def\footnoteautorefname{注}
\def\itemautorefname{项}
\def\figureautorefname{图}
\def\tableautorefname{表}
\def\partautorefname{篇}
\def\appendixautorefname{附录}
\def\chapterautorefname{章}
\def\sectionautorefname{节}
\def\subsectionautorefname{小小节}
\def\paragraphautorefname{段落}
\def\subparagraphautorefname{子段落}
\def\FancyVerbLineautorefname{行}
\def\theoremautorefname{定理}
\providecommand*{\chapref}[1]{\hyperref[{#1}]{第 \ref*{#1} 章}}
\providecommand*{\secref}[1]{\hyperref[{#1}]{第 \ref*{#1} 节}}
\providecommand*{\subsecref}[1]{\hyperref[{#1}]{第 \ref*{#1} 小节}}

\RequirePackage{enumitem}
\setlist[enumerate,itemize,description]{noitemsep}
\setlist[enumerate,itemize,description,2]{leftmargin=10pt,nosep}

\renewcommand{\labelenumi}{(\theenumi)}
\renewcommand{\theenumii}{\arabic{enumii}}
\renewcommand{\labelenumii}{\theenumii)}

\newenvironment{citelist}{% 参考文献
    \begin{thebibliography}{99}%
    \addcontentsline{toc}{chapter}{参考文献}%
    \phantomsection %
    \zihao{5} %
    \setlength{\itemsep}{0pt} %
    }{%
    \end{thebibliography}%
}

\newenvironment{code}{ % 代码环境
\codeCapSet\captionsetup{type=lstlisting}}{}

\RequirePackage[absolute]{textpos}  % textblock
\RequirePackage{setspace}   % parbox
\RequirePackage{array}      % tabular
\RequirePackage{etoolbox}   % \patchcmd{}{}{}
\RequirePackage{afterpage}  % \afterpage

\providecommand{\abstractcn}{ % 中文摘要
    \cleardoublepage %
    %\gobbletocpage %
    \addtocontents{toc}{\cftpagenumbersoff{chapter}} %
    \chapter{摘\texorpdfstring{\quad}{}要} % 使用 \texorpdfstring 消除警告信息
    \thispagestyle{empty} %
    %\restoretocpage %
}
\providecommand{\keywordscn}{ %
    \afterpage{\thispagestyle{empty}} %
    \par\vspace{\baselineskip}\noindent{\bfseries 关键词：} %
}
\providecommand{\abstracten}{%
    \cleardoublepage %
    %\gobbletocpage %
    \chapter{ABSTRACT} %
    \thispagestyle{empty} %
    \addtocontents{toc}{\cftpagenumberson{chapter}} %
    %\restoretocpage %
}
\providecommand{\keywordsen}{ %
    \afterpage{\thispagestyle{empty}} %
    \\\\\noindent{\bfseries KEY WORDS: } %
}
\providecommand{\thanking}{\chapter{致\texorpdfstring{\quad}{}谢}}
\providecommand{\includefrontmatter}{
\setlength{\TPHorizModule}{1cm}  % textblock horiz length reference
\setlength{\TPVertModule}{1cm}   % textblock verti length reference
\frontmatter
\thispagestyle{empty}
\begin{titlepage}
\makeatletter
\noindent\hspace{0.3cm}\includegraphics[width=6.4cm]{element/usst-text-cnen.pdf}%
\\[2cm]
\begin{center}
    {\bfseries\Kaiti\fontsize{33}{35}\selectfont 本科毕业设计(论文)} \\[0.19cm]
    {\bfseries FINAL PROJECT/THESIS OF UNDERGRADUATE}   \\[0.9ex]
    {\bfseries\bKaiA\zihao{3} (\ssputhesis@session}{\bfseries\Kaiti\zihao{3} 届}{\bfseries\Kaiti\zihao{3} )}   \\
    \rule{0em}{15.4ex} \\
    \parbox{13.2cm}{\centering\bfseries\Zhongsong\zihao{2}\ssputhesis@longtitle}  \\
    \rule{0em}{7.2ex} \\
    \parbox{13.2cm}{\centering\bfseries\zihao{-2}\ssputhesis@titleen}
    \begin{textblock}{13.2}(3.8,18.5)
        \bfseries\Kaiti\zihao{4}
        \renewcommand\arraystretch{1.3}
        \begin{tabular}{>{\centering\arraybackslash}p{3.8cm}>{\centering\arraybackslash\ZhongsongNormal}p{7.5cm}}
        学\hspace{2\ccwd}院 & \ssputhesis@institute \\ \clineB{2-2}{2}
        专\hspace{2\ccwd}业 & \ssputhesis@major     \\ \clineB{2-2}{2}
        学生姓名            & \ssputhesis@name      \\ \clineB{2-2}{2}
        学\hspace{2\ccwd}号 & \ssputhesis@number    \\ \clineB{2-2}{2}
        指导教师            & \ssputhesis@mentor    \\ \clineB{2-2}{2}
        完成日期            &  \ssputhesis@date     \\ \clineB{2-2}{2}
        \end{tabular}
    \end{textblock}
\end{center}
\makeatother
\end{titlepage}
\thispagestyle{empty}
%\afterpage{thispagestyle{empty}}
\cleardoublepage
\setcounter{page}{1}
\chapter*{承诺书}
\thispagestyle{empty}
\makeatletter
本人郑重承诺：所呈交的毕业论文“\ssputhesis@title ”是在导师的指导下，严格按照学校和学院的有关规定由本人独立完成。文中所引用的观点和参考资料均已标注并加以注释。论文研究过程中不存在抄袭他人研究成果和伪造相关数据等行为。如若出现任何侵犯他人知识产权等问题，本人愿意承担相关法律责任。
\makeatother
\\ \rule{0em}{20ex}
\begin{flushright}
    \renewcommand\arraystretch{1.0}
    \begin{tabularx}{9.5cm}{*{2}{>{\raggedleft\arraybackslash}X}}
        承诺人(签名)： &    \\  \cline{2-2}
        & \\
        日期： & 年 \hspace{1\ccwd} 月 \hspace{1\ccwd} 日 \\
    \end{tabularx}
\end{flushright}
\afterpage{\thispagestyle{empty}}
\input{element/abstract.tex}

\cleardoublepage
\pagenumbering{roman}
\tocloftpagestyle{plain}
\tableofcontents
\thispagestyle{plain}
\afterpage{\thispagestyle{plain}}
\cleardoublepage
}

\endinput

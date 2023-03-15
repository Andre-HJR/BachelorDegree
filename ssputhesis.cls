%%% This is file "ssputhesis.cls".
%%% !Mode:: "TeX:UTF-8"
%%% -----------------------------
%%% Author: Andre
%%% This file is for SSPU undergraduated
%%% thesis.
%%% 上海第二大学毕业论文 LaTeX 2e 模板
%%% c = 299792458 m/s

%% The MIT License (MIT)
%% Copyright © 2022 <copyright holders>
%% 
%% Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files 
%% (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, 
%% publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, 
%% subject to the following conditions:
%% 
%% The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
%% 
%% THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
%% MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR
%% ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH 
%% THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

%%
%%     Date                Author                    Comment
%%  ----------------------------------------------------------------------------------------------
%%   2022-11-1            Andre                      基本完成相关文档格式规范的编写，开始为格式文档提供必要的注释 \
%%                                                       \ MIT-LICENSE, Basic License, Add
%%                                                       \ 格式化文档的注释
%%
%%
%%
%%
%%
%%
%%

% 2022-11-1 Andre 前置的一些声的明
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{ssputhesis}
    [2021/05/28 v0.1 SSPU Thesis template]
\typeout{SSPU Thesis - 上海第二工业大学本科毕业论文模板 - Andre}

%% @title: LoadClass
%% @date: 2022-11-1
%% @author: Andre
%% `ssputhesis` 这篇结构文档，是基于 ctexbook ， 同时使用 xelatex 进行编译的
%% 定义了 ssputhesis 的默认结构为 双面右开， 字jjj号默认为小四
\LoadClass[twoside, zihao=-4, openright]{ctexbook} % 基于 ctexbook，双面右开

% 2022-11-1 Andre 加载颜色定义所需要的宏包 -- xcolor
\RequirePackage[dvipsnames]{xcolor} % 用于定义颜色
\colorlet{darkred}{red!15!black}  % 深红色

% 2022-11-1 Andre 加载修改布局需要的宏包 -- geometry
\RequirePackage{geometry}
% 2022-11-1 Andre 修改页面相关的布局 A4 大小，上下边距 2.5cm，内边距 3cm，外边距 2.5cm
\geometry{a4paper, top=2.54cm, bottom=2.54cm, inner=3.17cm, outer=3.17cm}



\RequirePackage{xkeyval}
% 2022-11-1 Andre 键值对设置（使用 \setkeys{} 设置文档内容）, 用于页面的设置
\define@cmdkeys{ssputhesis}[ssputhesis@]{session, title, longtitle, titleen, institute, major, name, number, mentor, date, class}[none]
% 2022-11-1 Andre 对相关的键值进行初始化
\setkeys{ssputhesis}{
    title=你还未设置论文题目,
    longtitle=请在设置中添加 longtitle 设置项 \\ 设置长题目， 支持强制折行,
    titleen=You have not yet set your English title,
    number=你的学号,
    name=你的名字,
    class=你的班级,
    major=你还未设置专业,
    institute=你还没设置你的学院名称,
    session=入学时间,
    mentor=指导老师,
    date=日期,
}
% 2022-11-1 Andre 提供简化的 \setkeys 命令
\providecommand{\ssputhesisset}[1]{\setkeys{ssputhesis}{#1}}


% 2022-11-1 Andre 设置全局的英文默认字体为 TimesNewRoman
\setmainfont{Times New Roman}


% 2022-11-1 Andre 加载设置中文字体所需要的宏包 -- xeCJK
\RequirePackage{xeCJK}

\IfFileExists{STZhongsong.ttf}{% 2022-11-1 Andre 如果目录下有 STZhongsong.ttf
    \newCJKfontfamily\Zhongsong{STZhongsong.ttf}[AutoFakeBold=4] % 2022-11-1 Andre 使用华文中宋 ttf 文件
    \newCJKfontfamily\ZhongsongNormal{STZhongsong.ttf}[AutoFakeBold=false] % 2022-11-1 Andre 普通粗细的华文中宋
}{% 2022-11-1 Andre 目录下没有，尝试使用系统字体
    \newCJKfontfamily\Zhongsong{STZhongsong}[AutoFakeBold=4] % 2022-11-1 Andre 使用系统中宋
    \newCJKfontfamily\ZhongsongNormal{STZhongsong}[AutoFakeBold=false] % 2022-11-1 Andre 普通粗细的中宋
}
% 2022-11-1 Andre 黑体
% 2022-11-1 Andre  FIXME: 这里并没有找到比较合适的华文黑体，加粗操作之后相应
%                         的字体会出现比较糟糕的乱码，于是就采用 Overleaf
%                         默认提供的字体 FandolHei
\IfFileExists{_STHeiti.ttf}{% 2022-11-1 Andre 如果目录下有 _STHeiti.ttf
    \newCJKfontfamily\HeitiBlod{STHeiti.ttf}[AutoFakeBold=2.6]
    \newCJKfontfamily\Heiti{STHeiti.ttf}[AutoFakeBold=0]
}{% 2022-11-1 Andre 目录下没有，尝试使用系统字体
    \newCJKfontfamily\HeitiBlod{FandolHei}[AutoFakeBold=4]
    \newCJKfontfamily\Heiti{FandolHei}[AutoFakeBold=0]
}
% 2022-11-1 Andre 宋体
\IfFileExists{STSong.ttf}{% 如果目录下有 STSong.ttf
    \newCJKfontfamily\SongtiBlod{STSong.ttf}[AutoFakeBold=4]
    \newCJKfontfamily\Songti{STSong.ttf}
}{% 2022-11-1 Andre 目录下没有，尝试使用系统字体
    \newCJKfontfamily\SongtiBlod{FandolSong}[AutoFakeBold=4]
    \newCJKfontfamily\Songti{FandolSong}
}
% 2022-11-1 Andre 楷体
\IfFileExists{STKaiti.ttf}{% 2022-11-1 Andre 如果目录下有 STKaiti.ttf
    \newCJKfontfamily\Kaiti{STKaiti.ttf}[AutoFakeBold=0]     % 2022-11-1 Andre  使用华文楷体 ttf 文件
    \newCJKfontfamily\KaitiBold{FandolKai}[autoFakeBold=4]
    \newfontfamily\bKaiA{STKaiti.ttf}[AutoFakeBold=2]        % 2022-11-1 Andre 英文楷体
}{% 2022-11-1 Andre 目录下没有，尝试使用系统字体
    \newCJKfontfamily\KaitiBold{FandolKai}[autoFakeBold=4]
    \newCJKfontfamily\Kaiti{FandolKai}[AutoFakeBold=0]
}


%% @title: ctexset
%% @date: 2022-11-1
%% @author: Andre
%% 设置文档样式
\ctexset {
    % 2022-11-1 Andre 将目录居中
    contentsname = {\centering{目\quad 录}},
    chapter = {
        number = \arabic{chapter},
        format = {\Heiti\bfseries\centering\zihao{4}},
        numberformat += \bfseries,
        pagestyle = plain,
        fixskip = true,
        beforeskip = 49pt,
        afterskip = 35pt
    },
    section = {
        format = {\Heiti\bfseries\zihao{-4}},
        numberformat += \bfseries,
        aftername = \hspace{0.5em} ,
        beforeskip = 9pt,
        afterskip = 6pt,
    },
    subsection = {
        format = {\Kaiti\bfseries\zihao{-4}},
        numberformat += \bfseries,
        aftername = \hspace{0.5em} ,
        indent=2em,
        fixskip = true,
        beforeskip = 13pt,
        afterskip = 9pt,
    },
    % 2022-11-1 Andre  （非标准）小小节定义，可以根据需求自己修改，同样该 \
    %                      \ 目录层级不会显示在目录中，根据自己的需要进行 \
    %                      \ 相应的添加。
    subsubsection = {   
        format = {\bfseries\zihao{-4}},
        name = {(,)},
        number = {\arabic{subsubsection}},
        numberformat += \bfseries,
        aftername = \hspace{0.5em},
        indent = 4em,
        fixskip = true,
        beforeskip = 10pt,
        afterskip = 7pt,
    }
}

% 2022-11-1 Andre TODO: issue:#1，遇到与 subfig、subfloat 宏包冲突时，请将下面两行中的 subfigure 注释掉
\RequirePackage{subfigure}
\RequirePackage[subfigure]{tocloft}    % 目录格式定制
\RequirePackage{float}    % 目录格式定制

% 2022-11-1 Andre 将目录居中，并设置字体为黑体， 小二
\renewcommand{\cfttoctitlefont}{\hfill\Heiti\bfseries\zihao{-2}}
\renewcommand{\cftaftertoctitle}{\hfill}
% 2022-11-1 Andre 点间距
\renewcommand{\cftdotsep}{1}
% 2022-11-1 Andre 设置相关的目录文字格式
\ctexset { chapter = { name={}, number = {\chinese {chapter}、} } }
\ctexset { section = { name={}, number= {（\chinese {section}）} } } 
\ctexset { subsection = { name={}, number= {\arabic{subsection}} } } 
\renewcommand{\cftsubsecfont}{\Kaiti}
\renewcommand{\cftsecfont}{\Songti}
\renewcommand{\cftchapfont}{\Songti}
\setlength{\cftbeforechapskip}{6pt}
\setlength{\cftbeforesecskip}{0pt}
\setlength{\cftbeforesubsecskip}{0pt}
\setlength{\cftsecindent}{1em}
\setlength{\cftsubsecindent}{2em}
\setlength{\cftsecnumwidth}{1em}
\setlength{\cftsubsecnumwidth}{2em}
\renewcommand{\cftchapfont}{\Songti\bfseries\zihao{4}}
\renewcommand{\cftsecfont}{\Songti\zihao{-4}}
\renewcommand{\cftsubsecfont}{\Kaiti\zihao{-4}}
\renewcommand{\cftchapleader}{\bfseries\cftdotfill{\cftchapdotsep}}
\renewcommand{\cftchapdotsep}{\cftdotsep}
\renewcommand{\numberline}[1]{% 目录中数字所占宽度
\settowidth\@tempdimb{#1\hspace{0.5em}}%
\ifdim\@tempdima<\@tempdimb%
  \@tempdima=\@tempdimb%
\fi%
\hb@xt@\@tempdima{\@cftbsnum #1\@cftasnum\hfil}\@cftasnumb}

% 2022-11-3 Andre 为页眉添加相关的设置
\RequirePackage{fancyhdr}   % 页眉页脚
\fancyhf{}
\fancypagestyle{plain}{
    % 2022-11-3 Andre plain 需要头部的 Logo 和 底部的页码
    \fancyhead{\centering\includegraphics[scale=1]{element/header.png}}
    \fancyfoot[CO,CE]{\thepage}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{plains}{%
    % 2022-11-3 Andre plain 需要头部的 Logo
    \fancyhead{\centering\includegraphics[scale=1]{element/header.png}}
    \fancyfoot[CO,CE]{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}
\pagestyle{plain}

% 2022-11-3 Andre 编号的深度, 3 表示到 subsubsection
\setcounter{secnumdepth}{3}
% 2022-11-3 Andre 目录的深度，2 表示到 subsection
\setcounter{tocdepth}{2}
% 2022-11-3 Andre fixed #7：图片在单独页时置顶而非居中
\setlength{\@fptop}{0pt}

% 2022-11-3 Andre 提供相关的数学支持
\RequirePackage{amsmath}
% 2022-11-3 Andre \numberwithin{}{}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{mathtools}

% 2022-11-3 Andre 公式编号以 *.* 为格式
\numberwithin{equation}{chapter}
% 2022-11-3 Andre 表格按章编号 
\numberwithin{table}{chapter}

% 2022-11-3 Andre 微分算子 d
\providecommand*{\dif}{\ensuremath{\mathop{}\!\mathrm{d}}}
% 2022-11-3 Andre dx
\providecommand*{\difx}{\ensuremath{\dif x}}
% 2022-11-3 Andre dy
\providecommand*{\dify}{\ensuremath{\dif y}}

% 2022-11-3 Andre 表格
\RequirePackage{tabularx}
% 2022-11-3 Andre 三线表 \toprule \midrule \bottomrule
\RequirePackage{booktabs}
% 2022-11-3 Andre \hlineB{num} \clineB{c1-c2}{num}
\RequirePackage{boldline}

% 2022-11-3 Andre 其他环境中的 caption
\RequirePackage{caption}
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

% 2022-11-3 Andre 代码环境
\RequirePackage{listings}
\RequirePackage{newfloat}
\colorlet{codeblue}{blue!25!black}
\colorlet{codegreen}{green!10!black}
\colorlet{codered}{red!15!blue!50!black}
\colorlet{codeyellow}{yellow!15!blue!50!black}
\colorlet{codegray}{red!50!green!50!blue}
\colorlet{codemauve}{red!60!blue!40!black}
\lstdefinestyle{mystyle}{ %
  basicstyle=
      % 2022-11-3 Andre \normalsize
    \ttfamily
    \lst@ifdisplaystyle\scriptsize\fi
}
\lstset{
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



\newcommand{\leftleftrightarrow}{\leftarrow\mkern-14mu\leftrightarrow}
\newcommand{\leftrightrightarrow}{\leftrightarrow\mkern-14mu\rightarrow}
\newcommand{\leftleftrightrightarrow}{\leftrightarrow\mkern-14mu\leftrightarrow}
\newcommand{\lhdminus}{\lhd\mkern-14mu-}
\newcommand{\rhdminus}{\rhd\mkern-14mu-}
\newcommand{\lhdplus}{\lhd\mkern-9mu-}
\newcommand{\partialrightarrow}{\mkern6mu\mapstochar\mkern-6mu\rightarrow}
\newcommand{\partialrightarrowtail}{\mkern9mu\mapstochar\mkern-9mu\rightarrowtail}
\newcommand{\partialtwoheadrightarrow}{\mkern6mu\mapstochar\mkern-6mu\twoheadrightarrow}
\newcommand{\twoheadrightarrowtail}{\rightarrowtail\mkern-18mu\twoheadrightarrow}

\renewcommand{\lstlistingname}{代码} % 代码环境名称
\RequirePackage{graphicx} % \includegraphics{}

\RequirePackage[backend=biber,style=gb7714-2015, texencoding=UTF8]{biblatex}%标注(引用)样式citestyle，著录样式bibstyle都采用gb7714-2015样式
\addbibresource[location=local]{reference.bib}
% \RequirePackage[super]{cite} % 引用风格为右上角
% \renewcommand\citeform[1]{[#1]} % 引用风格为方括号

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


%% @title: 参考文献的相关处理
%% @author: Andre
%% @date: 2022-11-1
%% 这里主要是解决参考文献的一些问题， 然后直接在目录中创建 chapter 级别的目录
%% \newenvironment{citelist}{% 参考文献
%%     % \begin{thebibliography}{99}%
%%     \addcontentsline{toc}{chapter}{参考文献}%
%%     \phantomsection %
%%     \zihao{5} %
%%     \setlength{\itemsep}{0pt} %
%%     }{%
%%     % \end{thebibliography}%
%% }

\newenvironment{code}{ % 代码环境
\codeCapSet\captionsetup{type=lstlisting}}{}
\RequirePackage[absolute]{textpos}  % textblock
\RequirePackage{setspace}   % parbox
\RequirePackage{array}      % tabular
\RequirePackage{etoolbox}   % \patchcmd{}{}{}
\RequirePackage{afterpage}  % \afterpage
\providecommand{\abstractcn}{ % 中文摘要
    \cleardoublepage %
    % \addtocontents{toc}{\cftpagenumbersoff{chapter}} %
    % \chapter*{\zihao{-2}{\ssputhesis@title}\\\vspace{2em}\zihao{3}{摘\texorpdfstring{\quad}{}要}} % 使用 \texorpdfstring 消除警告信息
    \begin{center}
    {\zihao{-2}{{\HeitiBlod\ssputhesis@title}}\\\vspace{1.5em}\zihao{3}{{\HeitiBlod\text{摘要}}}} % 使用 \texorpdfstring 消除警告信息
    \end{center}
    \thispagestyle{plains} %
}
\providecommand{\keywordscn}{ %
    \afterpage{\thispagestyle{empty}} %
    \par\vspace{\baselineskip}\noindent{\bfseries \Heiti{关键词：}} %
}
\providecommand{\abstracten}{%
    \cleardoublepage
    % \chapter*{\zihao{-2}{\ssputhesis@titleen}\\\vspace{2em}\zihao{3}{ABSTRACT}}
    \begin{center}
        {\zihao{-2}{{\textbf{\ssputhesis@titleen}}}\\\vspace{1.5em}\zihao{3}{{\textbf{ABSTRACT}}}}
    \end{center}
    % \addtocontents{toc}{\cftpagenumberson{chapter}} %
    \thispagestyle{plains} %
}
\providecommand{\keywordsen}{ %
    \afterpage{\thispagestyle{empty}} %
    \noindent{\bfseries Key words: } %
}
\providecommand{\thanking}{\chapter*{致谢}\addcontentsline{toc}{chapter}{致\texorpdfstring{\quad}{}谢}}
\providecommand{\append}{\chapter*{附录}\addcontentsline{toc}{chapter}{附\texorpdfstring{\quad}{}录}}



%% @title: \includefrontmatter
%% @author: Andre
%% @date: 2022-11-1
\providecommand{\includefrontmatter}{
\setlength{\TPHorizModule}{0.8cm}  % textblock horiz length reference
\setlength{\TPVertModule}{0.65cm}   % textblock verti length reference
\frontmatter
\thispagestyle{empty}
\setlength{\headheight}{0.1cm}
\begin{titlepage}
\makeatletter
\begin{center}\includegraphics[width=6cm]{element/CollegeName.jpg}\end{center}
\begin{center}
    {\bfseries\HeitiBlod\fontsize{36}{54}\selectfont 本科毕业设计(论文)} \\[1cm]
    \centering\includegraphics[width=4.5cm]{element/CollegeIcon.png}
    \begin{textblock}{13.2}(3.8,18.5)
        \bfseries\Heiti\zihao{2}
        \renewcommand\arraystretch{1.0}
        \begin{tabular}{>{\centering\arraybackslash}p{3.8cm}>{\centering\arraybackslash\Heiti\zihao{2}}p{10.5cm}}
        题\hspace{2\ccwd}目:            & \ssputhesis@title                      \\ \clineB{2-2}{2}
        英文题目:                       & {\zihao{4}{{\ssputhesis@titleen}}}      \\ \clineB{2-2}{2}
        学\hspace{2\ccwd}号:            & \ssputhesis@number                     \\ \clineB{2-2}{2}
        姓\hspace{2\ccwd}名:            & \ssputhesis@name                       \\ \clineB{2-2}{2}
        班\hspace{2\ccwd}级:            & \ssputhesis@class                      \\ \clineB{2-2}{2}
        专\hspace{2\ccwd}业:            & \ssputhesis@major                      \\ \clineB{2-2}{2}
        学部(院):\hspace{1\ccwd}        & \ssputhesis@institute                  \\ \clineB{2-2}{2}
        入学时间:                       & \ssputhesis@session                    \\ \clineB{2-2}{2}
        指导教师:                       & \ssputhesis@mentor                     \\ \clineB{2-2}{2}
        日\hspace{2\ccwd}期:            &  \ssputhesis@date                      \\ %\clineB{2-2}{2}
        \end{tabular}
    \end{textblock}
\end{center}
\makeatother
\end{titlepage}
\thispagestyle{empty}
%\afterpage{thispagestyle{empty}}
\cleardoublepage
\setcounter{page}{1}
\begin{center}\zihao{-2}{毕业设计（论文）独创性声明}\end{center}
\thispagestyle{plains}
\makeatletter
本人所呈交的毕业论文是在指导教师指导下进行的工作及取得的成果。除文中已经注明的内容外，本论文不包含其他个人已经发表或撰写过的研究成果。对本文的研究做出重要贡献的个人和集体，均已在文中作了明确说明并表示谢意。
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
\afterpage{\thispagestyle{empty}}

\cleardoublepage

\tocloftpagestyle{plains}
\tableofcontents
\thispagestyle{plains}
\afterpage{\thispagestyle{empty}}
\cleardoublepage
}

\endinput
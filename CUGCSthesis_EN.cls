%
%	HustGraduPaper.sty
%	En Thesis template for sino-foreign cooperation project of CUG and iit
%	@author cyan
% 	@date 2024/04/01
%	@version v1.0.0
%
%	本模板遵循MIT License
%


%	---	定义的新的类
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CUGCSthesis_EN}[China University of Geosciences Thesis Template]
%\NeedsTeXFormat{LaTeX2e}




%
%	---	载入Class
%
\LoadClass[a4paper]{article}

%\LoadClass[ scheme=chinese, heading=true, %nofonts,
 %   12pt, utf8, a4paper, punct, fancyhdr, twoside, openright,
  %  amstex]{article}

%%%%%%%%%%%%%%%%%%%%%%% Load Packages %%%%%%%%%%%%%%%%%%%%%%
%页面基本设置
\RequirePackage[boldfont,slantfont]{xeCJK}
\RequirePackage[cs4size,UTF8,winfonts,heading=true]{ctex}
\RequirePackage{xifthen, xparse, xstring, fancyhdr, etoolbox}

\RequirePackage{amstext, amsmath, amssymb, amsfonts}
\RequirePackage{mathrsfs, bm, mathtools}

\RequirePackage{graphicx}
\RequirePackage[labelformat=simple]{subcaption}

\RequirePackage{array, longtable, makecell, tabu, booktabs}

\RequirePackage{enumitem}
\RequirePackage{indentfirst}



\RequirePackage[a4paper,
    marginparwidth=0pt, marginparsep=0pt,
    top=3cm, bottom=3cm, left=3cm, right=3cm,
    headheight=2.5cm, headsep=10pt, footskip=2cm]{geometry}

%
%	---	定义字体
%

\RequirePackage{xeCJK}
\RequirePackage{fontspec}

\setCJKmainfont[
        BoldFont =SimHei,
        ItalicFont = STKaiti,
        %BoldItalicFont = STKaiti-SC-Bold,
    ]{SimSun}
\setCJKsansfont[
    BoldFont = SimHei,
    ]{SimSun}
\setCJKmonofont[
    BoldFont = SimHei,
   ]{SimSun}

\setCJKfamilyfont{song}{SimSun}
\setCJKfamilyfont{hei}{SimHei}
\newcommand{\song}{\CJKfamily{song}}    % 宋体   (Windows自带simsun.ttf)
\newcommand{\hei}{\CJKfamily{hei}}      % 黑体   (Windows自带simhei.ttf)

%\setCJKmainfont[BoldFont=SimHei,ItalicFont=KaiTi]{SimSun}
\setmainfont[
    ItalicFont = {Times New Roman Italic},
    BoldFont = {Times New Roman Bold},
    BoldItalicFont = {Times New Roman Bold Italic},
    %SmallCapsFont = {Bodoni 72 Smallcaps},
    SmallCapsFeatures={Letters=SmallCaps},
]{Times New Roman}
\newcommand{\TimesNewRoman}{Times New Roman}    % 黑体   (Windows自带simhei.ttf)
\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont}
\newcommand{\yihao}{\fontsize{28pt}{\baselineskip}\selectfont}
\newcommand{\erhao}{\fontsize{21pt}{\baselineskip}\selectfont}
\newcommand{\xiaoerhao}{\fontsize{18pt}{\baselineskip}\selectfont}
\newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}
\newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont}
\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}
%	---	定义页眉页脚
%
%定义1.5倍行距
%\renewcommand{\baselinestretch}{1.2}

%使用fancyhdr库
\RequirePackage{fancyhdr}
\RequirePackage{tikz}%用于绘制页脚横线
%设置页眉样式
\newcommand{\headstyle}{
%中国地质大学（武汉）学士学位论文

	\fancyhead[OC]{\wuhao\song Bachelor's thesis of China University of Geosciences }
	\fancyhead[OR]{\wuhao\song \thepage}

	\fancyhead[EC]{\wuhao\song \@author：\@title }
	\fancyhead[EL]{\wuhao\song \thepage}

}


%设置页脚样式
\newcommand{\footstyle}{%\fancyfoot[C]{\huawenzhongsong \zihao{5} \thepage}
	%\fancyfoot[L]{\tikz{\node (A) at (0,0) {}; \draw (0,1pt)--(6.7cm,1pt);}}
	%\fancyfoot[R]{\tikz{\node (A) at (0,0) {}; \draw (0,1pt)--(-6.7cm,1pt);}}
}
\pagestyle{fancy}
\fancyhf{} %清空原有样式
\headstyle
\footstyle

%定义一种新的格式叫做main
\fancypagestyle{main}{%
	\fancyhf{} %清空原有样式
	\headstyle
	\footstyle
    \renewcommand{\headrulewidth}{0.4pt}
}

%	---	标题样式设计
\RequirePackage{titlesec}
\ctexset{section={
        afterindent=true,
        %pagestyle=cug@pagestyle,
        aftername={\quad},
        format={\centering\sffamily\bfseries\sanhao\hei},
        beforeskip={50pt},
        afterskip={50pt},
        %parskip={2ex},
        name={Chapter},
        }
        } %节
\newcommand{\sectionbreak}{\clearpage} %小节从新的一页开始
\ctexset{subsection={
        afterindent=true,
        %pagestyle=cug@pagestyle,
        aftername={\quad},
        format={\centering\sffamily\bfseries\sihao \hei},
       % beforeskip={1ex},
       % afterskip={1ex},
        }
         } %小节
\ctexset{subsubsection={
        afterindent=true,
        aftername={\quad},
        format={\raggedright \hei \bfseries \xiaosihao}
        }
} %小小节
\ctexset{paragraph={beforeskip={0em}}}
\ctexset{subparagraph={beforeskip={0em}}}
%\titlespacing*{\section} {0pt}{2em}{2em}
%\titlespacing*{\section}
%{0pt}{0}{2\baselineskip}
\titlespacing*{\subsection}
{0pt}{\baselineskip}{\baselineskip}
\titlespacing*{\subsubsection}
{0pt}{\baselineskip}{\baselineskip}

%
%	---	定义新的中英文摘要环境
%
%中文摘要环境
\newenvironment{cnabstract}[1]{
	\def \cnkeyword {#1}
	\clearpage
	\thispagestyle{empty}
	%\phantomsection
	%\addcontentsline{toc}{section}{摘要}
	\begin{center} \hei \bfseries \sanhao 摘 \hspace{2em} 要 \end{center}
	
}{
	\vspace{1em}
	\paragraph{\song \xiaosihao \bfseries 关键词：} \cnkeyword
	\clearpage
}

%英文摘要环境
\newenvironment{enabstract}[1]{
	\def \enkeyword {#1}
	\clearpage
	\thispagestyle{empty}
	%\phantomsection
	%\addcontentsline{toc}{section}{Abstract}
	\begin{center} \bfseries \sanhao Abstract \end{center}
	
}{
	\vspace{1em}
	\paragraph{\song \xiaosihao \bfseries Key Words: } \enkeyword
	\clearpage
}


%设置附录

\RequirePackage[title,titletoc]{appendix}
\renewcommand{\appendixname}{Appendix}


%	---	定义新的目录页面
%
\RequirePackage{tocloft}
\tocloftpagestyle{empty}
\renewcommand{\cfttoctitlefont}{\hei \sanhao \bfseries }
%\renewcommand{\contentsname}{目录}
\renewcommand{\contentsname}{\hspace*{\fill}Contents\hspace*{\fill}}
%\renewcommand{\cftaftertoctitle}{\hfill}
\setlength{\cftbeforesecskip}{0pt}
\setlength{\cftbeforesubsecskip}{0pt}
\setlength{\cftbeforesubsubsecskip}{0pt}
\renewcommand{\cftsecdotsep}{\cftdotsep} %设置Section引导点
\setlength{\cftsecindent}{0em}
\setlength{\cftsubsecindent}{1\ccwd}
\setlength{\cftsubsubsecindent}{2\ccwd}
\renewcommand{\cftsecfont}{\sihao\song}
\renewcommand{\cftsubsecfont}{\xiaosihao\song}
\renewcommand{\cftsubsubsecfont}{\xiaosihao\song}



%	---	设置图表格式
%
%设置图表标题的计数方式
\makeatletter
\@addtoreset{figure}{section}
\@addtoreset{table}{section}
\renewcommand{\thefigure}{\ifnum \c@section>\z@ \thesection.\fi \@arabic\c@figure}
\renewcommand{\thetable}{\ifnum \c@section>\z@ \thesection.\fi \@arabic\c@table}

%设置标题的样式
\RequirePackage{caption}
\captionsetup{labelsep=quad,font={normalsize,bf,singlespacing}}
\captionsetup[figure]{position=bottom,skip={0pt},font={footnotesize}}
\captionsetup[table]{position=top,skip={0pt},font={footnotesize}}
\setlength{\textfloatsep}{0pt}
\setlength{\floatsep}{0pt}
\setlength{\intextsep}{6pt}
\setlength{\abovecaptionskip}{0pt}
\setlength{\belowcaptionskip}{0pt}

\renewcommand{\figurename}{Figure}
\renewcommand{\tablename}{Table}

%重新设置图表autoref
\newcommand{\figureautorefname}{Figure}
\newcommand{\tableautorefname}{Table}

%使用tabularx库并定义新的左右中格式
\RequirePackage{tabularx}
\RequirePackage{makecell}
\newcolumntype{L}{X}
\newcolumntype{C}{>{\centering \arraybackslash}X}
\newcolumntype{R}{>{\raggedright \arraybackslash}X}

%添加复杂的表格需求库
\RequirePackage{booktabs}
%设置三线表格式
\setlength{\heavyrulewidth}{1.5pt}
\setlength{\lightrulewidth}{0.5pt}
\setlength{\cmidrulewidth}{0.5pt}
\setlength{\aboverulesep}{0pt}
\setlength{\belowrulesep}{0pt}
\setlength{\abovetopsep}{0pt}
\setlength{\belowbottomsep}{0pt}

%添加图需要的库
\RequirePackage{graphicx}

%重新定义图和表的浮动环境，使其方便使用
\newenvironment{generalfig}[3][t]{
	\def \figcaption {#2}
	\def \figlabel {#3}
	\begin{figure}[#1]
		\centering
		\wuhao
	}{
		\caption{\figcaption} \label{\figlabel}
	\end{figure}
}
\newenvironment{generaltab}[3][t]{
	\def \tabcaption {#2}
	\def \tablabel {#3}
	\begin{table}[#1]
		\caption{\tabcaption} \label{\tablabel}
		\wuhao
		\centering
	}{
	\end{table}
}


%
%	---	设置公式格式
%
%使用ams的数学库
\RequirePackage{amsmath}
\RequirePackage{bm}

%设置公式间距为零
\AtBeginDocument{
	\setlength{\abovedisplayskip}{6pt}
	\setlength{\belowdisplayskip}{6pt}
	\setlength{\abovedisplayshortskip}{0pt}
	\setlength{\belowdisplayshortskip}{0pt}
}

%公式编号带章节
\numberwithin{equation}{section}

%重新设置公式autoref
\newcommand{\equationautorefname}{等式}


%
%	---	定义列表项的样式
%
\RequirePackage{enumitem}
\setenumerate{fullwidth,itemindent=\parindent,listparindent=\parindent,itemsep=0ex,partopsep=0pt,parsep=0ex}
\setlist{noitemsep}



%
%	---	设置公式格式
%
%使用ams的数学库
\RequirePackage{amsmath}
\RequirePackage{bm}

%设置公式间距为零
\AtBeginDocument{
	\setlength{\abovedisplayskip}{6pt}
	\setlength{\belowdisplayskip}{6pt}
	\setlength{\abovedisplayshortskip}{0pt}
	\setlength{\belowdisplayshortskip}{0pt}
}

%公式编号带章节
\numberwithin{equation}{section}

%重新设置公式autoref
%\newcommand{\equationautorefname}{等式}


%-------------------------封面制作---------------------------

\RequirePackage{zhnumber}
%\newcommand{\cugthesisdate}[2]{%
 %   \date{\zhdigits{#1}年\zhdigits{#2}月}
%}
%	---	定义新的标题页面
%
%添加几个新的文档属性
\def \defschool {}
\def \defclassnum {}
\def \defstunum {}
\def \definstructor {}
\newcommand{\school}[1]{\def \defschool {#1}}
\newcommand{\classnum}[1]{\def \defclassnum {#1}}
\newcommand{\stunum}[1]{\def \defstunum {#1}}
\newcommand{\instructorone}[1]{\def \definstructorone {#1}}
\newcommand{\instructoronelevel}[1]{\def \definstructoronelevel {#1}}
\newcommand{\instructortwo}[1]{\def \definstructortwo {#1}}
\newcommand{\instructortwolevel}[1]{\def \definstructortwolevel {#1}}
\RequirePackage{zhnumber}
%\newcommand{\cugthesisdate}[2]{%

%}
%
%	---	定义列表项的样式
%
\RequirePackage{enumitem}
\setlist{noitemsep}



%重置命令maketitle
\renewcommand{\maketitle}[1][12em]{
	\begin{titlepage}
     \centering
		\begin{center}
		%	\vspace*{4em}
		%	\includegraphics[height=1.61cm]{\logopic}\\
			\vspace*{42.2825pt}
			{\sanhao A Dissertation Submitted to China University of Geosciences
			For the Bachelor Degree of Computer Science and Technology}\\
			\vspace{62.6825pt}
			{\erhao \hei \bfseries \@title}\\
			\vspace{6em}
			{\sanhao \song 
				\renewcommand\arraystretch{1}
				\hspace*{4em}
				\centering
				\begin{tabular}{cc}
					\makebox[7em][l]{Student\ Number:} & \makebox[#1][l]{\defstunum} \\
					\makebox[7em][l]{Student\ Name:} & \makebox[#1][l]{\@author} \\
					\makebox[7em][l]{Major:} & \makebox[#1][l]{\defclassnum} \\
					\makebox[7em][l]{Tutor:} & \makebox[#1][l]{ \definstructorone} \\
					\makebox[7em][l]{Faculty:} & \makebox[#1][l]{\defschool} \\
			\end{tabular}}\\
			\vspace{6em}
			{\sanhao \@date}\\
		\end{center}
	\end{titlepage}
}

\RequirePackage{setspace}
%设置命令
\newcommand{\makestatement}[2][0]{
	\clearpage
	\thispagestyle{empty}
	\vspace*{1em}
	\begin{center}
\begin{spacing}{1.25}{
		\hei \bfseries \sanhao Statement of originality of bachelor's thesis of China University of Geosciences
}
\end{spacing}
	\end{center}


 %\@title
\sihao

 I declare that my bachelor's thesis "\@title" is the result of my independent research work during my bachelor's degree study period at China University of Geosciences (Wuhan) under the guidance of my tutor. The paper does not contain the research results that have been published or written by others, except for the parts already indicated, and the relevant personnel who have provided assistance in the completion of the thesis have been mentioned and thanked in this thesis.

 This bachelor's thesis does not violate academic ethics and academic norms, has no infringement, and I am willing to undertake the legal responsibility and legal consequences arising therefrom.\\

	\begin{spacing}{1}
	\rightline{
	\begin{tabular}{rr}
		\\
		\makebox[8.1em][l]{Dissertation author:\ } & \makebox[6em]{\underline{\hspace{8em}}}\\
		\\
		Date: \@date
	\end{tabular}
	}
	\end{spacing}
	
	\clearpage
}



\newcommand{\makeToc}{%
\pagestyle{empty}
\tableofcontents
\clearpage
\pagestyle{main}
\pagenumbering{arabic}
\setcounter{page}{1}
}

% 参考文献
\RequirePackage[sort&compress]{natbib}
\bibliographystyle{gbt7714-2005}
\renewcommand{\refname}{References}
\bibpunct{[}{]}{;}{s}{}{;}
%--------------- Source Code ---------------
\endinput

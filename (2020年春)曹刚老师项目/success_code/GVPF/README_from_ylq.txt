一、怎样运行项目？
将GVPF文件夹复制到当前工作路径下，在MATLAB中双击GVPF文件夹使其成为新的工作目录，在命令行输入"test_me"，回车。

二、在原文件基础上修改了哪些地方？
1、compress.m  第130行
原代码：if ispc
新代码：if ~ispc

2、decompress.m  第31行
原代码：command = sprintf('%s -i %s -y %s &> /dev/null',PATH_TO_FFMPEG, infile, outfile);
新代码：command = sprintf('%s -i %s -y %s 2> /NUL',PATH_TO_FFMPEG, infile, outfile);


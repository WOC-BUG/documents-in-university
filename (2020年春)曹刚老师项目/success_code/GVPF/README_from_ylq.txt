һ������������Ŀ��
��GVPF�ļ��и��Ƶ���ǰ����·���£���MATLAB��˫��GVPF�ļ���ʹ���Ϊ�µĹ���Ŀ¼��������������"test_me"���س���

������ԭ�ļ��������޸�����Щ�ط���
1��compress.m  ��130��
ԭ���룺if ispc
�´��룺if ~ispc

2��decompress.m  ��31��
ԭ���룺command = sprintf('%s -i %s -y %s &> /dev/null',PATH_TO_FFMPEG, infile, outfile);
�´��룺command = sprintf('%s -i %s -y %s 2> /NUL',PATH_TO_FFMPEG, infile, outfile);


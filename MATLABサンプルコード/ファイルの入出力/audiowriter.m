%% �I�[�f�B�I�t�@�C���ɏ�������
%  ���̃T���v���v���O�����ł�
%�@�E�I�[�f�B�I�t�@�C���ɏ�������
%  ���Ƃ��ł��܂�
%% �t�@�C���擾�Z�N�V����
%  �������݂���I�[�f�B�I�t�@�C�����w�肷��
%  �t�@�C���I���_�C�A���O�{�b�N�X
[file, path] = uigetfile({'*.wav';'*.ogg';'*.mp3';'*.m4a';'*.*'},...
                          'Select Audio File');

filename = fullfile(path, file);

%% �I�[�f�B�I�f�[�^�쐬
t = 1; % �I�[�f�B�I�̒���[s]
T = 0: 1/Fs: t;
y = sin(2*pi*1000*T);
Fs = 44100;

%% audiowrite('�t�@�C����', �e�_�ł̐U��, �T���v�����O���g��);
%  �I�[�f�B�I�t�@�C���ւ̏�������
audiowrite(filename, y, Fs);

%% soundsc(y, Fs);
%  �f�[�^�𐳋K�����A�����Ƃ��čĐ�����
soundsc(y, Fs);

%% �ΐ��O���t��\������
%  ���̃T���v���v���O�����ł�
%  �E�Бΐ��O���t�̕\��
%  �E���ΐ��O���t�̕\��
%  ���邱�Ƃ��ł��܂�

%% �������Z�N�V����
x = 10.^linspace(0,10);
y = 20.*10.^linspace(0,10);

%% semilogx(x, y);
%  �Бΐ��O���t��`�ʂ���
semilogx(x, y);
grid();
xlabel('(�ΐ�)�悱�����x����[]');
ylabel('���Ď����x����[]');

%% semilogy(x, y);
%  �Бΐ��O���t��`�ʂ���
figure();
semilogy(x, y);
grid();
xlabel('�悱�����x����[]');
ylabel('(�ΐ�)���Ď����x����[]');

%% loglog(x, y);
%  ���ΐ��O���t��`�ʂ���
figure();
loglog(x, y);
grid();
xlabel('(�ΐ�)�悱�����x����[]');
ylabel('(�ΐ�)���Ď����x����[]');

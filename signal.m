clc; clear all; close all;
pause on;
% 
% % Part 1
t = 0:0.0001:3;
f = 440;
quot = [1, 2, 4];
for i = 1:length(quot)
    x1 = sin(2 * pi * quot(i) * f .* t);
    figure;
    plot(t, x1);
    xlim([0 0.01]);
    grid();
    tit = ['Plot of signal x1(t) = sin(2π', num2str(quot(i) * f), 't)'];
    title(tit);
    ylabel('x1(t)');
    xlabel('t');
    sound(x1(1:10000));
    pause(1.05);
end
% 
% t = 0:0.0001:3;
% f = [440, 554, 659];
% s = sin(2 * pi * f(1) * t) + sin(2 * pi * f(2) * t)+ sin(2 * pi * f(3) * t);
% plot(t, s);
% xlim([0 0.01]);
% grid();
% tit = ['Plot of signal s(t) = sin(2π', num2str(f(1)), 't) + sin(2π', num2str(f(2)), 't) + sin(2π', num2str(f(3)), 't)'];
% title(tit);
% ylabel('s(t)');
% xlabel('t');
% soundsc(s(1:10000));
% 
% % Part 2
% t = 0:0.0001:3;
% f = 587;
% phi = [0, pi/4, pi/2, 3*pi/4, pi];
% 
% for i = 1:length(phi)
%     x2 = sin(2 * pi * f .* t + phi(i));
%     figure;
%     plot(t, x2);
%     xlim([0 0.01]);
%     grid();
%     tit = ['Plot of the signal x2(t) = cos(2π', num2str(f), 't + ', num2str(phi(i)), ')'];
%     title(tit);
%     xlabel('t');
%     ylabel('x2(t)');
%     sound(x2(1:10000));
%     pause(1.05);
% end
% 
% % Part 3
% a = [1, 2, 3];
% t = 0:0.0001:3;
% 
% for i = 1:length(a) 
%     x3 = exp(-(a(i)^2+2).*t).*cos(2 * pi * 440 .* t);
%     figure;
%     plot(t, x3);
%     xlim([0 0.01]);
%     grid();
%     tit = ['Plot of the signal x3(t) = exp(-(', num2str(a(i)),'^2+2)t) * cos(2π440t)'];
%     title(tit);
%     xlabel('t');
%     ylabel('x3(t)');
%     sound(x3);
%     pause(3.05);
% end
% 
% % Part 4
% t = 0:0.0001:3;
% f1 = [5, 10, 15];
% f2 =  1000;
% 
% for i = 1:length(f1) 
%     x4 = cos(2 * pi * f1(i) .* t).*cos(2 * pi * f2 .* t);
%     figure;
%     plot(t, x4);
%     xlim([0 0.01]);
%     grid();
%     tit = ['Plot of the signal x4(t) = cos(2π', num2str(f1(i)), 't)*cos(2π', num2str(f2), 't)'];
%     title(tit);
%     xlabel('t');
%     ylabel('x4(t)');
%     sound(x4);
%     pause(3.05);
% end
% 
% % Part 5
% t = 0:0.0001:2;
% fl = [500, 2500];
% f0 = [2500, 500];
% quot = [1/2, 1, 2];
% for i = 1:length(fl)
%     td = 2;
%     phi = 0;
%     mu = (fl(i) - f0(i)) / (2*td);
%     for j = 1:length(quot)
%         x5 = cos(2 * pi * quot(j) * mu .* t.^2 + 2 * pi * f0(i) .* t + phi);
% %         figure;
% %         plot(t, x5)
% %         grid();
% %         tit = ['Plot of the signal x5(t) = cos(2π(', num2str(quot(j) * mu), ')t^2 + 2π', num2str(f0(i)), 't + ', num2str(phi), ')'];
% %         title(tit);
% %         xlabel('t');
% %         ylabel('x5(t)');
%         soundsc(x5);
%         pause(2.05)
%     end
% end
% 
% % A Chirp Puzzle
% t = 0:0.0001:3;
% fl = -2000;
% f0 = 3000;
% td = 3;
% phi = 0;
% mu = (fl - f0) / (2*td);
% cp = cos(2 * pi * mu .* t.^2 + 2 * pi * f0 .* t + phi);
% soundsc(cp, 10000);
% 
% % Part 6
% notename = ["A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#"];
% song = ["A", "E", "E", "E", "F", "E", "F", "G", "E", "E", "D", "D", "D", "C", "D", "E"];
% 
% for k1 = 1:length(song)
%     idx = strcmp(song(k1), notename);
%     songidx(k1) = find(idx);
% end
% dur = 0.3*8192;
% songnote = [ ];
% for k1 = 1:length(songidx)
%     songnote = [songnote; [notecreate(songidx(k1),dur) zeros(1,75)]'];
% end
% soundsc(songnote, 8192)
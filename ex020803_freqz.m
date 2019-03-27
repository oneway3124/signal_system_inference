% ×ªÒÆº¯Êý
b = [.001836,.007344,.011016,.007374,.001836];
a = [1,-3.0544,3.8291,-2.2925,.55075];
[H,w]=freqz(b,a,256,'whole',1);
Hr=abs(H);
Hphase=angle(H);
Hphase=unwrap(Hphase);
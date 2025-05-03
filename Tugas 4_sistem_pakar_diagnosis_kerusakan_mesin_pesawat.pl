
% DIAGNOSA MESIN PESAWAT

% FAKTA
% -- Predikat gejala/2 (menerima dua parameter: gejala dan kondisi mesin).
% -- Berarti mesin mengalami gejala tertentu.

gejala(mesin1, suara_abnormal).
gejala(mesin1, getaran_tinggi).
gejala(mesin2, suhu_tinggi).
gejala(mesin2, konsumsi_bbm_naik).
gejala(mesin3, kebocoran_oli).
gejala(mesin3, daya_dorong_turun).

% ATURAN

% -- Diagnosis kerusakan pada blade fan atau ketidakseimbangan
% -- Predikat diagnosis/2 (X adalah mesin, Y adalah diagnosis)
diagnosis(X, blade_fan_rusak) :- 
    gejala(X, suara_abnormal),
    gejala(X, getaran_tinggi).

% -- Diagnosis kerusakan ruang bakar
diagnosis(X, ruang_bakar_terganggu) :- 
    gejala(X, suhu_tinggi),
    gejala(X, konsumsi_bbm_naik).

% -- Diagnosis kerusakan sistem pelumasan
diagnosis(X, sistem_pelumasan_bocor) :- 
    gejala(X, kebocoran_oli),
    gejala(X, daya_dorong_turun).

% REKOMENDASI
% -- Predikat rekomendasi/2 (diagnosa dan tindak lanjut)
rekomendasi(blade_fan_rusak, 'Periksa dan seimbangkan kembali fan blade.').
rekomendasi(ruang_bakar_terganggu, 'Bersihkan dan inspeksi ruang bakar.').
rekomendasi(sistem_pelumasan_bocor, 'Periksa seal dan sistem pelumasan.').

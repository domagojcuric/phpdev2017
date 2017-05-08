use upisi_polaznika;
update tecajevi
set naziv_tecaja='osnove obrada teksta -MS Word' where naziv_tecaja='Microsoft word';
update upisi
set sifra_tecaja='003'
where sifra_polaznika=6;
delete from upisi where sifra_tecaja='p01';
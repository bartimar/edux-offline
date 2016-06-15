FUNCTIONALITY:
Downloads downloadable materials (slides, pdfs, compressed packages, etc. -- you can customize it to your likings) from edux and puts them in directories by course, lesson, etc., following where they are linked from on edux.

Example:
$ ./edux_props pa2 sap lin
#Thiw will downlaod materials for  BI-PA2, BI-SAP, and BI-LIN into folders PA2, SAP, and LIN.
$ tree # directories and files created after running the script

|-- LIN
|   |-- labs
|   |-- lectures
|   |   |-- afinita.pdf
|   |   |-- algebra-all8.pdf
|   |   |-- base.pdf
|   |   |-- determinant.pdf
|   |   |-- eprostor.pdf
|   |   |-- grupy.pdf
|   |   |-- kody.pdf
|   |   |-- linprst.pdf
|   |   |-- matice.pdf
|   |   |-- matzob.pdf
|   |   |-- nasobenimatic.pdf
|   |   |-- polynomy.pdf
|   |   |-- soustavy.pdf
|   |   |-- ssoucin.pdf
|   |   |-- vlcisla.pdf
|   |   |-- zavislost.pdf
|   |   |-- zmenabase.pdf
|   |   `-- zobrazeni.pdf
|   `-- tutorials
|       |-- bi-lin-pisemka-1a.pdf
|       |-- bi-lin-pisemka-1b.pdf
|       `-- linal-cv.pdf
|-- PA2
|   |-- labs
|   |-- lectures
|   |   |-- 01
|   |   |   |-- p1.zip
|   |   |   |-- pa2-p1_2.pdf
|   |   |   |-- pa2-p1_6.pdf
|   |   |   `-- pa2-p1.pdf
|   |   |-- 02
|   |   |   |-- p2.zip
|   |   |   |-- pa2-p2_2.pdf
|   |   |   |-- pa2-p2_6.pdf
|   |   |   `-- pa2-p2.pdf
|   |   |-- 03
|   |   |   |-- p3.zip
|   |   |   |-- pa2-p3_2.pdf
|   |   |   |-- pa2-p3_6.pdf
|   |   |   `-- pa2-p3.pdf
|   |   |-- 04
|   |   |   |-- p4.zip
|   |   |   |-- pa2-p4_2.pdf
|   |   |   |-- pa2-p4_6.pdf
|   |   |   `-- pa2-p4.pdf
|   |   |-- 05
|   |   |   |-- p5.zip
|   |   |   |-- pa2-p5_2.pdf
|   |   |   |-- pa2-p5_6.pdf
|   |   |   `-- pa2-p5.pdf
|   |   |-- 06
|   |   |   |-- p6.zip
|   |   |   |-- pa2-p6_2.pdf
|   |   |   |-- pa2-p6_6.pdf
|   |   |   `-- pa2-p6.pdf
|   |   |-- 07
|   |   |   |-- p7.zip
|   |   |   |-- pa2-p7_2.pdf
|   |   |   |-- pa2-p7_6.pdf
|   |   |   `-- pa2-p7.pdf
|   |   |-- 08
|   |   |   |-- p8.zip
|   |   |   |-- pa2-p8_2.pdf
|   |   |   |-- pa2-p8_6.pdf
|   |   |   `-- pa2-p8.pdf
|   |   |-- 09
|   |   |   |-- p9.zip
|   |   |   |-- pa2-p9_2.pdf
|   |   |   |-- pa2-p9_6.pdf
|   |   |   `-- pa2-p9.pdf
|   |   |-- 10
|   |   |   |-- p10.zip
|   |   |   |-- pa2-p10_2.pdf
|   |   |   |-- pa2-p10_6.pdf
|   |   |   `-- pa2-p10.pdf
|   |   |-- 11
|   |   |   |-- p11.zip
|   |   |   |-- pa2-p11_2.pdf
|   |   |   |-- pa2-p11_6.pdf
|   |   |   `-- pa2-p11.pdf
|   |   |-- 12
|   |   |   |-- p12.zip
|   |   |   |-- pa2-p12_2.pdf
|   |   |   |-- pa2-p12_6.pdf
|   |   |   `-- pa2-p12.pdf
|   |   `-- 13
|   |       |-- p13.zip
|   |       |-- pa2-p13_2.pdf
|   |       |-- pa2-p13_6.pdf
|   |       `-- pa2-p13.pdf
|   |-- seminars
|   |   |-- 01
|   |   |   |-- 01-examples.tgz
|   |   |   `-- p01-stream.pdf
|   |   |-- 02
|   |   |   |-- 02-examples.tgz
|   |   |   `-- p02-oop.pdf
|   |   |-- 03
|   |   |   |-- 03-examples.tgz
|   |   |   `-- p03-op.pdf
|   |   |-- 04
|   |   |   |-- 04-examples.tgz
|   |   |   `-- p04-tpl.pdf
|   |   |-- 05
|   |   |   |-- 05-examples.tgz
|   |   |   `-- p05-inh.pdf
|   |   |-- 06
|   |   |   |-- 06-examples.tgz
|   |   |   `-- p06-abs.pdf
|   |   `-- 07
|   |       |-- 07-examples.tgz
|   |       `-- p07-lib.pdf
|   `-- tutorials
|       |-- 01
|       |   |-- cviceni_1.doc
|       |   `-- pa2-c1.pdf
|       |-- 02
|       |   |-- cviceni_2.doc
|       |   `-- pa2-c2.pdf
|       |-- 03
|       |   |-- cviceni_3.doc
|       |   `-- pa2-c3.pdf
|       |-- 04
|       |   |-- cviceni_4.doc
|       |   `-- pa2-c4.pdf
|       |-- 05
|       |   |-- cviceni_5.doc
|       |   `-- pa2-c5.pdf
|       |-- 06
|       |   |-- cviceni_6.doc
|       |   `-- pa2-c6.pdf
|       |-- 07
|       |   |-- cviceni_7.doc
|       |   `-- pa2-c7.pdf
|       |-- 08
|       |   |-- cviceni_8.doc
|       |   `-- pa2-c8.pdf
|       |-- 09
|       |   |-- cviceni_9.doc
|       |   `-- pa2-c9.pdf
|       |-- 10
|       |   |-- cviceni_10.doc
|       |   `-- pa2-c10.pdf
|       `-- 11
|           |-- cviceni_11.doc
|           `-- pa2-c11-13.pdf
`-- SAP
    |-- labs
    |   |-- 03
    |   |   `-- ukol.pdf
    |   |-- 05
    |   |   `-- zadani-laborator_5..pdf
    |   |-- 07
    |   |   |-- avrinstructionset.pdf
    |   |   |-- print.inc
    |   |   |-- sap-avr1.pdf
    |   |   `-- znaky.inc
    |   |-- 08
    |   |   |-- avrinstructionset.pdf
    |   |   `-- sap-avr2.pdf
    |   |-- 09
    |   |   `-- avrinstructionset.pdf
    |   `-- 11
    |       |-- adop_2008-09-11.zip
    |       |-- adop_isa_-_v10.pdf
    |       |-- adopload.zip
    |       |-- adop_proc.zip
    |       `-- implementace_procesoru_adop.pdf
    |-- lectures
    |   |-- 01
    |   |   |-- bozp2013-50.pdf
    |   |   |-- bozp2013-studenti.pdf
    |   |   `-- sap-1-intro.pdf
    |   |-- 02
    |   |   `-- sap-2-comb.pdf
    |   |-- 03
    |   |   `-- sap-3-seq.pdf
    |   |-- 04
    |   |   `-- sap-4-typical.pdf
    |   |-- 05
    |   |   `-- sap-5-data.pdf
    |   |-- 06
    |   |   `-- sap-6-oper.pdf
    |   |-- 07
    |   |   |-- sap-7-arit.pdf
    |   |   `-- sap-7-avr.pdf
    |   |-- 08
    |   |   `-- sap-8-isa.pdf
    |   |-- 09
    |   |   `-- sap-9-podprogramy.pdf
    |   |-- 10
    |   |   `-- sap-10-pam.pdf
    |   |-- 11
    |   |   `-- sap-11-cache.pdf
    |   `-- 12
    |       |-- procesory-historie.zip
    |       `-- sap-12-proc.pdf
    `-- seminars
        |-- 01
        |   |-- kap1a2.pdf
        |   `-- kap3.pdf
        |-- 02
        |   |-- pros2-citac.pdf
        |   `-- pros2.pdf
        |-- 03
        |   `-- psap-3-data.pdf
        |-- 04
        |   |-- avrinstructionset.pdf
        |   |-- sap-avr-prehled.pdf
        |   `-- sap_semavr-priklady.pdf
        |-- 05
        |   |-- skd_c_10_joystickavr.pdf
        |   |-- skd_c_7_prace_s_pametiavr.pdf
        |   |-- skd_c_8_avr-podprogramy.pdf
        |   `-- skd_c_9_displejavr.pdf
        |-- 06
        |   `-- cache.pdf
        |-- 1.pdf
        |-- 2.pdf
        |-- 3.pdf
        |-- 4.pdf
        |-- 5.pdf
        |-- kap11.pdf
        |-- kap1a2.pdf
        |-- kap3.pdf
        |-- kap4.pdf
        |-- kap5.pdf
        |-- kap5rott.pdf
        |-- kap6.pdf
        |-- kap7.pdf
        |-- kap8.pdf
        |-- kap9.pdf
        |-- obsah.pdf
        `-- rejstrik.pdf





USAGE:
$ ./edux_props.sh [ short names for courses ] #case insensitive
OR
$ ./edux_login.rb && ./edux_props.sh #Get cookies automatically


`export LG='EN'` before running edux_props.sh will download the English version into SAP-EN, LIN-EN, PA2-EN, etc.
`export LG=` will revert the default language for the course materials get with edux_props.sh after that to Czech


REQUIREMENTS:
  -bash
  -wget
  -access cookies to your edux account places in $HOME/.edux_cookie.txt
    OR
  -ruby >=1.9.3 with the highline and mechanize gems
    (gem install mechanize highline)


Make sure you have your edux access cookies in $HOME/.edux_cookie.txt (export them from your web browser) or use
./edux_login.rb 
which will let you log in and create .edux_cookie.txt automatically

LICENSING:
No warranties. No restrictions. 



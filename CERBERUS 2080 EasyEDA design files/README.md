These are the EasyEDA (https://easyeda.com/) design source files of CERBERUS 2080™. In the EasyEDA editor, click the document icon on the top bar: Document -> Open -> EasyEDA Source, select the json file, then open it in the editor. The zip file above is redundant.
<hr>
<b>CHANGE HISTORY:</b>
<p>
<ul>
  <li><b>9 September 2021:</b> Release 1.2 of CERBERUS 2080™ is now available. The changes are relatively minor, aimed at yet-improved robustness and convenience. All buses are now pulled up for better signal levels. Most adapter ports are now horizontal, at a 90-degree angle on the edge of the board, to make their use possible while the board is fully encased. An extra line has been added to SCUNK so the latter can disable the video side of the dual-ported memories during the blanking intervals. A pull-up resistor has been added to RDY6502 for extra robustness. The distance between traces has been increased to reduce the chance of cross-talk yet further. Resistor R1 has been changed to 220 Ohm (instead of 75 Ohm) to reduce the quiescent current from collector to emitter of Q1. In practice, this change leads to no perceptible differences in video quality, so it made sense to do it.</li>
</ul>

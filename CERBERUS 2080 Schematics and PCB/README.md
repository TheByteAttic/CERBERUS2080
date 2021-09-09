CERBERUS 2080™'s schematics and PCB Gerber files.
<p>
<b>CHANGE HISTORY:</b>
<ul>
  <li><b>9 September 2021:</b>Release 1.2 of CERBERUS 2080™ is now available. The changes are minor and aimed at yet-improved robustness and convenience. All buses are now pulled up for better signal levels. Most adapters are now horizontal, at a 90-degree angle on the edge of the board, to make their use possible while the board is fully encased. An extra line has been added to SCUNK so the latter can disable the video side of the dual-ported memories during the blanking intervals. A pull-up resistor has been added to RDY6502 for extra robustness. The distance between traces has been increased to reduce the chance of cross-talk yet further. Resistor R1 has been changed to 220 Ohm (instead of 75 Ohm) to reduce the quiescent current from collector to emitter of Q1. In practice, this change leads to no perceptible differences in video quality, so it made sense to do it.</li>
</ul>

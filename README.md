# CERBERUS 2080™ (now obsolete and superseded)
CERBERUS 2080™ has been rendered obsolete and superseded by the new, enhanced, lower-cost <a href="https://github.com/TheByteAttic/CERBERUS2100/tree/main">CERBERUS 2100™</a>. This repository is now maintained purely for legacy reasons. All users are encouraged to migrate to <a href="https://github.com/TheByteAttic/CERBERUS2100/tree/main">CERBERUS 2100™</a> as of now.<br><br>
  
![CERBERUS oneslider](https://user-images.githubusercontent.com/69539226/132910332-99b613a7-59f6-43e4-bc10-2f416d8c7e18.png)

<br>
<b><i>IMPORTANT UPDATE</b></i>: The Dutch Home Computer museum <a href="https://www.facebook.com/groups/cerberuscomputer/posts/1347529932646253">is offering <i>the last 30-35 original CERBERUS 2080s</i> for sale</a>. No more units can be made, as the DIP dual-ported SRAM chip used as video memory and character memory <i>is no longer manufactured,</i> and there are no reliable stocks available anywhere except at the museum (we had a final wafer manufactured for them, for CERBERUS 2080). So if you want an original CERBERUS 2080, this is your last chance. The museum sells both ready-to-use units and kits/parts.<br><br>

CERBERUS 2080™ is an amazing multi-processor 8-bit microcomputer: a fully open-source project available for anyone to peruse, build, modify, extend, have fun with, write software for, or commercialize. You owe me nothing but an acknowledgment of original authorship, should you choose to use it. And yes, CERBERUS has <i>both</i> BASIC <i>and</i> FORTH interpreters available for <i>both</i> of its two CPUs (Z80 and 65C02). Read on for free download links below.


Everything you need to know is in the files <a href="https://github.com/TheByteAttic/CERBERUS2080/blob/main/CERBERUS%202080%20Complete%20Manual.pdf" target="_blank">/CERBERUS 2080 Complete Manual.pdf</a> and <a href="https://github.com/TheByteAttic/CERBERUS2080/blob/main/CERBERUS%202080%20BoM.pdf" target="_blank">/CERBERUS 2080 BoM.pdf</a> (The PDF preview on Github isn't reliable, so you should simply download the PDF file and view it locally). The <a href="https://oshwlab.com/bkastrup/cerberus-2080" target="_blank">entire project is available for immediate use at Oshwlab</a>. There is also a <a href="https://www.facebook.com/groups/cerberus2080" target="_blank">Facebook Group dedicated to all things CERBERUS, particularly software development for it</a>. And HACKADAY has published <a href="https://hackaday.com/2021/06/08/cerberus-2080-three-headed-retro-computing-project/" target="_blank">an article on CERBERUS</a>.

The <a href="https://www.thebyteattic.com/p/cerberus-2080.html?view=magazine" target="_blank">official page of the CERBERUS 2080™ project can be found here</a>. Unlike many hobby computers, CERBERUS is a self-contained system and rock-solid in terms of robustness and reliability. As an educational platform, it has been designed <i>correctly</i>, so as to provide a proper example of computer engineering. It also happens to be pretty darn fast!

You can buy a CERBERUS 2080 kit, with pre-programmed CPLDs and microcontroller, from the <a href="https://www.homecomputermuseum.nl/en/winkel/producten/#!/Cerberus-2080/p/377348409/" target="_blank">Home Computer Museum</a>. All you need to do is solder the components, which are all through-hole parts relatively easy to solder. Check out&nbsp;</span><a href="https://imapenguin.com/building-the-cerberus-2080/" target="_blank">Michael Doornbos's blog post on his experience building one</a>. But if you prefer, you can also buy a pre-assembled unit from the museum, using the same link above. In either case, you will be contributing to a registered public-interest nonprofit dedicated to preserving the history of computers, as 100% of the proceeds go to the museum, none to me.

Here are links to software developed for, or ported to, CERBERUS and related tooling:
<ul>
  <li>Andy Toone has created <a href="https://feertech.com/legion/cerberus.html" target="_blank">a suit of online development tools for CERBERUS</a>.</li>
  <li>Andy's <a href="https://github.com/atoone/CERBERUS2080" target="_blank">fork of this repository</a> also contains <a href="https://github.com/atoone/CERBERUS2080/tree/main/CAT" target="_blank">an enhanced BIOS</a> with several extra features handy for game development.</li>
  <li>Andy himself used his BIOS to port Manic Miner to CERBERUS's W65C02S CPU. <a href="https://youtu.be/a6IdV5HQMHQ" target="_blank">Here's a sneak preview</a>.
  <li>Dean Belfield has ported <a href="https://github.com/breakintoprogram/cerberus-bbc-basic" target="_blank">BBC Basic—yes, the Basic interpreter of the magnificent BBC Micro, widely considered the best Basic interpreter of the 80s—to CERBERUS's Z80 CPU</a>. It's fully functional. <a href="https://youtu.be/v0i_49vSIfw" target="_blank">Here is a demonstration of it</a>. With BBC Basic comes also a native assembler for CERBERUS's Z80.</li>
  <li>Gordon Henderson has been porting his <a href="https://project-downloads.drogon.net/cerberus2080/" target="_blank">RUBY OS to CERBERUS's W65C02S CPU</a>. With RUBY comes <a href="https://project-downloads.drogon.net/cerberus2080/sdCard/" target="_blank">BBC Basic and other applications</a>, but this time running on the 65C02! Here is <a href="https://youtu.be/ISMcggpUzUQ" target="_blank">a demonstration of what you can do with it</a>.</li>
  <li>Alexandre Dumont has ported <a href="https://github.com/adumont/cerberus2080/releases" target="_blank">FORTH, the procedural, stack-oriented programming language, to CERBERUS, and developed a convenient BIOS</a>. This port targets CERBERUS's W65C02S CPU.</li>
  <li>Lennart Benschop has created <a href="https://github.com/lennart-benschop/cerberus-z80-forth/?fbclid=IwAR14ZnuCV1yceHhVIv2ZXmWsYTnMAXNgSUpxxqlP27HyxayD6uh4Ihg0X-Y">another version of FORTH</a>, but this time targeting CERBERUS's Z80 CPU.
  <li>Paul Robson has developed <a href ="https://github.com/paulscottrobson/cerberus-2080" target="_blank">another emulator, supporting both CPUs, and a sprite engine for CERBERUS</a>.</li>
  <li>Jeroen Venema has ported the puzzle game <a href="https://github.com/envenomator/Sokoban">Sokoban to CERBERUS 2080™</a>.</li>
  <li>Lennart Benschop has developed <a href="https://lennartb.home.xs4all.nl/basic/cerberus.html">a high-resolution graphics library</a>, usable from within BBC BASIC, which allows for high resolution plots and 3D graphics.</li>
</ul>

You can watch the entire design and build process of CERBERUS 2080™, with in-depth commentary and explanations for every design decision, in <a href="https://www.youtube.com/watch?v=1ASspLiE39g&list=PLDf2uklC__d2DAXmF9XuOq_-uNc2M9ITd&ab_channel=TheByteAttic" target="_blank">a series of videos on my YouTube channel</a>. Famous vintage electronics YouTuber Jan Beta has also made <a href="https://youtu.be/YxW3LQ6DE-k">an in-depth video showing how to assemble a CERBERUS kit</a>.
<p>
<hr>
<b>CHANGE HISTORY</b>:
<p>
<ul>
  <li><b>26 July 2023:</b> Obsolescence notice added, with immediate effect.</li>
  <li><b>30 April 2022:</b> Minor changes to the manual. On pages 7 and 58, the system architecture diagram was corrected to reflect the fact that CAT cannot talk directly to the data and address buses, but only through SPACER. On page 44, a typo was corrected so the address of the non-maskable interrupt service routine of the W65C02S (FCB0) is now correct in the text as well, not only in the memory map diagram.
  <li><b>2 January 2022:</b> Very minor correction to the total number of 10K Ohm (from 56 to 58) and 220 Ohm (from 1 to 2) resistors required in the BoM.
  <li><b>9 September 2021:</b> Schematics, PCB and SCUNK updated to Release 1.2 (probably the final release of CERBERUS). See change history in the respective directories of this repository.</li>
  <li><b>26 August 2021:</b> SPACER has been updated (from Release 1.1 to Release 1.2) to eliminate a stability vulnerability associated with the 65C02 CPU (the Z80 remains unaffected). See change history in the <a href="https://github.com/TheByteAttic/CERBERUS2080/tree/main/CPLD_files" target="_blank">"CPLD_Files" directory</a> for more details. <i>It is recommended that all users and builders of CERBERUS 2080™ adopt R1.2 of SPACER.</i></li>
  <li><b>02 July 2021</b>: (1) Page 41 of the Manual has been updated to inform the user how to pause and step through the CELL application. (2) Github directory name changed from "CPLD Files" to "CPLD_Files" because CUPL doesn't recognize spaces in directory names. (3) The tabulations of all three .PLD files have been re-formatted for better readability. (4) The buried logic nodes are now left unassigned to pins in CAVIA.PLD and SKUNK.PLD as well, not only in SPACER.PLD. This way, the CUPL compiler makes the assignments automatically. The functionality didn't change at all, but the .PLD files are now easier to interpret.</li>
  <li><b>23 June 2021</b>: (1) BoM updated (<i>10</i>+6mm nylon standoffs also work, not only 12+6mm, as originally stated). (2) The Manual has also been updated for convenience and cosmetic reasons, but no change in substance.</li>
</ul>


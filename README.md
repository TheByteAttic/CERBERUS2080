# CERBERUS 2080™

![CERBERUS oneslider](https://user-images.githubusercontent.com/69539226/116828792-43c4fe00-aba1-11eb-82e9-53359ee5c066.png)

CERBERUS 2080™ is an amazing multi-processor 8-bit microcomputer: a fully open-source project available for anyone to peruse, build, modify, extend, have fun with, write software for, or commercialize. You owe me nothing but an acknowledgment of original authorship, should you choose to use it.
Everything you need to know is in the files <a href="https://github.com/TheByteAttic/CERBERUS2080/blob/main/CERBERUS%202080%20Complete%20Manual%20V1.2.pdf">/CERBERUS 2080 Complete Manual V1.2.pdf</a> and <a href="https://github.com/TheByteAttic/CERBERUS2080/blob/main/CERBERUS%202080%20BoM%20R1.1.pdf">/CERBERUS 2080 BoM R1.1.pdf</a>. (The PDF preview on Github doesn't work well for the Manual: it starts repeating pages towards the end of the file. To avoid confusion, you can simply download the PDF file and view it locally.) There is <a href="https://www.facebook.com/groups/cerberus2080">a Facebook Group dedicated to all things CERBERUS, particularly software development for it</a>. HACKADAY has also published <a href="https://hackaday.com/2021/06/08/cerberus-2080-three-headed-retro-computing-project/">an article on CERBERUS</a>.

Unlike many hobby computers, CERBERUS is a complete system and rock-solid in terms of robustness and reliability. As an educational platform, it was designed <i>correctly</I so to provide a proper example. It's also pretty darn fast! You can buy a CERBERUS 2080 kit, with pre-programmed CPLDs and microcontroller, from the <a href="https://www.homecomputermuseum.nl/en/winkel/producten/#!/Cerberus-2080/p/377348409/">Home Computer Museum</a>. All you need to do is solder the components, which are all through-hole parts relatively easy to solder. But if you prefer, you can also buy a pre-assembled unit from the museum, using the same link above. In either case, you will be contributing to a registered public-interest nonprofit dedicated to preserving the history of computers, as 100% of the proceeds go to the museum, none to me.

Here are links to software ported to CERBERUS and related tooling:
<ul>
  <li>Andy Toone has created <a href="https://feertech.com/legion/cerberus.html">a suit of online development tools for CERBERUS</a>.</li>
  <li>Andy's <a href="https://github.com/atoone/CERBERUS2080">fork of this repository</a> also contains <a href="https://github.com/atoone/CERBERUS2080/tree/main/CAT">an enhanced BIOS</a> with several extra features handy for game development.</li>
  <li>Dean Belfield has ported <a href="https://github.com/breakintoprogram/cerberus-bbc-basic">BBC Basic—yes, the Basic interpreter of the magnificent BBC Micro, widely considered the best Basic interpreter of the 80s—to CERBERUS's Z80 CPU</a>. It's fully functional. <a href="https://twitter.com/BreakIntoProg/status/1425071012656435206">Here is an example of what you can do with it</a>. With BBC Basic comes also a native assembler for CERBERUS's Z80.</li>
  <li>Gordon Henderson has been porting his RUBY OS to CERBERUS's 65C02 CPU. With RUBY comes BBC Basic and other applications, but this time running on the 65C02! <a href="https://youtu.be/UjTiY4Wek9s">Here is a sneak preview of what you'll be able to do with it</a>.</li>
</ul>

The official page of the CERBERUS 2080™ project can be found <a href="https://www.thebyteattic.com/p/cerberus-2080.html?view=magazine">here</a>.

You can also watch the entire design and build process of CERBERUS 2080™, with in-depth commentary and explanations for every design decision, in <a href="https://www.youtube.com/watch?v=1ASspLiE39g&list=PLDf2uklC__d2DAXmF9XuOq_-uNc2M9ITd&ab_channel=TheByteAttic">a series of videos on my YouTube channel</a>.
<p><br>
<b>CHANGE HISTORY</b>:
<ul>
  <li><b>26 August 2021:</b> SPACER has been updated (from Release 1.1 to Release 1.2) to fix a stability problem associated with the 65C02 CPU (the Z80 remains unaffected). See change history in the <a href="https://github.com/TheByteAttic/CERBERUS2080/tree/main/CPLD_files">"CPLD_Files" directory</a> for more details. <i>It is recommended that all users and builders of CERBERUS 2080™ adopt R1.2 of SPACER.</i></li>
  <li><b>02 July 2021</b>: (1) Page 41 of the Manual has been updated to inform the user how to pause and step through the CELL application. (2) Github directory name changed from "CPLD Files" to "CPLD_Files" because CUPL doesn't recognize spaces in directory names. (3) The tabulations of all three .PLD files have been re-formatted for better readability. (4) The buried logic nodes are now left unassigned to pins in CAVIA.PLD and SKUNK.PLD as well, not only in SPACER.PLD. This way, the CUPL compiler makes the assignments automatically. The functionality didn't change at all, but the .PLD files are now easier to interpret.</li>
  <li><b>23 June 2021</b>: (1) BoM updated (<i>10</i>+6mm nylon standoffs also work, not only 12+6mm, as originally stated). (2) The Manual has also been updated for convenience and cosmetic reasons, but no change in substance.</li>
</ul>


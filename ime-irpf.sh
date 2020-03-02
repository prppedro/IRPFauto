#!/bin/bash

cd $HOME
mkdir ProgramasRFB
cd ProgramasRFB
wget http://downloadirpf.receita.fazenda.gov.br/irpf/2020/irpf/arquivos/IRPF2020-1.2.zip
wget https://www.ime.usp.br/~tadeu/IRPFauto/icone_irpf.svg
wget https://www.ime.usp.br/~tadeu/IRPFauto/irpf2020.desktop
unzip IRPF2020-1.2.zip
mv icone_irpf.svg IRPF2020
# Contrib. do ~hcabral
sed -s "s/~/$(echo $HOME | sed 's/\//\\\//g')/g" irpf2020.desktop > a.tmp
mv a.tmp "$(xdg-user-dir DESKTOP)/irpf2020.desktop"
chmod +x "$(xdg-user-dir DESKTOP)/irpf2020.desktop"

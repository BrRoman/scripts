#!/bin/bash

cd "/home/fr_romain/Desktop/"
pdfunite 'Services - Semaines.pdf' 'Services - Oratoires.pdf' out.pdf
evince out.pdf
rm 'Services - Semaines.pdf'
rm 'Services - Oratoires.pdf'
rm 'out.pdf'

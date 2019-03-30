#!/bin/bash

cd "/home/fr_romain/Desktop/"
pdfunite 'Services - Semaines.pdf' 'Services - Oratoires.pdf' out.pdf
evince out.pdf

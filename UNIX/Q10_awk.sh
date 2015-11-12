#!/bin/bash
set -e
set -u 
set -o pipefail

FS=""
{
awk '/^>/{print ">" 1++i, $2, $3, $4, $5, $6; next}{print}' < Homo_sapiens.GRCh38.cds.all.fa
}
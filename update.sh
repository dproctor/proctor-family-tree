#!/usr/bin/env sh

######################################################################
# @author      : Devon Proctor (devon.proctor@gmail.com)
# @file        : update
# @created     : Tuesday Oct 01, 2019 14:26:38 PDT
#
# @description :
######################################################################
gramps --yes -O 'proctors' -e proctors.ged
gramps -O 'proctors' -a report -p name=timeline,off=pdf,of=timeline.pdf && \
  convert -strip -flatten -density 150 timeline.pdf -quality 90 timeline.png && \
  rm timeline.pdf
gramps -O 'proctors' -a report -p name=rel_graph,off=pdf,of=rel_graph.pdf && \
  convert -strip -flatten -density 150 rel_graph.pdf -quality 90 rel_graph.png && \
  rm rel_graph.pdf

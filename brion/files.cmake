# Copyright (c) 2013-2015, EPFL/Blue Brain Project
#                          Daniel Nachbaur <daniel.nachbaur@epfl.ch>
#
# This file is part of Brion <https://github.com/BlueBrain/Brion>
#

set(BRION_PUBLIC_HEADERS
  blueConfig.h
  circuit.h
  compartmentReport.h
  compartmentReportPlugin.h
  enums.h
  mesh.h
  morphology.h
  morphologyPlugin.h
  pluginInitData.h
  spikeReport.h
  spikeReportPlugin.h
  synapseSummary.h
  synapse.h
  target.h
  types.h
  )

set(BRION_HEADERS
  plugin/compartmentReportCommon.h
  plugin/compartmentReportBinary.h
  plugin/compartmentReportHDF5.h
  plugin/compartmentReportMap.h
  plugin/compartmentReportNull.h
  plugin/morphologyHDF5.h
  plugin/morphologySWC.h
  plugin/spikeReportBinary.h
  plugin/spikeReportBluron.h
  plugin/spikeReportFile.h
  plugin/spikeReportNEST.h
  plugin/spikeReportSimpleStreamer.h
  detail/mesh.h
  detail/meshBinary.h
  detail/meshHDF5.h
  detail/lockHDF5.h
  detail/silenceHDF5.h
  )

set(BRION_SOURCES
  blueConfig.cpp
  circuit.cpp
  compartmentReport.cpp
  mesh.cpp
  morphology.cpp
  spikeReport.cpp
  synapseSummary.cpp
  synapse.cpp
  target.cpp
  detail/lockHDF5.cpp
  plugin/compartmentReportCommon.cpp
  plugin/compartmentReportBinary.cpp
  plugin/compartmentReportHDF5.cpp
  plugin/compartmentReportMap.cpp
  plugin/compartmentReportNull.cpp
  plugin/morphologyHDF5.cpp
  plugin/morphologySWC.cpp
  plugin/spikeReportBinary.cpp
  plugin/spikeReportBluron.cpp
  plugin/spikeReportFile.cpp
  plugin/spikeReportNEST.cpp
  plugin/spikeReportSimpleStreamer.cpp
  )

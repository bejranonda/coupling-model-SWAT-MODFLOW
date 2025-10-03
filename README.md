# Semi-Coupling of SWAT and MODFLOW

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Legacy Code](https://img.shields.io/badge/status-legacy%20research%20code-orange.svg)](https://github.com/bwerapol)
[![Research Period](https://img.shields.io/badge/research%20period-2005--2007-blue.svg)](https://digiverse.chula.ac.th/Info/item/dc:44931)

A semi-coupled hydrological modeling framework integrating SWAT (Soil and Water Assessment Tool) and MODFLOW for analyzing surface-groundwater interactions in alluvial aquifer systems.

## Overview

This repository contains the implementation of a semi-coupling framework developed during 2005-2007 as part of a Master's thesis research project at Chulalongkorn University, Thailand. The program facilitates one-way coupling between surface water (SWAT) and groundwater (MODFLOW) models to simulate conjunctive water use patterns and analyze water balance dynamics in complex aquifer systems.

**Study Area:** Upper Great Chao Phraya Plain, Thailand
**Research Period:** 2005-2007
**Institution:** Chulalongkorn University, Water Resources System Research Unit
**Funding:** Department of Groundwater Resources of Thailand

## Scientific Background

### Research Motivation

The Upper Central Plain of Thailand represents a critical agricultural region where intensive groundwater extraction for irrigation creates complex interactions between surface water and groundwater systems. Understanding these dynamics is essential for sustainable water resources management, particularly in:

- **Conjunctive use planning**: Optimizing combined surface and groundwater utilization
- **Aquifer sustainability**: Preventing over-extraction and land subsidence
- **Water balance analysis**: Quantifying recharge-discharge relationships
- **Climate variability impacts**: Assessing system responses to changing hydrological conditions

### The Coupling Challenge

Traditional hydrological modeling approaches treat surface water and groundwater as separate systems. However, in alluvial plains with shallow water tables and extensive irrigation networks, these systems are dynamically coupled through:

1. **Percolation and recharge**: Water movement from surface to groundwater
2. **Baseflow and discharge**: Groundwater contribution to streams
3. **Agricultural return flows**: Irrigation-induced aquifer recharge
4. **Water table fluctuations**: Impacts on soil moisture and evapotranspiration

This research addressed these challenges through a **semi-coupling framework** that enables practical integration of watershed-scale surface water models with regional groundwater flow models.

## Technical Methodology

### Coupling Approach

The implementation uses a **semi-coupled (one-way coupling)** methodology:

```
SWAT (Surface Water Model)
         ↓
    Recharge Extraction
         ↓
MODFLOW (Groundwater Model)
```

**Key Steps:**

1. **SWAT Execution**: Simulates watershed hydrology, calculating:
   - Precipitation-runoff processes
   - Soil moisture dynamics
   - **Percolation (PERCO)**: Deep infiltration to groundwater
   - Water yield and streamflow

2. **Data Transfer Module**: Extracts and processes SWAT outputs:
   - Reads subbasin percolation from `output.sub`
   - Aggregates monthly data to stress periods (182.5-day intervals)
   - Converts units (mm/month → mm/day)
   - Maps watershed zones to MODFLOW grid cells

3. **MODFLOW Integration**: Modifies recharge package:
   - Updates `*.rch` file with spatially distributed recharge
   - Maintains zone-based recharge structure (22 subbasins + background)
   - Executes groundwater flow simulation

4. **Results Analysis**: Extracts volumetric budget:
   - Storage changes (STOI/STOO)
   - Constant head flows (CONI/CONO)
   - Well abstractions (WELI/WELO)
   - River-aquifer exchange (RIVI/RIVO)
   - Recharge (RECI/RECO)

### Model Configuration

**SWAT Model:**
- Temporal resolution: Daily (aggregated to monthly)
- Spatial units: 22 subbasins
- Outputs: `output.sub` (subbasin summary)

**MODFLOW Model:**
- Grid: Zone-based recharge (23 zones)
- Stress periods: Semi-annual (wet/dry seasons)
- Aquifer type: Two-layer alluvial system
- Solver: PCG (Preconditioned Conjugate Gradient)

**Coupling Parameters:**
- MODFLOW grid size: Configurable (default: 2 km²)
- Stress period length: 182.5 days
- Tolerance levels: Streamflow and groundwater level convergence

## Key Features

- ✅ **Semi-automated coupling workflow**: Batch execution of both models
- ✅ **Spatial aggregation**: Watershed subbasin to groundwater zone mapping
- ✅ **Temporal resampling**: Monthly to stress period conversion
- ✅ **Mass balance tracking**: Comprehensive water budget extraction
- ✅ **Quality assurance**: Input validation and coupling verification
- ✅ **Report generation**: Structured output for analysis

## System Requirements

### Legacy Software Notice

⚠️ **This is legacy research code from 2005-2007** developed in Visual Basic 6. It is provided primarily for:
- **Historical reference**: Documentation of research methodology
- **Reproducibility**: Archival of thesis implementation
- **Educational value**: Example of coupling framework design

**Original Environment:**
- Windows XP/Vista
- Visual Basic 6.0
- SWAT2003/SWAT2005
- MODFLOW-2000/MF2K
- GMS 5.0 (Groundwater Modeling System)

**Modern Compatibility:**
Running this code on modern systems may require:
- Virtual machine with Windows XP/7
- Visual Basic 6 runtime libraries
- Legacy model executables (SWAT2003, MF2K)
- Path adjustments for model executables

## Installation & Usage

### For Historical Reference

1. **Review the methodology**: See `CLAUDE.md` for detailed code architecture
2. **Examine source code**: `Main.frm` contains complete implementation
3. **Study sample data**: `Sample/` directory includes example model files

### For Replication (Advanced)

If attempting to run the original code:

1. Set up legacy environment (VM recommended)
2. Install VB6 runtime or compile from `Linkage.vbp`
3. Configure model paths in code:
   - MODFLOW: `C:\Program Files\GMS50\models\mf2k.exe`
   - SWAT: `C:\AVSWATX\AvSwatPr\swat2003.exe`
4. Launch `Linkage.exe` and load model files:
   - MODFLOW name file (`*.mfn`)
   - SWAT control file (`*.cio`)
   - Output destination (`*.txt`)
5. Execute coupling workflow

### Modern Alternatives

For contemporary surface-groundwater coupling, consider:
- **GSFLOW**: Fully integrated USGS model
- **MIKE SHE**: Commercial integrated modeling platform
- **Python-based frameworks**: MODFLOW 6 with FloPy + SWAT+ integration
- **OpenGeoSys**: Open-source THM coupling

## Outputs

The coupling framework generates:

1. **Recharge Files**:
   - `rch.txt`: Extracted SWAT percolation by basin and time
   - Modified `*.rch`: Updated MODFLOW recharge package
   - `*.ttt`: Processed recharge input
   - `*.rc2`: Backup of original recharge

2. **Water Balance**:
   - `gw-out.txt`: Stress period volumetric budgets
   - Report text file: Coupling summary and diagnostics

3. **Diagnostic Outputs**:
   - Temporal alignment verification
   - Mass balance closure checks
   - Zone mapping validation

## Publications

This research has been published in multiple international venues:

### Conference Papers

1. **Bejranonda, W.**, S. Koontanakulvong, M. Koch, and C. Suthidhummajit (2006). "Groundwater Modeling for Conjunctive Use Patterns Investigation in the Upper Central Plain of Thailand." *IAH-2006 Aquifers Systems Management*, Dijon, France.

2. **Bejranonda, W.**, S. Koontanakulvong, and M. Koch (2007). "Surface and Groundwater dynamic Interactions in the Upper Great Chao Phraya Plain of Thailand: Semi-coupling of SWAT and MODFLOW." *IAH-2007 Groundwater and Ecosystems*, Lisbon, Portugal.

### Book Chapter

3. **Bejranonda, W.**, S. Koontanakulvong, M. Koch, and C. Suthidhummajit (2007). "Groundwater Modeling for Conjunctive Use Patterns Investigation in the Upper Central Plain of Thailand." In: *Aquifer Systems Management: Darcy's Legacy in a World of Impending Water Shortage: Selected Papers on Hydrogeology 10*, Taylor & Francis, London, pp. 161-174 (Chapter 13).

### Master's Thesis

4. **Bejranonda, W.** (2007). "Coupling surface water and groundwater models for water balance analysis with an application to Upper Central groundwater basin." Master's Thesis, Chulalongkorn University, Thailand.
   [Available at Chula Digital Collections](https://digiverse.chula.ac.th/Info/item/dc:44931)

### Citation

If referencing this work, please cite:

```bibtex
@mastersthesis{bejranonda2007coupling,
  title={Coupling surface water and groundwater models for water balance analysis with an application to Upper Central groundwater basin},
  author={Bejranonda, Werapol},
  year={2007},
  school={Chulalongkorn University},
  address={Bangkok, Thailand}
}
```

## Academic Context

This work was developed as part of a Master of Engineering thesis in the Water Resources Engineering program at Chulalongkorn University (2005-2007). The research contributed to:

- **Methodological advancement**: Early implementation of SWAT-MODFLOW coupling in Southeast Asian context
- **Regional water management**: Supporting groundwater policy development in Thailand's Central Plain
- **Capacity building**: Training framework for integrated water resources modeling

The research was supervised by:
- **Assoc. Prof. Dr. Sucharit Koontanakulvong** (Chulalongkorn University)
- **Prof. Dr. Manfred Koch** (University of Kassel, Germany)

## Related Research

This Master's research and coupling framework formed the foundation for subsequent work, including:

### Journal Publications

**Bejranonda, W.**, Koch, M., & Koontanakulvong, S. (2013). "Surface water and groundwater dynamic interaction models as guiding tools for optimal conjunctive water use policies in the central plain of Thailand." *Environmental Earth Sciences*, 70, 2079–2086. https://doi.org/10.1007/s12665-011-1007-y

This peer-reviewed journal article extended the coupling framework to address conjunctive water use policies under climate change scenarios in Thailand's Central Plain.

### Doctoral Research

- **Doctoral Research (2009-2014)**: "Climate Impacts on Water Resources Systems" at University of Kassel, Germany
- **Extended methodology**: Multi-model ensemble approaches for climate change assessment
- **Publications**: Multiple peer-reviewed journal articles on uncertainty quantification in coupled hydrological systems

## Author

**Dr.-Ing. Werapol Bejranonda**

*Doctor of Engineering (Dr.-Ing.), University of Kassel, Germany*
*M.Eng. (Water Resources Engineering), Chulalongkorn University, Thailand*

### Career Arc

- **2004-2009**: Water resources modeling and computational hydrology
- **2009-2014**: Doctoral research on climate-water resources systems
- **2015-present**: Industry innovation in IoT, smart energy, and building automation

## License

This project is licensed under the MIT License - see below for details.

```
MIT License

Copyright (c) 2007 Werapol Bejranonda

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
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
SOFTWARE.
```

## Acknowledgments

This research was made possible through:

- **Funding**: Department of Groundwater Resources of Thailand
- **Institution**: Chulalongkorn University, Water Resources System Research Unit
- **International Collaboration**: University of Kassel, Germany
- **Data Support**: Royal Irrigation Department, Thai Meteorological Department

Special thanks to the faculty, colleagues, and research team members who contributed to this work during 2005-2007.

---

**Note**: This is archival research code from 2005-2007. While the methodology remains scientifically valid, users interested in surface-groundwater coupling for current applications should consider modern frameworks and tools. This repository serves primarily as historical documentation and methodological reference.

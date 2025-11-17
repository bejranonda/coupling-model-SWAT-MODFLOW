# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a **Surface-Groundwater Linkage Program** (Version 1.0.0b) built in Visual Basic 6 that couples two hydrological models:
- **SWAT2005** (Soil and Water Assessment Tool) - Surface water model
- **MODFLOW** (Modular finite-difference flow model) - Groundwater model

The program facilitates semi-coupled modeling by transferring recharge data from SWAT output to MODFLOW input, enabling analysis of conjunctive water use patterns and groundwater modeling scenarios.

## Building and Running

### Building the Application
- **Project Type**: Visual Basic 6 Executable (EXE)
- **Project File**: `Linkage.vbp`
- **Main Form**: `Main.frm`
- **Compiled Output**: `Linkage.exe`
- Build using Visual Basic 6 IDE (File → Make Linkage.exe)

### Running the Application
1. Launch `Linkage.exe`
2. Browse to select:
   - MODFLOW main file (`*.mfn`)
   - SWAT2005 main file (`*.cio`)
   - Output report text file (`*.txt`)
3. Configure coupling parameters (tolerances, grid size, outlet basin)
4. Execute simulation workflow

## Code Architecture

### Main Components

**Main.frm** (Main Form - Single file application)
- Contains all UI controls and business logic
- No separate modules or classes
- Uses MSChart20.OCX for charting and CommonDialog for file browsing

### Core Workflow

The coupling process follows this sequence:

1. **Input Configuration** (`Command1_Click` handlers)
   - Browse and select MODFLOW name file (*.mfn)
   - Browse and select SWAT control file (*.cio)
   - Define output file location

2. **Model Execution** (`Command5_Click`, `Command6_Click`)
   - `Command5_Click`: Generates and executes `modflow.bat` to run MODFLOW (mf2k)
   - `Command6_Click`: Generates and executes `swat.bat` to run SWAT2003
   - Batch files created dynamically with model paths

3. **Data Transfer** (`Command8_Click` - "Read SWAT")
   - Reads SWAT output (`output.sub`) to extract PERCO (percolation/recharge) data
   - Aggregates recharge by basin and stress period
   - Writes intermediate `rch.txt` file
   - Modifies MODFLOW recharge file (`*.rch`) by replacing zone values (1.0-22.0, 0.0) with calculated recharge rates
   - Creates modified `*.ttt` and backup `*.rc2` files

4. **Result Extraction** (`Command9_Click` - "MODFLOW-RCH")
   - Parses MODFLOW output (`*.out`) for volumetric budget data
   - Extracts water balance components (STOI, CONI, WELI, RIVI, RECI, STOO, CONO, WELO, RIVO, RECO)
   - Writes `gw-out.txt` with stress period budget summary

5. **Coupling Check** (`Command4_Click`)
   - Validates temporal alignment between SWAT and MODFLOW
   - Counts stress periods and time steps

### Key File Paths and Formats

**SWAT Files:**
- Input: `file.cio` (control file)
- Output: `output.sub` (subbasin summary with PERCO and WYLD)
- Data format: Fixed-width columns with basin, year, month, and water balance components

**MODFLOW Files:**
- Input: `*.mfn` (name file), `*.rch` (recharge package)
- Output: `*.out` (listing file with volumetric budget)
- Modified: `*.ttt` (updated recharge), `*.rc2` (backup)

**Model Execution:**
- MODFLOW: Expects `mf2k` executable in `C:\Program Files\GMS50\models`
- SWAT: Expects `swat2003` executable in `C:\AVSWATX\AvSwatPr`

### Data Structures

**Recharge Array** (`rcharge(23, 22)`):
- Dimensions: 23 basins × 22 stress periods
- Basin 23 stores hardcoded background recharge values
- Aggregates SWAT monthly recharge into semi-annual stress periods (6-month periods)
- Stress period transitions: October (start) and April (midpoint)

### Time Coupling Logic

**Stress Period Mapping:**
- SWAT runs on monthly timesteps
- MODFLOW uses stress periods (182.5 days each)
- Conversion: `rcharge(basin, stress) / 182.5` converts total mm to mm/day
- Flag `tt` tracks semi-annual transitions (wet/dry seasons)

## External Dependencies

- Visual Basic 6 Runtime
- MSCHRT20.OCX (MS Chart Control 2.0)
- COMDLG32.OCX (Common Dialog Control 1.2)
- OLE Automation (stdole2.tlb)

## Sample Data

Sample model files are provided in `Sample/`:
- `Sample/Coupled MODFLOW/`: Complete MODFLOW dataset (Waters3.*)
- `Sample/SWAT/`: Complete SWAT2005 dataset (basin-specific files, climate, soil, management)

## Academic Context

Based on research papers in the repository:
- "Groundwater Modeling for Conjunctive Use Patterns Investigation" (IAH 2006)
- "Semi-coupling of SWAT and MODFLOW" (IAH 2007)

The implementation uses a semi-coupled approach where models run sequentially with one-way data transfer (SWAT → MODFLOW), rather than full iterative coupling.

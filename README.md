This repository contains all the input files, machine-learned potential models, and scripts required to reproduce the results of the paper:

**"Unveiling the Role of Solvent in Solution Phase Chemical Reactions using Deep Potential-Based Enhanced Sampling Simulations"**

Project Overview
In this work, we developed an ab initio level accurate machine-learned (ML) potential for a solution-phase reactive system using a deep learning-based active learning strategy. This ML potential was used to carry out enhanced sampling simulations, which efficiently sampled the reaction process. Through multiple transitions between reactant and product states, we calculated a converged free energy surface for the reaction.

We investigated the Menshutkin reaction (a biomolecular nucleophilic substitution reaction, SN2) in aqueous medium, revealing that water stabilizes the ionic product state by enhanced solvation, facilitating the reaction and making it more spontaneous. This approach allows for the study of chemical reactions under realistic conditions, such as explicit solvents at finite temperatures, closely mimicking experimental conditions.

Repository Structure
This repository is organized into the following directories:

**1. [Active Learning](./Active%20Learning)**
	Input Files: Contains input files for the active learning process.\
	Product: Contains files related to the active learning for product state.\
	Reactant: Contains files related to the active learning for reactant state.\
	Reaction: Files corresponding to the active learning for reaction process.
 
**2. [CP2K Files](./CP2K%20Files)**
	plumed_opes.dat: Plumed input file for the on-the-fly enhanced sampling using OPES (On-the-fly Probability Enhanced Sampling).\
	plumed_product.dat: Plumed file specific to the product state.\
	plumed_reactant.dat: Plumed file specific to the reactant state.\
	product.xyz: XYZ file with atomic coordinates for the product state.\
	reactant.xyz: XYZ file with atomic coordinates for the reactant state.\
	react.inp: Input file for running CP2K simulations for the system.
 
**3. [Machine Learning Model](./Machine%20Learning%20Model)**
	Product: Contains ML potential files for the product state.\
	Reactant: Contains ML potential files for the reactant state.\
	Reaction: Contains ML potential files for the reaction state.\
	solvent_cv.plumed: Collective variable (CV) file for the solvent coordination analysis.\
	type_map.raw: Mapping file for atomic types.\
	type.raw: Raw data file specifying atom types.
 
**4. [Static DFT Files](./Static%20DFT%20Files)**
	Optimisation Files: DFT files for optimization of the system.\
	Single Point Calculations: DFT files for single point energy calculations.

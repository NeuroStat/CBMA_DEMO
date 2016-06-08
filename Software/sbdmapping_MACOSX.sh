####################
#### TITLE:     Executing seed based d-mapping with Mac OSX through the command line.
#### Contents:
####
#### Source Files:
#### First Modified: 08/06/2016
#### Author: Han Bossier
#### Notes:
#################

##
###############
### Notes
###############
##


# This is not an executable file. You will only find lines of code, that can
# be used through copy --> paste at your terminal in Mac OSX.

# Code comes from the tutorial of seed based d-mapping itself.

# --------------------------------------------------------------------#
# NOTE: I do not claim responsibility for the accuracy nor validity
# of the results using these algorithms and/or its defaults parameters. 
# --------------------------------------------------------------------#


##
###############
### Preparation
###############
##

# First, you should have the folder sdm downloaded. This can be found at:
# http://www.sdmproject.com/software/?show=Mac

# Next, you can put this folder at any accessible location.
# For instance at: ~/Documents/sdm
# We will assume this location through the remainder of this file.

# We start with providing read and write access to the files
# used for the calculations.
# Start with opening a terminal (CMD + space, then type 'terminal') .
  # Change working directory to sdm:
  cd ~/Documents/sdm
  # Grant access:
  chmod a+x imgcalc*
  chmod a+x sdm_mac
# Same with specific functions: 32 and 64 bit versions.
  cd bin/mac32
  chmod a+x sdm_core
  chmod a+x imgcalc
  chmod a+x sdm_parse
  cd ../mac64
  chmod a+x sdm_core
  chmod a+x imgcalc
  chmod a+x sdm_parse



# You will need the foci in the correct format (see example/tutorial)
# And you will need an extra file containing the included studies.
  # This should be called sdm_table.txt. It looks like this:
    # study	n1
    # Baumgartner	29
    # Civai	19
    # Corradi	23
    # etc...

# If we have the local maxima, and the file called sdm_table.txt.
# We can start with our meta-analysis.
# Say we have these files in the folder: ~/Documents/UMG_meta_analysis

  # Go to this folder
  cd ~/Documents/UMG_meta_analysis


##
###############
### Meta-analysis
###############
##

# --- (1) ---
# We start with the preparation. This lets the program convert the reported
# t-values to effect sizes with its variance estimators,
# applies a Gaussian (or anisotropic) kernel and uses whole brain permutations
# to create a null distribution


# Using function pre-process (pp)
  # Arguments:
    # (1) correlation template: gray_matter
    # (2) usage of anisotropy (0 = no anistropy, 1 means full)
    # (3) size of maximum smoothing kernel (validated at 20 mm)
    # (4) used mask: gray_matter
    # (5) number of whole brain permutations: around 50 is sufficient
~/Documents/sdm/sdm_mac pp gray_matter, 0.0, 20, gray_matter, 50


# --- (2) ---
# Now we calculate a weighted average in each voxel over all studies.
# The weights incorporate within study variability as well as between
# study variability which is estimated through the DerSimonian and Laird
# estimator.


# Function mean and define a new variable MyMean.
  # NOTE: due to bug in software, we cannot give another name to this variable!
~/Documents/sdm/sdm_mac MyMean = mean



# --- (3) ---
# Finally we apply thresholding. No correction for multiple testing.
# We only specify a cut-off on the p-values, which is calculated on a
# z-map obtained from the weighted average.
  # Function: threshold
  # Argument:
    # (1) the z-map which is called MyMean_z
    # (2) thresholding on p-values
    # (3) the p-value threshold
    # (4) the extent of the Z-value (validated at 1)
    # (5) the extent of number of contiguous voxels (validated at 10)
      # 4 and 5 are to reduce false errors
~/Documents/sdm/sdm_mac threshold MyMean_z, p, 0.001, 1, 10

# This creates a file called:
  # MyMean_z_p_0.00100_1.000_10_p.nii which are the 'significant' voxels






















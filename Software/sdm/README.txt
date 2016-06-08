About SDM v4.31 software
========================

Seed-based d Mapping (formerly Signed Differental Mapping; SDM) software
is free to use and distribute. Please contact Joaquim Radua at
http://www.sdmproject.com/ for any doubt.

This software was created and has been developed by Joaquim Radua with
the kind support of David Mataix-Cols and other collaborators. Please
cite the papers in which the SDM method is described:

1 - Radua J and Mataix-Cols D. Meta-analytic methods for neuroimaging
    data explained. Biol Mood Anxiety Disord 2012; 2:6.

2 - Radua J and Mataix-Cols D. Voxel-wise meta-analysis of grey matter
    changes in obsessive-compulsive disorder. Br J Psychiatry 2009; 195:
    393-402.

3 - Radua J, van den Heuvel OA, Surguladze S and Mataix-Cols D. Meta-a-
    nalytical comparison of voxel-based morphometry studies in obsessive
    compulsive disorder vs other anxiety disorders. Arch Gen Psychiatry
    2010; 67:701-711.

4 - Radua J, Mataix-Cols D, Phillips ML, El-Hage W, Kronhaus DM, Cardo-
    ner N and Surguladze S. A new meta-analytic method for neuroimaging
    studies that combines reported peak coordinates and statistical pa-
    rametric maps. Eur Psychiat 2012; 27:605-11.

5 - Radua J, Rubia K, Canales-Rodriguez EJ, Pomarol-Clotet E, Fusar-Poli
    P and Mataix-Cols D. Anisotropic kernels for coordinate-based meta-
    analyses of neuroimaging studies. Front Psychiatry 2014; 5:13.

6 - Radua J, Via E, Catani M and Mataix-Cols D. Voxel-based meta-analy-
    sis of regional white-matter volume differences in autism spectrum
    disorder versus healthy controls. Psychol Med 2011; 41:1539-1550.

7 - Peters BD, Szeszko PR, Radua J, Ikuta T, Gruner P, Derosse P, Zhang
    JP, Giorgio A, Qiu D, Tapert SF, Brauer J, Asato MR, Khong PL, James
    AC, Gallego JA and Malhotra AK. White matter development in adoles-
    cence: diffusion tensor imaging and meta-analytic results. Schizophr
    Bull 2012; 38:1308-17.

8 - Radua J, Romeo M, Mataix-Cols D and Fusar-Poli P. A general approach
    for combining voxel-based meta-analyses conducted in different neu-
    roimaging modalities. Curr Med Chem 2013; 20:462-466.

9 - Radua J, Grau M, van den Heuvel OA, de Schotten MT, Stein DJ, Cana-
    les-Rodriguez EJ, Catani M and Mataix-Cols D. Multimodal voxel-based
    meta-analysis of white matter abnormalities in obsessive-compulsive
    disorder. Neuropsychopharmacology 2014; 39:1547-57.


SDM software log
================

v4.31 - Moderate changes version. Main changes: specific MNI transforma-
(05/15) tions have been introduced for FSL and software other than SPM
        (to avoid confusion, *.mni.txt must be now one of:
        *.spm_mni.txt, *.fsl_mni.txt or *.other_mni.txt; *.mni2tal.txt
        must be now one of: *.spm_brett.txt or *.fsl_brett.txt;
        *.tal.txt must be *.other_tal.txt; and any of them may be
        *.no_peaks.txt if it includes no peaks), threshold procedures
        (in both imgcalc and sdm) create a mask for each blob (which may
        be used to extract mean blob values), *_QH_z and *_Q2_z maps are
        now called *_z_QH and *_z_Q2, and multimodal analyses can now be
        run from the command line and optionally conducted assuming no
        error in p-values, without reducing false positive rates, and
        specifying the tolerable p-values from the unimodal meta-analy-
        ses.

v4.22 - Minor changes version. Solved a bug related to thresholding in
(05/15) multimodal meta-analyses.

v4.21 - Major changes version. Main improvements: the software is now
(01/15) also compiled for Apple OSX (though currently without GUI), in-
        clusion of the white matter atlas by Catani, Thiebaut de Schot-
        ten et al (which includes structures not present in other atlas-
        es such as the U and aslant tracts), and thresholding has been
        recoded to increase speed and be called from imgcalc (which now
        includes five new threhsolding / blobs commands: -atlas for at-
        las information, -blobs for simple blob information, -ethr for
        cluster extent thresholding, -sdm for atlas and SDM information,
        and -pthr for cluster peak thresholding). Other improvements:
        detailed console output for imgcalc, sdm_main.nii.gz file has
        been replaced by individual *.nii.gz files, the multimodal algo-
        rithm has been rewritten to speed the analyses, the SDM table
        may have empty cells (which are automatically filled with NA)
        and a column called jackknife without throwing errors, and the
        GUI checks that filenames not have forbidden characters and
        sorts dialog lists. Solved two small bugs: in some systems the
        program asked for updates even if the last version was already
        installed, and I2 was not correctly printed. Other changes:
        thresholding does not create logp maps any more (these can be
        easily obtained from p maps using imgcalc), "invp" has been re-
        placed by "p" in imgcalc.

v4.13 - Minor changes version. Solved two small bugs: the program froze
(03/14) in Windows when checking updates depending on the internet con-
        nection, and Brodmann areas were occasionally wrongly displayed.

v4.12 - Minor changes version. Solved bugs that maked the thresholding
(02/14) crash if no threshold was specified or if peaks where close to
        the end of the volume.

v4.11 - Major changes version. Main additions: Pre-processing of peaks
(02/14) is conducted taking into account the anisotropy in the spatial
        covariance, new masks and correlation templates have been added
        (e.g. cerebrospinal fluid), many parts of the software have been
        rewritten to increase compatibility (e.g. use of MNI instead of
        Talairach space, or *.nii.gz and *.txt instead of *.sdm files,
        so that users may use their own templates, masks, and etcetera),
        one-sample studies (e.g. correlation with a measure) and two-
        sample studies (e.g. high vs. low measure) may be combined in a
        single meta-analysis. Other improvements: heterogeneity I2 sta-
        tistic is also reported, command-line sdm / imgcalc work in the
        directory from where they are called (i.e. two meta-analyses can
        be safely conducted at the same time), automatic updates, Win-
        dows version is also compiled in 64 bits, many parts of the code
        have been rewritten to optimize performance and avoid memory
        overloads, and bugs on the specifiction of FSLView executable
        and of multimodal folders have been addressed. Other changes:
        Talairach labels have been replaced by AAL (with names standar-
        dized according to the Online Brain Atlas Reconciliation Tool),
        JHU (provisional) and Brodmann areas, masks can be created from
        the command line with "mask" and it's not necessary to specify a
        name for the masks), pp parameters have changed, isotropic FWHM
        is set in the pp dialog (rather than in settings), the old ori-
        ginal method and the interactive console interface have been de-
        precated, and the commands quantile and citation have been de-
        precated.

v3.11 - Major changes version. Main addition: incorporation of the mul-
(08/12) timodal analysis. Other modifications: multiple regression can
        be directly set from the menus, threshold of analyses with no
        findings also returns images.

v2.31 - Moderate changes version. Additions: incorporation of the TBSS
(04/12) template to conduct meta-analyses of TBSS diffusion studies, and
        imgcalc also conducts logarithmic, power, threshold, trigonome-
        tric and other basic operations. Improvement: a bug from version
        2.14 that caused p- and logp-images to sometimes include less
        voxels than those reported has been solved.

v2.21 - Moderate changes version. Improvements: output reports are dis-
(03/12) played in user-friendly web-like files, simple arithmetic func-
        tions have been added to imgcalc, and reporting of pre-proces-
        sing errors is more detailed. Other changes: syntaxis of imgcalc
        has been changed to be similar to that of fslmaths, pre-proces-
        sing reports now only include the absolute peaks, and SDM pro-
        cessor and interfaces have been further separated to optimize
        memory usage.

v2.14 - Minor changes version. Additions: imgcalc also converts "1-p
(10/11) values" images, sdm_threshold also includes a height threhsold
        for z-values as described in the ES-SDM method, and FSLView is
        also supported. Improvements: sdm looks for MRIcron (or FSLView)
        program in standard installation directories, defaults have been
        updated to match the ES-SDM standards, jackknife analysis is
        controlled by the interface optimizing memory use, images
        produced by sdm_threshold only include the clusters described in
        the text report, sdm_threshold allows spaces in map names, and
        sdm_help utility has been replaced by website help.

v2.13 - Minor changes version. Improvements: the "update" library has
(07/11) been replaced in order to also work in some Linux distributions,
        and a bug in pre-processing has been solved (reading of statis-
        tical images caused the program to stop if there were no negati-
        ve values).

v2.12 - Minor changes version. Improvements: a NIfTI image for each pre-
(07/11) processed study is saved, and a bug in pre-processing has been
        solved (reading of statistical images was set for Analyze rather
        than NIfTI, so that NIfTI files could not be read).

v2.11 - Major changes version. Addition: the new Effect-Size Signed
(05/11) Differental Mapping SDM (ES-SDM) algorithms that combine repor-
        ted peak coordinates and statistical parametric maps. These in-
        clude a pre-analysis of coordinates' effect size, pre-processing
        for NIfTI images, new pre-processing for peaks, and new meta-a-
        nalytic mean / linear model (see Radua et al, Eur Psychiat 2011
        for details). To help the user prepare the data for ES-SDM, con-
        versors to t values for both images and peaks have been included
        in the interface, the former using the new 'imgcalc' utility.
        Other changes: some small interface bugs in the globals proce-
        dure and the SDM table editor have been addressed, NIfTI exports
        have been optimized by including more header parameters, float
        precision, compression (*.nii.gz) and (-log) p-values maps.

v1.31 - Major changes version. Addition: a white matter especific tem-
(11/10) plate has been added to conduct meta-analyses of white matter
        VBM or DTI. Impovements: extract procedure now also outputs to
        the main screen, update checking also works in 64bits Linux.
        Other changes: FDR thresholding has been deprecated.

v1.21 - Major changes version. Improvement: linear model procedure has
(07/10) been expanded to allow comparisons between groups or use of co-
        variates, batch and output have been joined in a single screen
        while log has been reduced to a secondary screen, extent thres-
        hold can be optionally set.

v1.14 - Moderate changes version. Additions: a new procedure (globals)
(04/10) for conducting the meta-analysis of global variables such as the
        global gray matter, and automatic checks for updates. Improve-
        ment: visual style of graphical interface, linear model varia-
        bles are automatically scaled to have values between 0 and 1,
        citation text.

v1.13 - Moderate changes version. Improvements: batch processing can be
(01/10) called from the menus and an editor has been included in the
        graphical interface, reporting of local peaks within a cluster,
        SDM core (the main processor) and auxiliary software (table edi-
        tor and help support) have been independized from the interface,
        default parameters in commands, commands can also be called from
        the graphical interface, output appears in a separate window in
        the graphical inferface. Other changes: batch commands are an
        option (rather than the main entry) in the console interface,
        several commands have been deprecated (cd, chdir, create.mask,
        dir, mc.weighted.mean, read.table, setwd), two command names
        have been replaced (mc.lm -> lm, mc.mean -> mean), mc.pp command
        action has been included in pp command, additional weighting has
        been deprecated, FDR thresholding (and value thresholding for
        maps other than quartiles) is not longer available in dialogs.

v1.12 - Minor changes version. Additions: extraction of Talairach coor-
(11/09) dinates or labels values, MRIcron brain viewer integration, and
        possibility to run the SDM software as an SPM (Statistical Para-
        metric Mapping) extension. Improvements: cluster breakdown was
        conducted separately for each cluster, Analyze images export was
        replaced by NIfTI (Analyze-compatible) images export, and the
        program correctly reads text files saved in a Mac computer.

v1.11 - First, original version. The program was able to convert coordi-
(07/09) nates to Talairach, preprocess the studies, calculate means with
        jackknife, quartiles and regressions. It also thresholded re-
        sults by p, FDR or SDM, and output Analyze images. It came with
        a console version able to batch processing and a GTK graphical
        interface with a table editor for the variables. The program was
        compiled for both Linux and Windows.


About other files
=================

You can find the GTK source code at http://www.gtk.org/, the Wget source
code at http://www.gnu.org/s/wget/, and several atlas at MRIcron website
(http://www.mccauslandcenter.sc.edu/mricro/mricron/) or described in:

- Thiebaut de Schotten M, Dell'Acqua F, Forkel SJ, Simmons A, Vergani F,
  Murphy DG, Catani M. A lateralized brain network for visuospatial a-
  ttention. Nat Neurosci 2011;14:1245-1246.

- Thiebaut de Schotten M, Ffytche DH, Bizzi A, Dell'Acqua F, Allin M,
  Walshe M, Murray R, Williams SC, Murphy DG, Catani M. Atlasing loca-
  tion, asymmetry and inter-subject variability of white matter tracts
  in the human brain with MR diffusion tractography. Neuroimage 2011;
  54:49-59.

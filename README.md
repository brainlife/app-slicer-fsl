<h1 align="center">Generate QA images with FSL slicer</h1>

<p align="center">
  Quick-look PNG images (mid-axial, sagittal and coronal slices) of anatomical, diffusion, functional, mask, tensor and NODDI data, for visual quality control and figures.
</p>

<p align="center">
  <a href="https://github.com/brainlife/abcd-spec"><img src="https://img.shields.io/badge/ABCD_Spec-v1.1-green.svg" alt="ABCD Spec v1.1"></a>
  <a href="https://doi.org/10.25663/brainlife.app.689"><img src="https://img.shields.io/badge/Brainlife-brainlife.app.689-blue.svg" alt="Run on brainlife.io"></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-lightgrey.svg" alt="MIT license"></a>
</p>

> **This branch, `master-app-v1.0.0`, runs 6 brainlife.io Apps** that share the same code:
>
> - Generate images of FLAIR ([doi:10.25663/brainlife.app.689](https://doi.org/10.25663/brainlife.app.689))
> - Generate images of masks ([doi:10.25663/brainlife.app.307](https://doi.org/10.25663/brainlife.app.307))
> - Generate images of T2 ([doi:10.25663/brainlife.app.301](https://doi.org/10.25663/brainlife.app.301))
> - Generate images of T1 ([doi:10.25663/brainlife.app.300](https://doi.org/10.25663/brainlife.app.300))
> - Generate images of fMRI ([doi:10.25663/brainlife.app.299](https://doi.org/10.25663/brainlife.app.299))
> - Generate images of DWI ([doi:10.25663/brainlife.app.298](https://doi.org/10.25663/brainlife.app.298))
>
> The other Apps in this repository are listed under **Versions on brainlife.io** below.

## At a glance

<!-- brainlife-app:begin (generated from the App manifest; edit the manifest, not this block) -->

### Generate images of FLAIR

> **Generates a PNG of mid-axial, sagittal and coronal slices of a FLAIR image with FSL slicer, for quick visual quality control.**

Runs FSL slicer -a on the input FLAIR image and writes raw/out.png. When the volume parameter is set, fslselectvols first extracts that volume from a 4D image; otherwise slicer renders the image as given. Use it for quick visual QA or for figures; it does not modify the data.

| | |
|---|---|
| **Inputs** | `neuro/anat/flair` |
| **Outputs** | `raw` |
| **Container** | `brainlife/fsl:5.0.9` |
| **Resources** | 1 CPUs · 0.25 h walltime |
| **Run it** | [doi.org/10.25663/brainlife.app.689](https://doi.org/10.25663/brainlife.app.689) |

#### Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `input` | `neuro/anat/flair` | yes | FLAIR image (anat/flair datatype). |

#### Outputs

| Output | Datatype | Description |
|---|---|---|
| `raw` | `raw` | Directory with out.png, a mid-axial, sagittal and coronal slice montage of the FLAIR image. |

<details>
<summary><b>Parameters</b> (1)</summary>

| Parameter | Type | Default | Description |
|---|---|---|---|
| `volume` | string |  | Index of the volume to render from a 4D image (passed to fslselectvols --vols). Leave empty to render the image as given. |

</details>

### Generate images of masks

> **Generates a PNG of mid-axial, sagittal and coronal slices of a mask image with FSL slicer, for quick visual quality control.**

Runs FSL slicer -a on the input mask image and writes raw/out.png. When the volume parameter is set, fslselectvols first extracts that volume from a 4D image; otherwise slicer renders the image as given. Use it for quick visual QA or for figures; it does not modify the data.

| | |
|---|---|
| **Inputs** | `neuro/mask` |
| **Outputs** | `raw` |
| **Container** | `brainlife/fsl:5.0.9` |
| **Resources** | 1 CPUs · 0.25 h walltime |
| **Run it** | [doi.org/10.25663/brainlife.app.307](https://doi.org/10.25663/brainlife.app.307) |

#### Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `input` | `neuro/mask` | yes | The path to the mask datatype |

#### Outputs

| Output | Datatype | Description |
|---|---|---|
| `raw` | `raw` | Directory with out.png, a mid-axial, sagittal and coronal slice montage of the mask image. |

<details>
<summary><b>Parameters</b> (1)</summary>

| Parameter | Type | Default | Description |
|---|---|---|---|
| `volume` | string |  | Index of the volume to render from a 4D image (passed to fslselectvols --vols). Leave empty to render the image as given. |

</details>

### Generate images of T2

> **Generates a PNG of mid-axial, sagittal and coronal slices of a T2-weighted image with FSL slicer, for quick visual quality control.**

Runs FSL slicer -a on the input T2-weighted image and writes raw/out.png. When the volume parameter is set, fslselectvols first extracts that volume from a 4D image; otherwise slicer renders the image as given. Use it for quick visual QA or for figures; it does not modify the data.

| | |
|---|---|
| **Inputs** | `neuro/anat/t2w` |
| **Outputs** | `raw` |
| **Container** | `brainlife/fsl:5.0.9` |
| **Resources** | 1 CPUs · 0.25 h walltime |
| **Run it** | [doi.org/10.25663/brainlife.app.301](https://doi.org/10.25663/brainlife.app.301) |

#### Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `input` | `neuro/anat/t2w` | yes | The path to the anat/t2w datatype |

#### Outputs

| Output | Datatype | Description |
|---|---|---|
| `raw` | `raw` | Directory with out.png, a mid-axial, sagittal and coronal slice montage of the T2-weighted image. |

<details>
<summary><b>Parameters</b> (1)</summary>

| Parameter | Type | Default | Description |
|---|---|---|---|
| `volume` | string |  | Index of the volume to render from a 4D image (passed to fslselectvols --vols). Leave empty to render the image as given. |

</details>

### Generate images of T1

> **Generates a PNG of mid-axial, sagittal and coronal slices of a T1-weighted image with FSL slicer, for quick visual quality control.**

Runs FSL slicer -a on the input T1-weighted image and writes raw/out.png. When the volume parameter is set, fslselectvols first extracts that volume from a 4D image; otherwise slicer renders the image as given. Use it for quick visual QA or for figures; it does not modify the data.

| | |
|---|---|
| **Inputs** | `neuro/anat/t1w` |
| **Outputs** | `raw` |
| **Container** | `brainlife/fsl:5.0.9` |
| **Resources** | 1 CPUs · 0.25 h walltime |
| **Run it** | [doi.org/10.25663/brainlife.app.300](https://doi.org/10.25663/brainlife.app.300) |

#### Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `input` | `neuro/anat/t1w` | yes | The path to the anat/t1w datatype |

#### Outputs

| Output | Datatype | Description |
|---|---|---|
| `raw` | `raw` | Directory with out.png, a mid-axial, sagittal and coronal slice montage of the T1-weighted image. |

<details>
<summary><b>Parameters</b> (1)</summary>

| Parameter | Type | Default | Description |
|---|---|---|---|
| `volume` | string |  | Index of the volume to render from a 4D image (passed to fslselectvols --vols). Leave empty to render the image as given. |

</details>

### Generate images of fMRI

> **Generates a PNG of mid-axial, sagittal and coronal slices of a fMRI (task) image with FSL slicer, for quick visual quality control.**

Runs FSL slicer -a on the input fMRI (task) image and writes raw/out.png. When the volume parameter is set, fslselectvols first extracts that volume from a 4D image; otherwise slicer renders the image as given. Use it for quick visual QA or for figures; it does not modify the data.

| | |
|---|---|
| **Inputs** | `neuro/func/task` |
| **Outputs** | `raw` |
| **Container** | `brainlife/fsl:5.0.9` |
| **Resources** | 1 CPUs · 0.25 h walltime |
| **Run it** | [doi.org/10.25663/brainlife.app.299](https://doi.org/10.25663/brainlife.app.299) |

#### Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `input` | `neuro/func/task` | yes | The path to the func/task datatype |

#### Outputs

| Output | Datatype | Description |
|---|---|---|
| `raw` | `raw` | Directory with out.png, a mid-axial, sagittal and coronal slice montage of the fMRI (task) image. |

<details>
<summary><b>Parameters</b> (1)</summary>

| Parameter | Type | Default | Description |
|---|---|---|---|
| `volume` | string |  | choose the volume to generate the image of. if empty, will use the first volume |

</details>

### Generate images of DWI

> **Generates a PNG of mid-axial, sagittal and coronal slices of a DWI image with FSL slicer, for quick visual quality control.**

Runs FSL slicer -a on the input DWI image and writes raw/out.png. When the volume parameter is set, fslselectvols first extracts that volume from a 4D image; otherwise slicer renders the image as given. Use it for quick visual QA or for figures; it does not modify the data.

| | |
|---|---|
| **Inputs** | `neuro/dwi` |
| **Outputs** | `raw` |
| **Container** | `brainlife/fsl:5.0.9` |
| **Resources** | 1 CPUs · 0.25 h walltime |
| **Run it** | [doi.org/10.25663/brainlife.app.298](https://doi.org/10.25663/brainlife.app.298) |

#### Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `input` | `neuro/dwi` | yes | DWI image (NIfTI); bvecs and bvals are passed along but not used. |

#### Outputs

| Output | Datatype | Description |
|---|---|---|
| `raw` | `raw` | Directory with out.png, a mid-axial, sagittal and coronal slice montage of the DWI image. |

<details>
<summary><b>Parameters</b> (1)</summary>

| Parameter | Type | Default | Description |
|---|---|---|---|
| `volume` | string |  | Index of the volume to render from a 4D image (passed to fslselectvols --vols). Leave empty to render the image as given. |

</details>

<!-- brainlife-app:end -->

## Versions on brainlife.io

This repository hosts a family of QA-image Apps. Each is a separate App on brainlife.io, built from its own branch; the Apps on the same branch share the same code and differ only in the input datatype.

| App | Main tool | Branch | Run it | Status |
|---|---|---|---|---|
| **Generate images of FLAIR** (this branch) | FSL 5.0.9 | [`master-app-v1.0.0`](https://github.com/brainlife/app-slicer-fsl/tree/master-app-v1.0.0) | [doi:10.25663/brainlife.app.689](https://doi.org/10.25663/brainlife.app.689) | current |
| **Generate images of DWI** (this branch) | FSL 5.0.9 | [`master-app-v1.0.0`](https://github.com/brainlife/app-slicer-fsl/tree/master-app-v1.0.0) | [doi:10.25663/brainlife.app.298](https://doi.org/10.25663/brainlife.app.298) | current |
| **Generate images of fMRI** (this branch) | FSL 5.0.9 | [`master-app-v1.0.0`](https://github.com/brainlife/app-slicer-fsl/tree/master-app-v1.0.0) | [doi:10.25663/brainlife.app.299](https://doi.org/10.25663/brainlife.app.299) | current |
| **Generate images of T1** (this branch) | FSL 5.0.9 | [`master-app-v1.0.0`](https://github.com/brainlife/app-slicer-fsl/tree/master-app-v1.0.0) | [doi:10.25663/brainlife.app.300](https://doi.org/10.25663/brainlife.app.300) | current |
| **Generate images of T2** (this branch) | FSL 5.0.9 | [`master-app-v1.0.0`](https://github.com/brainlife/app-slicer-fsl/tree/master-app-v1.0.0) | [doi:10.25663/brainlife.app.301](https://doi.org/10.25663/brainlife.app.301) | current |
| **Generate images of masks** (this branch) | FSL 5.0.9 | [`master-app-v1.0.0`](https://github.com/brainlife/app-slicer-fsl/tree/master-app-v1.0.0) | [doi:10.25663/brainlife.app.307](https://doi.org/10.25663/brainlife.app.307) | current |
| Generate images of tensor | FSL 5.0.9 | [`tensor-v1.0.0`](https://github.com/brainlife/app-slicer-fsl/tree/tensor-v1.0.0) | [doi:10.25663/brainlife.app.302](https://doi.org/10.25663/brainlife.app.302) | current |
| Generate images of NODDI | FSL 5.0.9 | [`noddi-v1.0.1`](https://github.com/brainlife/app-slicer-fsl/tree/noddi-v1.0.1) | [doi:10.25663/brainlife.app.367](https://doi.org/10.25663/brainlife.app.367) | current |
| Generate images of NODDI - Deprecated | FSL 5.0.9 | [`noddi-v1.0.0`](https://github.com/brainlife/app-slicer-fsl/tree/noddi-v1.0.0) | [doi:10.25663/brainlife.app.303](https://doi.org/10.25663/brainlife.app.303) | deprecated |
| Generate images of mask overlaid on DWI | FSL 5.0.9 | [`dwi-mask-overlay-v1.0.0`](https://github.com/brainlife/app-slicer-fsl/tree/dwi-mask-overlay-v1.0.0) | [doi:10.25663/brainlife.app.308](https://doi.org/10.25663/brainlife.app.308) | current |
| Generate images of DWI overlaid on T1 | FSL 5.0.9, FSLeyes 1.0 | [`dwi-t1-v1.0.0`](https://github.com/brainlife/app-slicer-fsl/tree/dwi-t1-v1.0.0) | [doi:10.25663/brainlife.app.309](https://doi.org/10.25663/brainlife.app.309) | current |
| Generate images of fMRI overlaid on T1 | FSL 5.0.9, FSLeyes 1.0 | [`fmri-t1-v1.0.0`](https://github.com/brainlife/app-slicer-fsl/tree/fmri-t1-v1.0.0) | [doi:10.25663/brainlife.app.490](https://doi.org/10.25663/brainlife.app.490) | current |
| Generate images of tissue type masks | MRtrix3 3.0_RC3, FSL | [`5tt-v1.0.0`](https://github.com/brainlife/app-slicer-fsl/tree/5tt-v1.0.0) | [doi:10.25663/brainlife.app.312](https://doi.org/10.25663/brainlife.app.312) | current |
| Generate images of all DWI volumes and create gif | FSL 5.0.9, ImageMagick | [`montage-v1.0`](https://github.com/brainlife/app-slicer-fsl/tree/montage-v1.0) | [doi:10.25663/brainlife.app.588](https://doi.org/10.25663/brainlife.app.588) | current |

## Running the App

### On brainlife.io

Open the App that matches your data (see the table above), choose the input dataset from your project, optionally set `volume` (the index of the volume to render from a 4D image) and press **Execute**. The images are archived to your project as a `raw` (or `generic/images`) dataset tagged `qa_image`, which you can view in the browser or download.

### Locally

You need [Singularity/Apptainer](https://apptainer.org/) and [`jq`](https://jqlang.github.io/jq/). The containers (`brainlife/fsl:5.0.9`, and for some branches `brainlife/fsleyes:1.0`, `brainlife/mrtrix3:3.0_RC3` or an ImageMagick image) are pulled automatically.

1. Clone this repository and check out the branch of the App you want (for example `git checkout master-app-v1.0.0`).
2. Create `config.json` with the path to your image. For the single-image Apps (`master-app-v1.0.0`):

   ```json
   {
       "input": "testdata/dwi/dwi.nii.gz",
       "volume": ""
   }
   ```

   The other branches read their own keys: `fa`, `md`, `ad`, `rd` (and optionally `ga`, `ak`, `mk`, `rk`) for `tensor-v1.0.0`; `ndi`, `odi`, `isovf` for `noddi-v1.0.1`; `dwi` and `mask` for `dwi-mask-overlay-v1.0.0`; `dwi`, `bvals` and `anat` for `dwi-t1-v1.0.0`; `bold` and `anat` for `fmri-t1-v1.0.0`; `input` (a 5TT image) and optionally `anat` for `5tt-v1.0.0`; `input` for `montage-v1.0`.

3. Run the App:

   ```bash
   ./main
   ```

### Sample data

Download sample datasets from brainlife.io with the [brainlife CLI](https://github.com/brainlife/cli):

```bash
npm install -g brainlife
bl login
mkdir input
bl dataset download <dataset-id>
```

## Outputs

All images are written to `raw/`:

- **Single-image Apps** (DWI, fMRI, T1, T2, FLAIR, masks): `raw/out.png`, a montage of mid-axial, sagittal and coronal slices produced by `slicer -a`.
- **Tensor**: `fa.png`, `md.png`, `ad.png`, `rd.png` and, when kurtosis maps are present, `ga.png`, `mk.png`, `ak.png`, `rk.png`.
- **NODDI**: `ndi.png`, `odi.png`, `isovf.png`.
- **Mask on DWI**, **DWI on T1**, **fMRI on T1**: `raw/out.png` with the overlay.
- **Tissue types**: `gm.png`, `wm.png`, `csf.png`, `gmwmi.png`.
- **DWI montage**: one PNG per volume (`vol0000.png`, …), `out.gif` animating them, and `out.png` (the first volume).

## Troubleshooting

- **Running locally with a 4D image**: leave `volume` as an empty string to render the image as given. Any other value (including `null`) is passed to `fslselectvols --vols`.
- **Overlay Apps show misaligned images**: the DWI/fMRI and the T1 must already be registered, and a mask must share the DWI's voxel grid; these Apps only render, they do not align.
- **`something failed. check logs and derivatives`** (DWI montage): `out.gif` was not created; check the job log for errors from `fslsplit`, `slicer` or `convert`.

## Citing

> [!TIP]
> If you use this App in your work, please cite the App, the software it builds on and brainlife.io (below). GitHub's **Cite this repository** button gives the App citation in APA and BibTeX.

If you use these Apps, please cite the App, the underlying tools and brainlife.io:

- Generate images of FLAIR. brainlife.io App. [doi:10.25663/brainlife.app.689](https://doi.org/10.25663/brainlife.app.689)
- Generate images of masks. brainlife.io App. [doi:10.25663/brainlife.app.307](https://doi.org/10.25663/brainlife.app.307)
- Generate images of T2. brainlife.io App. [doi:10.25663/brainlife.app.301](https://doi.org/10.25663/brainlife.app.301)
- Generate images of T1. brainlife.io App. [doi:10.25663/brainlife.app.300](https://doi.org/10.25663/brainlife.app.300)
- Generate images of fMRI. brainlife.io App. [doi:10.25663/brainlife.app.299](https://doi.org/10.25663/brainlife.app.299)
- Generate images of DWI. brainlife.io App. [doi:10.25663/brainlife.app.298](https://doi.org/10.25663/brainlife.app.298)
- Jenkinson et al. FSL. *NeuroImage* 62:782-790 (2012). [doi:10.1016/j.neuroimage.2011.09.015](https://doi.org/10.1016/j.neuroimage.2011.09.015)
- Tournier et al. MRtrix3: A fast, flexible and open software framework for medical image processing and visualisation. *NeuroImage* 202:116137 (2019). [doi:10.1016/j.neuroimage.2019.116137](https://doi.org/10.1016/j.neuroimage.2019.116137)
- Zhang et al. NODDI: Practical in vivo neurite orientation dispersion and density imaging of the human brain. *NeuroImage* 61:1000-1016 (2012). [doi:10.1016/j.neuroimage.2012.03.072](https://doi.org/10.1016/j.neuroimage.2012.03.072)
- Hayashi S, Caron BA, Heinsfeld AS, et al. brainlife.io: a decentralized and open-source cloud platform to support neuroscience research. *Nature Methods* 21:809–813 (2024). [doi:10.1038/s41592-024-02237-2](https://doi.org/10.1038/s41592-024-02237-2)
- Avesani P, McPherson B, Hayashi S, et al. The open diffusion data derivatives, brain data upcycling via integrated publishing of derivatives and reproducible open cloud services. *Scientific Data* 6:69 (2019). [doi:10.1038/s41597-019-0073-y](https://doi.org/10.1038/s41597-019-0073-y)

## Authors

- Brad Caron

**Contributors:** Soichi Hayashi

## Funding

[![Wellcome-226486/Z/22/Z](https://img.shields.io/badge/Wellcome-226486%2FZ%2F22%2FZ-purple.svg)](https://wellcome.org/)
[![NIH-NINDS-U24NS140384](https://img.shields.io/badge/NIH_NINDS-U24NS140384-green.svg)](https://reporter.nih.gov/project-details/11261037)
[![NIH-NINDS-UM1NS132207](https://img.shields.io/badge/NIH_NINDS-UM1NS132207-green.svg)](https://reporter.nih.gov/project-details/11411328)
[![NIH-NIBIB-R01EB029272](https://img.shields.io/badge/NIH_NIBIB-R01EB029272-green.svg)](https://reporter.nih.gov/project-details/10262925)
[![NIH-NIBIB-R01EB030896](https://img.shields.io/badge/NIH_NIBIB-R01EB030896-green.svg)](https://reporter.nih.gov/project-details/10428625)
[![NIH-NIMH-R01MH126699](https://img.shields.io/badge/NIH_NIMH-R01MH126699-green.svg)](https://reporter.nih.gov/project-details/10460628)
[![NIH-NIDCD-R01DC020088](https://img.shields.io/badge/NIH_NIDCD-R01DC020088-green.svg)](https://reporter.nih.gov/project-details/11140284)
[![NSF-BCS-1734853](https://img.shields.io/badge/NSF_BCS-1734853-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1734853)
[![NSF-BCS-2203524](https://img.shields.io/badge/NSF_BCS-2203524-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2203524)
[![NSF-IIS-1636893](https://img.shields.io/badge/NSF_IIS-1636893-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1636893)
[![NSF-OAC-2148729](https://img.shields.io/badge/NSF_OAC-2148729-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2148729)
[![NSF-IIS-1912270](https://img.shields.io/badge/NSF_IIS-1912270-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1912270)
[![NSF-IIS-2148700](https://img.shields.io/badge/NSF_IIS-2148700-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2148700)
[![NSF-OAC-1916518](https://img.shields.io/badge/NSF_OAC-1916518-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1916518)

<sub>brainlife.io is publicly funded, and acknowledging that support helps keep it running. This App was developed with support from Wellcome, the U.S. National Institutes of Health (including the BRAIN Initiative BRAIN CONNECTS program: The Axonal Projectome EXchange, U24NS140384, and the Center for Mesoscale Connectomics, UM1NS132207) and the U.S. National Science Foundation.</sub>

## License

[MIT](https://github.com/brainlife/app-slicer-fsl/blob/master-app-v1.0.0/LICENSE) (the licence file is on the App branches). FSL is distributed under its own [license](https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/Licence).

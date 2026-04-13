# Geant4 VTK Black Primary Edges Patch

Clean, shareable patch set for applying the VTK black-primary-edges fixes to a
virgin Geant4 11.4.1 source tree.

## Scope

This patch updates the Geant4 VTK visualization code to fix two issues:

1. Incorrect rigid transforms in `polyhedronPipeline separate` for offset
   polyhedra, especially noticeable with imported GDML boolean solids.
2. Incorrect black edge rendering in `polyhedronPipeline tensor` when
   `/vis/viewer/set/edge true` is enabled.

## Contents

- `patches/geant4-11.4.1-vtk-black-primary-edges.patch`
- `scripts/check-apply.sh`

## Tested Base

The patch was generated directly against a clean Geant4 source tree at:

`/opt/geant4/geant4-v11.4.1`

It should also apply to any equivalent unmodified Geant4 11.4.1 source tree.

## Apply

Using `git apply`:

```bash
cd /path/to/geant4-v11.4.1
git apply /path/to/geant4-vtk-black-primary-edges-patch/patches/geant4-11.4.1-vtk-black-primary-edges.patch
```

Using `patch`:

```bash
cd /path/to/geant4-v11.4.1
patch -p1 < /path/to/geant4-vtk-black-primary-edges-patch/patches/geant4-11.4.1-vtk-black-primary-edges.patch
```

## Validate Before Applying

```bash
/path/to/geant4-vtk-black-primary-edges-patch/scripts/check-apply.sh /path/to/geant4-v11.4.1
```

## Notes

- The repository does not include Geant4 source code, only the patch and helper
  material needed to apply it.
- The patch file was validated with `git apply --check` against a clean
  Geant4 11.4.1 VTK source tree.

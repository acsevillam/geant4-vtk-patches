# Geant4 VTK Black Primary Edges Patch

Clean patch set for Geant4 11.4.1, generated directly from the official
Geant4 source tree.

## Scope

This patch set adds black primary-edge rendering to the Geant4 VTK
visualization backend.

It includes the supporting VTK changes required for the new edge-rendering path
to behave correctly, including proper handling of offset polyhedra in
`polyhedronPipeline separate`, especially for imported GDML boolean solids.

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

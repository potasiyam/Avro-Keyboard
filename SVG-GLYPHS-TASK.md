# SVG-with-Paths Mouse Glyphs

**Branch:** `mouse-glyph-svg-with-paths`

## Goal
Replace the GDI+/PNG glyph pipeline on the Avro Mouse board with a **vector SVG-with-paths** pipeline:
- One-time bake of the Kalpurush glyph text into font-independent `.svg` files containing real `<path>` data.
- Runtime loader that renders those SVGs crisp at the button's per-DPI pixel size via Delphi 12's bundled Skia, recoloring to the active theme (ink over face).
- Remove the runtime PNG generator so assets stop being regenerated/churned in the repo.

The SVG + paths approach means one asset set covers all DPIs (no 1x/2x/3x variants) and stays editable in Inkscape/Figma.

## What Has Been Done

### Code (`Keyboard and Spell checker/Forms/ufrmAvroMouse.pas`)
- Replaced the entire GDI+ (Winapi.GDIPAPI/GDIPOBJ) + PNG + `Vcl.Imaging.pngimage` pipeline with Skia.
- Interface uses now adds `System.Skia`; implementation uses adds `System.Types`, `System.RegularExpressions`, `System.IOUtils`.
- **`BakeSvgGlyph`** — loads Kalpurush via `TSkTypeface.MakeFromFile`, shapes Bengali text (conjuncts, hasanta, matra) with `TSkParagraphBuilder`, finds the largest font size that fits the button box, draws into `TSkSVGCanvas.Make(..., [ConvertTextToPaths, NoPrettyXML, RelativePathEncoding])`, then **post-processes the emitted XML to round path coordinates to 2 decimal places** (Skia emits full float32 precision ~17 chars/number, which bloated files from ~342 KB down to roughly 1/3). Writes `assets\mouse-glyphs\<BtnName>.svg`.
- **`AssignSvgGlyph`** — loads `*.svg` via `TSkSVGDOM.MakeFromFile`, renders to `TSkSurface.MakeRaster` at the button's current pixel size (DPI-crisp), reads the BGRA premul alpha, recolors to theme ink/face, assigns to `Glyph` with fuchsia transparency.
- **`RenderGlyph`** — loads `.svg` from the exe-adjacent `mouse-glyphs\` folder first; falls back to bake + load from `assets\mouse-glyphs\`.
- **`BanglaFontFile`** helper locates `kalpurush.ttf`; **fixed candidate 2** from `..\..\assets\fonts\` (wrong — resolved to `I:\projects\assets`) to `..\assets\fonts\` which resolves correctly from the `build\` exe dir.
- Removed all GDI+/PNG identifiers: `CreateGpFont`, `GenerateGlyph`, `AssignPngGlyph`, `TGPFont`, `TGpBmp`, `TGpGfx`, `TPngImage`, `BakeScale`, base/matra manual positioning math.

### Project / Build
- `Keyboard and Spell checker/`dproj: added `Skia.Package.RTL` to `DCC_UsePackage`.
- `build-ce.bat`: copies `*.svg` (was `*.png`, plus copies sk4d.dll from the BDS bin64 dir.

### Assets
- Deleted all stale PNGs (main + old/ subfolder) from `assets\mouse-glyphs\`.
- Deleted regenerated SVGs during iteration; SVGs are regenerated on next app run (with rounding once code is recompiled).

## What Needs To Be Done / Verified

- [ ] **Recompile in Delphi 12 (Win64)** and confirm the project builds with the Skia package dependency.
- [ ] **Run once** so `BakeSvgGlyph` regenerates the 105 `.svg` files with coordinate rounding; verify total size is meaningfully below the prior ~342 KB (expect roughly 100–150 KB).
- [ ] **Spot-check SVGs** are valid (`<path d=...>`, no font dependency) and load in Inkscape/Figma.
- [ ] **Visual check**: glyphs render correctly in the Avro Mouse board, in both Light and Dark theme skins, at 100% and 200% DPI (PerMonitorV2)).
- [ ] Verify a couple of complex conjuncts (e.g. ক্ষ, জ্ঞ, ষ্ণ) look correct — confirms shaping works through the Skia paragraph.
- [ ] Confirm the runtime no longer writes PNGs and that `mouse-glyphs\` only holds `.svg`.
- [ ] Stage and commit the branch (dproj, pas, build-).bat, .gitignore, task md).
- [ ] Optional: measure the Skia native dependency (sk4d.dll, Skia.Package.RTL290.bpl) in the release/zip/docs and document the added runtime dependency for end users.
- [ ] Optional: consider a single combined SVG with `<defs>/<symbol>` vs per-glyph files if size still matters.
- [ ] Optional: pre-bake the SVGs into the data dir without running the app if a release-time tool is preferred over first-launch generation.
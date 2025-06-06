# LandRise Logo Assets

This folder contains all LandRise logo assets organized with a consistent naming convention.

## Naming Convention

All logos follow this pattern: `landrise-logo-{variant}-{background}.{extension}`

### Variants
- `main` - Primary logo (current version)
- `color` - Full color version
- `monochrome` - Black and white/grayscale version
- `black` - Pure black version
- `white` - Pure white version
- `dark-theme` - Optimized for dark backgrounds
- `light-theme` - Optimized for light backgrounds
- `original` - Original design files (in /original folder)

### Backgrounds
- `transparent` - Transparent background
- `white` - White background
- No suffix - Original background from design

### File Structure

```
logos/
├── svg/                           # Scalable vector graphics
│   ├── landrise-logo-main.svg
│   ├── landrise-logo-main-current.svg
│   ├── landrise-logo-monochrome-transparent.svg
│   └── landrise-logo-monochrome-transparent.min.svg
├── png/                           # Portable network graphics
│   ├── landrise-logo-main-current.png
│   ├── landrise-logo-color-transparent.png
│   ├── landrise-logo-color-white.png
│   ├── landrise-logo-black-transparent.png
│   ├── landrise-logo-white-transparent.png
│   ├── landrise-logo-monochrome-transparent.png
│   ├── landrise-logo-dark-theme.png
│   └── landrise-logo-light-theme.png
├── webp/                          # WebP format (optimized for web)
│   ├── landrise-logo-main-current.webp
│   ├── landrise-logo-color-transparent.webp
│   ├── landrise-logo-black-transparent.webp
│   ├── landrise-logo-white-transparent.webp
│   ├── landrise-logo-dark-theme.webp
│   └── landrise-logo-light-theme.webp
├── original/                      # Original design files
│   ├── landrise-logo-original-v1.svg
│   ├── landrise-logo-original-color.svg
│   ├── landrise-logo-original-monochrome-transparent.png
│   ├── landrise-logo-original-monochrome-white.png
│   ├── landrise-logo-original-color-transparent.png
│   └── landrise-logo-original-color-white.png
├── README.md                      # This documentation file
└── QUICK-REFERENCE.md             # Developer quick reference guide
```

## Usage Guidelines

### For Web Development
- Use **WebP** format when possible for better compression
- Use **SVG** for scalable graphics that need to resize
- Use **PNG** for compatibility with older browsers

### For Print/High Quality
- Use **SVG** files for scalable print materials
- Use **PNG** files from the original folder for highest quality

### Theme Considerations
- Use `dark-theme` variants on dark backgrounds
- Use `light-theme` variants on light backgrounds
- Use `white-transparent` on dark backgrounds
- Use `black-transparent` on light backgrounds

### File Size Considerations
- `.min.svg` files are minified for web use
- WebP files are typically 25-35% smaller than PNG
- SVG files are best for logos that need to scale

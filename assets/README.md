# LandRise Assets

This folder contains all visual assets and resources for the LandRise brand and applications.

## 📁 Folder Structure

```
assets/
├── logos/                         # Brand logos in various formats
│   ├── svg/                       # Scalable vector graphics
│   ├── png/                       # Portable network graphics
│   ├── webp/                      # WebP format (web optimized)
│   ├── original/                  # Original design files
│   ├── README.md                  # Logo usage documentation
│   └── QUICK-REFERENCE.md         # Developer quick reference
├── favicons/                      # Favicon and app icons
│   ├── favicon.ico               # Traditional favicon
│   ├── favicon.svg               # Modern SVG favicon
│   ├── favicon-96x96.png         # High-res favicon
│   ├── apple-touch-icon.png      # iOS app icon
│   ├── web-app-manifest-192x192.png  # PWA icon 192x192
│   ├── web-app-manifest-512x512.png  # PWA icon 512x512
│   └── site.webmanifest          # Web app manifest
├── logo.png                      # Quick access main logo (PNG)
├── logo.svg                      # Quick access main logo (SVG)
├── logo.webp                     # Quick access main logo (WebP)
└── README.md                     # This file
```

## 🎨 Asset Categories

### Brand Logos (`/logos/`)
Complete collection of LandRise brand logos in multiple formats and variants:
- **Main logos** for general use
- **Theme variants** for dark/light backgrounds
- **Color variations** (full color, monochrome, black, white)
- **Format options** (SVG, PNG, WebP)

👉 **[View Logo Documentation](logos/README.md)** for detailed usage guidelines
👉 **[View Quick Reference](logos/QUICK-REFERENCE.md)** for developer examples

### Favicons & App Icons (`/favicons/`)
Website and application icons for various platforms:
- **Web browsers** (favicon.ico, favicon.svg)
- **High-resolution displays** (favicon-96x96.png)
- **iOS devices** (apple-touch-icon.png)
- **Progressive Web Apps** (web-app-manifest files)
- **Web app manifest** (site.webmanifest)

### Quick Access Logos (Root Level)
Main logo files for immediate use:
- `logo.svg` - Scalable vector format (recommended)
- `logo.png` - Raster format for compatibility
- `logo.webp` - Web-optimized format for performance

## 🚀 Quick Start

### For Web Development
```html
<!-- Use SVG for best scalability -->
<img src="assets/logo.svg" alt="LandRise Logo" />

<!-- Or use format-specific logos -->
<img src="assets/logos/svg/landrise-logo-main.svg" alt="LandRise Logo" />
```

### For Favicon Implementation
```html
<!-- Add to <head> section -->
<link rel="icon" href="assets/favicons/favicon.ico" sizes="any">
<link rel="icon" href="assets/favicons/favicon.svg" type="image/svg+xml">
<link rel="apple-touch-icon" href="assets/favicons/apple-touch-icon.png">
<link rel="manifest" href="assets/favicons/site.webmanifest">
```

### For React/Next.js
```jsx
import Logo from 'assets/logo.svg';
// or
import Logo from 'assets/logos/svg/landrise-logo-main.svg';

function Header() {
  return <img src={Logo} alt="LandRise Logo" className="logo" />;
}
```

## 📐 Design Guidelines

### Logo Usage
- **Minimum size:** 24px height for digital use
- **Clear space:** Maintain padding equal to the logo height around all sides
- **Backgrounds:** Use appropriate variants for dark/light themes
- **Aspect ratio:** Always maintain original proportions

### File Format Selection
- **SVG:** Best for scalable graphics, icons, and logos
- **PNG:** Use when SVG isn't supported or for complex images
- **WebP:** Best for web performance (25-35% smaller than PNG)
- **ICO:** Required for traditional favicon support

## 🔧 Developer Notes

### Performance Tips
1. **Use WebP** when possible for smaller file sizes
2. **Use SVG** for graphics that need to scale
3. **Implement lazy loading** for non-critical images
4. **Optimize PNG files** with tools like TinyPNG when needed

### Accessibility
- Always include meaningful `alt` attributes
- Ensure sufficient contrast when overlaying logos on backgrounds
- Use appropriate ARIA labels for decorative vs. informative images

## 📚 Additional Resources

- **[Logo Documentation](logos/README.md)** - Comprehensive logo usage guide
- **[Developer Quick Reference](logos/QUICK-REFERENCE.md)** - Code examples and best practices
- **[Validation Script](logos/validate-docs.ps1)** - Verify file integrity

## 🔄 Maintenance

### Adding New Assets
1. Follow the established naming convention
2. Update this README with new file descriptions
3. Run validation scripts to ensure documentation accuracy
4. Update relevant documentation in specific asset folders

### File Naming Convention
- Use lowercase letters and hyphens
- Include descriptive suffixes (e.g., `-transparent`, `-white`)
- Follow pattern: `landrise-{type}-{variant}-{background}.{ext}`

---

**Last updated:** June 5, 2025
**Maintained by:** LandRise Development Team

# LandRise Logo Quick Reference

## Most Common Use Cases

### HTML/Web Development
```html
<!-- Main logo for websites -->
<img src="assets/logos/svg/landrise-logo-main.svg" alt="LandRise Logo" />

<!-- For dark themes/backgrounds -->
<img src="assets/logos/svg/landrise-logo-white-transparent.svg" alt="LandRise Logo" />

<!-- For light themes/backgrounds -->
<img src="assets/logos/svg/landrise-logo-black-transparent.svg" alt="LandRise Logo" />

<!-- WebP for better performance -->
<picture>
  <source srcset="assets/logos/webp/landrise-logo-color-transparent.webp" type="image/webp">
  <img src="assets/logos/png/landrise-logo-color-transparent.png" alt="LandRise Logo">
</picture>
```

### CSS Background Images
```css
/* Main logo */
.logo {
  background-image: url('assets/logos/svg/landrise-logo-main.svg');
}

/* Dark theme */
.logo-dark {
  background-image: url('assets/logos/svg/landrise-logo-white-transparent.svg');
}

/* Light theme */
.logo-light {
  background-image: url('assets/logos/svg/landrise-logo-black-transparent.svg');
}
```

### React/JSX
```jsx
import logoSvg from 'assets/logos/svg/landrise-logo-main.svg';
import logoPng from 'assets/logos/png/landrise-logo-color-transparent.png';

// Using SVG
<img src={logoSvg} alt="LandRise Logo" className="logo" />

// Using PNG fallback
<img src={logoPng} alt="LandRise Logo" className="logo" />
```

### Email/Print Materials
- Use PNG files from `/png/` folder for email templates
- Use SVG files from `/original/` folder for high-quality print materials
- Use PNG files from `/original/` folder for print when SVG isn't supported

## File Selection Guide

| Use Case | Recommended File |
|----------|------------------|
| Website header | `svg/landrise-logo-main.svg` |
| Dark website header | `svg/landrise-logo-white-transparent.svg` |
| Social media profile | `png/landrise-logo-color-white.png` |
| Email signature | `png/landrise-logo-color-transparent.png` |
| Business cards | `original/landrise-logo-original-color.svg` |
| Merchandise | `original/landrise-logo-original-color.svg` |
| App icon base | `png/landrise-logo-color-white.png` |
| Favicon source | `svg/landrise-logo-main.svg` |
| Documentation | `svg/landrise-logo-monochrome-transparent.svg` |

## Size Recommendations

### Web Usage
- **Header logos**: 150-200px wide
- **Footer logos**: 80-120px wide
- **Favicon**: 32x32, 16x16 (generated from SVG)

### Print Usage
- **Business cards**: 300 DPI minimum
- **Letterhead**: 150-200px wide at 300 DPI
- **Large format**: Use SVG for infinite scalability

## Performance Tips

1. **Use WebP when possible** - 25-35% smaller file sizes
2. **Use SVG for scalable graphics** - Perfect at any size
3. **Use minified SVG for web** - Files ending in `.min.svg`
4. **Implement lazy loading** for images below the fold
5. **Use CSS sprites** for multiple small logo instances

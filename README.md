# 📈 Premium Interest Calculator

A state-of-the-art, visually stunning, and highly interactive **Interest Calculator** web application. Built using modern frontend technologies, this calculator features premium glassmorphic aesthetics, smooth micro-animations, real-time calculation updates, and interactive visualizations to help users project their wealth and understand compound vs. simple interest.

---

## ✨ Features

- **Double Calculation Engine**: Seamlessly toggle between **Compound Interest** (daily, monthly, quarterly, semi-annually, annually) and **Simple Interest**.
- **Interactive Visualizations**: High-fidelity interactive charts showing total principal vs. interest growth over time.
- **Regular Contributions**: Model future growth with optional monthly or annual deposits.
- **Amortization & Schedule Table**: Expandable, paginated schedules detailing yearly/monthly balances, interest accrued, and total deposits.
- **Premium Glassmorphic Design**: Sleek HSL-based color palettes, backdrop filters, smooth hover animations, and an organic responsive layout.
- **Dark Mode Integration**: Fluid transition between light and dark modes with a single click.
- **Inflation Adjustment Simulation**: See the real purchasing power of future returns.
- **Full Accessibility (A11y)**: Semantic HTML structure, high-contrast text, clear focus rings, and full keyboard navigation.

---

## 🛠️ Technology Stack

- **Core Structure**: HTML5 (Semantic and fully accessible tags)
- **Styling**: Vanilla CSS3 (Custom properties, grid/flexbox, backdrop-filter, transitions, container queries)
- **Application Logic**: Vanilla ES6+ JavaScript (Math engines, reactive UI state management)
- **Data Visualizations**: Responsive inline SVGs / Canvas (Chart.js via lightweight script)

---

## 🚀 Getting Started

### Prerequisites

You only need a modern web browser (Chrome, Safari, Firefox, Edge).

### Installation & Running Locally

1. Clone or download this repository:
   ```bash
   git clone https://github.com/your-username/interest-calculator.git
   cd interest-calculator
   ```

2. Run the application locally using any basic HTTP server:
   - **Using VS Code**: Install the **Live Server** extension and click **"Go Live"**.
   - **Using Python**:
     ```bash
     python3 -m http.server 8000
     ```
     Then open [http://localhost:8000](http://localhost:8000) in your browser.
   - **Using Node.js/npm**:
     ```bash
     npx http-server .
     ```

---

## 🎨 Design Systems & UI Tokens

The application employs a curated HSL color palette to support both crisp light themes and immersive dark themes. 

### Color Palette Tokens (Dark Theme Example)
- **Primary Accent**: `hsl(250, 85%, 65%)` (Vibrant Indigo)
- **Secondary Accent**: `hsl(180, 80%, 45%)` (Teal Glow)
- **Background Base**: `hsl(220, 25%, 10%)`
- **Surface (Glass)**: `hsla(220, 25%, 15%, 0.6)` with `backdrop-filter: blur(12px)`
- **Text Primary**: `hsl(210, 40%, 98%)`

---

## 📈 Formula Reference

### Simple Interest
$$A = P(1 + rt)$$

### Compound Interest (with Contributions)
$$A = P \left(1 + \frac{r}{n}\right)^{nt} + PMT \times \frac{\left(1 + \frac{r}{n}\right)^{nt} - 1}{\frac{r}{n}}$$

*Where:*
- $A$ = Future Value
- $P$ = Principal (Initial deposit)
- $r$ = Annual Interest Rate (decimal)
- $n$ = Number of times interest compounded per year
- $t$ = Number of years
- $PMT$ = Regular contribution amount (assumed at the end of each compound period)

---

## ♿ Accessibility & SEO

- **Unique Element IDs**: All input fields, buttons, and display cards utilize descriptive, unique IDs.
- **ARIA Standards**: Forms use `aria-describedby` and labels are explicitly linked to input IDs.
- **Speed & Performance**: No heavy framework overhead means near-instantaneous First Contentful Paint (FCP) and Largest Contentful Paint (LCP).

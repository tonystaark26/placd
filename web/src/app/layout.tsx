import type { Metadata, Viewport } from "next";
import { DM_Serif_Display, Libre_Baskerville, Sora } from "next/font/google";
import "./globals.css";

// Sora: the everyday interface and reading text
const sora = Sora({
  variable: "--font-sora",
  subsets: ["latin"],
});

// DM Serif Display: page headlines and editorial moments (it has one weight)
const dmSerif = DM_Serif_Display({
  variable: "--font-dm-serif",
  weight: "400",
  subsets: ["latin"],
});

// Only for the PLACED wordmark on the welcome page: Bookman where installed (Windows),
// Libre Baskerville (a free, similar serif) on phones
const baskerville = Libre_Baskerville({
  variable: "--font-baskerville",
  weight: "700",
  subsets: ["latin"],
});

export const metadata: Metadata = {
  title: "PLACED: crack your placement interview",
  description:
    "Ten minutes a day: business news explained simply, the MBA concept behind it, and a quick quiz.",
};

export const viewport: Viewport = {
  themeColor: "#e9e6e1",
};

export default function RootLayout({ children }: LayoutProps<"/">) {
  return (
    <html
      lang="en"
      className={`${sora.variable} ${dmSerif.variable} ${baskerville.variable} h-full antialiased`}
    >
      <body className="min-h-full flex flex-col">{children}</body>
    </html>
  );
}

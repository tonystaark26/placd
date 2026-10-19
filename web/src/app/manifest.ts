import type { MetadataRoute } from "next";

// Lets students install ChaiCase on their phone's home screen: it then opens full-screen
// like an app, with the cup-on-books icon. Icons are made from app/icon.svg.
export default function manifest(): MetadataRoute.Manifest {
  return {
    name: "ChaiCase",
    short_name: "ChaiCase",
    description: "Ten minutes a day: business news explained simply, the MBA concept behind it, and a quick quiz.",
    start_url: "/desk",
    scope: "/",
    display: "standalone",
    orientation: "portrait",
    background_color: "#e9e6e1",
    theme_color: "#e9e6e1",
    categories: ["education", "news", "business"],
    icons: [
      { src: "/icons/icon-192.png", sizes: "192x192", type: "image/png", purpose: "any" },
      { src: "/icons/icon-512.png", sizes: "512x512", type: "image/png", purpose: "any" },
      { src: "/icons/icon-maskable-512.png", sizes: "512x512", type: "image/png", purpose: "maskable" },
    ],
  };
}

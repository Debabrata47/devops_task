import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  output: "standalone", // Enable standalone mode for better AWS Amplify support
  images: {
    remotePatterns: [
      {
        protocol: "https",
        hostname: "lh3.googleusercontent.com",
        port: "",
        pathname: "/a/**",
        search: "",
      },
    ],
  },
};

export default nextConfig;

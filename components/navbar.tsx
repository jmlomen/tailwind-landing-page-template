"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

export default function Navbar() {
  const pathname = usePathname();

  const linkClass = (path: string) =>
    `transition hover:text-brand ${
      pathname === path ? "text-brand font-semibold" : "text-gray-700"
    }`;

  return (
    <nav className="flex items-center justify-between px-8 py-4 bg-white shadow-sm">
      <Link href="/" className="text-2xl font-bold tracking-tight">
        MyBrand
      </Link>

      <div className="flex gap-6 text-lg">
        <Link href="/" className={linkClass("/")}>
          Home
        </Link>
        <Link href="/about" className={linkClass("/about")}>
          About
        </Link>
        <Link href="/contact" className={linkClass("/contact")}>
          Contact
        </Link>
      </div>
    </nav>
  );
}

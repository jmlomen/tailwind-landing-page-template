export default function HeroMain() {
  return (
    <section className="px-8 py-32 bg-gradient-to-b from-blue-50 to-white text-center">
      <h1 className="text-5xl font-extrabold tracking-tight">
        Build Beautiful Interfaces with Tailwind
      </h1>

      <p className="mt-6 text-xl text-gray-600 max-w-2xl mx-auto">
        A utility-first CSS framework that gives you complete control over your design system.
      </p>

      <button className="mt-10 px-8 py-3 bg-brand text-white rounded-soft text-lg font-medium hover:bg-brand-dark transition">
        Get Started
      </button>
    </section>
  );
}
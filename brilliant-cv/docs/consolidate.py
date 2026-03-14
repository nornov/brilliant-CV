import os
import re

def analyze_extractions(extractions_dir):
    results = {
        "de": set(), 
        "en": set()
    }
    
    if not os.path.exists(extractions_dir):
        print(f"Directory not found: {extractions_dir}")
        return results

    for filename in os.listdir(extractions_dir):
        # Heuristic for language
        content_low = filename.lower()
        if "english" in content_low or "deng" in content_low or "en.txt" in content_low or "lindcapital" in content_low or "swisslife" in content_low:
            lang = "en"
        else:
            lang = "de"
            
        with open(os.path.join(extractions_dir, filename), "r", encoding="utf-8") as f:
            content = f.read()
            
        # Extract bullet points
        # Look for lines starting with •, -, *, or other bullet symbols
        bullets = re.findall(r'^[ \t]*[•\-\*][ \t]*(.*)', content, re.MULTILINE)
        for bullet in bullets:
            bullet = bullet.strip()
            if bullet:
                # Basic cleaning: remove trailing punctuation if inconsistent, etc.
                results[lang].add(bullet)

    return results

if __name__ == "__main__":
    extractions_dir = r"c:\local\repos\brilliant-CV-1\brilliant-cv\docs\extractions"
    out_path = r"c:\local\repos\brilliant-CV-1\brilliant-cv\docs\consolidated_bullets.txt"
    
    print(f"Analyzing extractions in {extractions_dir}...")
    results = analyze_extractions(extractions_dir)
    
    print(f"Found {len(results['en'])} English bullets and {len(results['de'])} German bullets.")
    
    with open(out_path, "w", encoding="utf-8") as f:
        for lang in ["en", "de"]:
            f.write(f"--- {lang.upper()} BULLETS ---\n")
            # Sort to make it easier to read/compare
            for bullet in sorted(list(results[lang])):
                f.write(f"- {bullet}\n")
            f.write("\n")
    print(f"Results saved to {out_path}")

import os
import re

def get_lang(text):
    de_words = {"und", "der", "die", "das", "für", "von", "mit", "zu", "in", "auf"}
    en_words = {"and", "the", "to", "of", "in", "for", "with", "on", "as", "at"}
    
    words = set(re.findall(r'\w+', text.lower()))
    de_score = len(words.intersection(de_words))
    en_score = len(words.intersection(en_words))
    
    if de_score > en_score:
        return "de"
    elif en_score > de_score:
        return "en"
    return None

def analyze_extractions(extractions_dir):
    # position -> lang -> set of bullet points
    experience = {}
    
    if not os.path.exists(extractions_dir):
        return experience

    for filename in os.listdir(extractions_dir):
        with open(os.path.join(extractions_dir, filename), "r", encoding="utf-8") as f:
            content = f.read()
            
        # Split content into sections based on dates or headers
        # Positions typically start with dates like 02/2023 or 09/2019
        sections = re.split(r'(\d{2}/\d{4}\s*–?\s*(?:heute|today|present|\d{2}/\d{4}))', content)
        
        current_pos = "Unknown"
        for i in range(1, len(sections), 2):
            date_range = sections[i].strip()
            details = sections[i+1].strip() if i+1 < len(sections) else ""
            
            # Extract position/company from the start of details
            lines = details.split('\n')
            if lines:
                pos_info = lines[0].strip()
                if len(lines) > 1 and not lines[1].startswith(('•', '-', '*')):
                    pos_info += " " + lines[1].strip()
                
                # Normalize position name
                pos_norm = pos_info.lower()
                if "analytics engineer" in pos_norm or "data scientist" in pos_norm:
                    current_pos = "Data Analytics Engineer / Data Scientist"
                elif "modeling & simulation" in pos_norm:
                    current_pos = "Data Modeling & Simulation Engineer"
                elif "resident" in pos_norm:
                    current_pos = "Resident Engineer"
                else:
                    current_pos = pos_info if pos_info else "Other"
            
            if current_pos not in experience:
                experience[current_pos] = {"de": set(), "en": set()}
            
            bullets = re.findall(r'^[ \t]*[•\-\*][ \t]*(.*)', details, re.MULTILINE)
            for bullet in bullets:
                bullet = bullet.strip()
                if bullet:
                    lang = get_lang(bullet)
                    if lang:
                        experience[current_pos][lang].add(bullet)
                    else:
                        # Fallback: check the whole details block or filename
                        details_lang = get_lang(details)
                        if details_lang:
                            experience[current_pos][details_lang].add(bullet)

    return experience

if __name__ == "__main__":
    extractions_dir = r"c:\local\repos\brilliant-CV-1\brilliant-cv\docs\extractions"
    out_path = r"c:\local\repos\brilliant-CV-1\brilliant-cv\docs\refined_experience.txt"
    
    experience = analyze_extractions(extractions_dir)
    
    with open(out_path, "w", encoding="utf-8") as f:
        for pos, langs in experience.items():
            f.write(f"=== POSITION: {pos} ===\n")
            for lang in ["en", "de"]:
                f.write(f"  [{lang.upper()}]\n")
                for bullet in sorted(list(langs[lang])):
                    f.write(f"  - {bullet}\n")
            f.write("\n")
    print(f"Refined experience saved to {out_path}")

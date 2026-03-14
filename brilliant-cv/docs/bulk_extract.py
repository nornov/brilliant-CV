import os
import fitz  # PyMuPDF

def extract_all(pdf_dir, out_dir):
    if not os.path.exists(out_dir):
        os.makedirs(out_dir)
        
    for filename in os.listdir(pdf_dir):
        if filename.endswith(".pdf"):
            pdf_path = os.path.join(pdf_dir, filename)
            out_path = os.path.join(out_dir, filename.replace(".pdf", ".txt"))
            print(f"Extracting {filename}...")
            try:
                doc = fitz.open(pdf_path)
                text = ""
                for page in doc:
                    text += page.get_text()
                with open(out_path, "w", encoding="utf-8") as f:
                    f.write(text)
            except Exception as e:
                print(f"Error extracting {filename}: {e}")

if __name__ == "__main__":
    pdf_dir = r"c:\local\repos\brilliant-CV-1\brilliant-cv\docs"
    out_dir = r"c:\local\repos\brilliant-CV-1\brilliant-cv\docs\extractions"
    extract_all(pdf_dir, out_dir)

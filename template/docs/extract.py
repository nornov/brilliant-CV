import sys
import fitz  # PyMuPDF

def extract_text(pdf_path, out_path):
    doc = fitz.open(pdf_path)
    text = ""
    for page in doc:
        text += page.get_text()
    
    with open(out_path, "w", encoding="utf-8") as f:
        f.write(text)

if __name__ == "__main__":
    extract_text("c:/local/repos/brilliant-CV-1/docs/[CV]CV_Ornov_2602_English_LindCapital.pdf", "c:/local/repos/brilliant-CV-1/docs/cv_en.txt")
    extract_text("c:/local/repos/brilliant-CV-1/docs/[CV]Lebenslauf_Ornov_2602_DEng_SIX.pdf", "c:/local/repos/brilliant-CV-1/docs/cv_de.txt")
    print("Extraction complete")

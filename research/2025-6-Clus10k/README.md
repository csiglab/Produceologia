# Semantic Clustering of Corporate Business Profiles Extracted from Form 10-K Reports

> **Goal**: Cluster firms by industry using SEC data.

> **Why?**: To help analyze companies by comparing them to their peers.

## Methods

### Step 1: **Data Collection**

* **Download 10-K Filings**: Obtain the latest 10-K filings from the SEC’s [EDGAR database](https://www.sec.gov/edgar/searchedgar/companysearch).
* **Extract Item 1 – Business Section**: This section describes the company’s core activities, products, markets, and strategy. Use tools like Python’s `sec-edgar-downloader` or custom scrapers to extract text.

### Step 2: **Preprocessing Text**

* **Clean Text**: Remove HTML tags, punctuation, special characters, and normalize whitespace.
* **Lowercase**: Convert all text to lowercase.
* **Stopwords Removal**: Remove common English stopwords (e.g., “the”, “and”, “of”).
* **Tokenization**: Split text into words or meaningful n-grams.
* **Stemming/Lemmatization**: Reduce words to their root forms (optional).

### Step 3: **Feature Extraction**

* **TF-IDF Vectorization**: Convert text into numerical vectors capturing term frequency and inverse document frequency — emphasizes important words.
* **Word Embeddings**: Use pretrained models (e.g., Word2Vec, GloVe, or transformers like BERT) to create dense vector representations that capture semantic meaning.
* **Domain Keywords**: Optionally, use domain-specific dictionaries or extract key phrases (e.g., “software”, “cloud services”, “pharmaceuticals”).

### Step 4: **Dimensionality Reduction**

* **Techniques**: Use PCA, t-SNE, or UMAP to reduce vector dimensions while preserving meaningful structure.
* Helps to visualize and improves clustering performance.

### Step 5: **Clustering**

* **Choose a clustering algorithm** based on your data and goals:

  * **K-Means**: Good for well-separated spherical clusters.
  * **Hierarchical Clustering**: Builds dendrograms; good for nested clusters.
  * **DBSCAN**: Density-based; identifies noise and clusters of arbitrary shape.
  * **Gaussian Mixture Models (GMM)**: For probabilistic clustering.
* Select the number of clusters (`k`) based on:

  * Domain knowledge
  * Elbow method or silhouette scores for internal validation

## **Evaluation & Interpretation**

* **Validate Clusters**:

  * Compare with known industry codes (NAICS, GICS) if available.
  * Check cluster cohesion (within-cluster similarity) and separation (between-cluster differences).
* **Label Clusters**:

  * Identify top keywords or representative companies per cluster.
  * Assign industry/sector labels where possible.

## Tools & Libraries

* **Python**: `requests`, `beautifulsoup4` (web scraping); `nltk`, `spacy` (NLP); `scikit-learn` (vectorization, clustering); `transformers` (BERT embeddings)

* **Visualization**: `matplotlib`, `seaborn`, `plotly`

* Embedding: https://sbert.net/

## Case Study

Industry:

* Project Management & Collaboration Software.

Firms:

* monday.com
* Asana Inc
* Airtable
* ClickUp
* Smartsheet Inc
* Notion Labs Inc

## Data Sources

- [SEC's Electronic Data Gathering, Analysis, and Retrieval (EDGAR) System](https://www.sec.gov/search-filings)

## References

- [finBERT](https://github.com/ProsusAI/finBERT)
## Vector DB Use Case

A traditional keyword-based search is not enough for a law firm working with large 500-page contracts.

Keyword search only matches exact or similar words, so it depends a lot on how the text is written. For example, if a lawyer asks, “What are the termination clauses?”, the system might miss important parts if the document uses different wording like “agreement cancellation conditions” instead of the word “termination.”

Also, legal documents often use complex language, and the same idea can be expressed in many different ways. Keyword search cannot understand the actual meaning of the query, so it may give incomplete or irrelevant results.

To solve this problem, a vector database can be used. It works by converting both the contract text and the user’s query into embeddings (numerical representations). These embeddings capture the meaning of the text, not just the words.

When a lawyer asks a question, the system converts it into an embedding and searches for the most similar meanings in the document, even if the exact words are different.

In this system, the contract is broken into smaller parts, converted into embeddings, and stored in the vector database. During a search, the system finds the most relevant sections based on similarity.

This makes the search more accurate and useful. So, a vector database helps in understanding meaning and provides better results, which is very important for legal documents.

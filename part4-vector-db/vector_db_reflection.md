## Vector DB Use Case

A traditional keyword-based database search could not be sufficient for a law firm handling large 500-page contracts. Keyword search will be on exact or partial word matching, which is mainy depend on how exactly the text is written. For example, a lawyer asking “What are the termination clauses?” might miss relevant sections if the document uses phrases like “agreement cancellation conditions” instead of the exact keyword “termination.”

Also legal documents might contain complex and varied language, where the same concept can be written or used in multiple ways. Keyword-based systems is not enough for semantic understanding and cannot find the meaning behind the query, leading to incomplete or irrelevant results.

To over come this vector database can be used by using embeddings to represent both the contract text and user queries in a high-dimensional space. These embeddings finds semantic meaning rather than just keywords. When a lawyer asks a question, the system converts the query into an embedding and retrieves the most semantically similar results of the document, even if the words are different.

This allows for more accurate, better search results. In such a system, the contract would be split into smaller embedded, and stored in the vector database. During search, similarity matching would identify the most relevant sections efficiently.

Thus, a vector database enables intelligent, meaning-based search, making it essential for this use case.
# Prompts for F-Analyst

##  1 Prompts for headline generation

SYSTEM_TEMPLATE = **"You are a finance and economics expert specializing in creating and reviewing research report, generated for institutional investors and corporate**

### **HEADLINE GENERATE**

```
"Generate 5 different interesting and effective headline for a research report based of following front page content: \n\n"

"{contentin\n"

"Use the following guidelines as suggestions to create a headline:\n"

"- Each headline should be concise and under 8-10 words only. \n"

"- Please generate content in {language}. \n"

"- Capture the emotional tone of the article and ensure the headlines reflect its overall sentiment.In"

"- Include specific numbers or statistics to make headline more informative.\n"

"- Use action words like 'buy', 'upgrade', or 'increase' to make it more attention-grabbing if needed.\n"

"- Headlines that provide a clear benefit or solution tend to have higher readership stats.

"- Include specific details such as earnings reports, market outlooks if needed. \n"

"- Avoid use of causal, colloquial language and cultural references that may not be widely understood.\n"
```

### **HEADLINE REFINE**

```
Refine the headline to make it more effective and engaging by following the steps given below
```


**Step1: Use the following guidelines to make it more interesting**

- Incorporate relevant keywords related to current events or trends.

- It should be compelling and drive readers to take timely action or evoke curiosity

- Highlight any inflection points



**Step2: The language of the headline should not be over-promising, exaggerated or extreme.**

- Avoid usage of sensational/alarming/offensive words.
- Also avoid stereotyping: racial, sexual, national, religious, cultural, or age-related.

**Step3: Count the characters in refined headline and shorten it if characters in headline more than 50.**

- the words in refine headline more than 8-10 words, shorten it.
- The headlines must be in {language}.\n


Return refined versions in double quotes as a bulleted list in order of effectiveness and viewers engagement. (headlines only)"


## Bullet generation prompts - Single Company DOC

### 1st Bullet

* What’s driving the stocks, earnings, multiple or income
* What’s the market missing
* Where are we different?
* What's priced in?
* What are the upcoming catalysts, if any?

### 2nd Bullet

- What's special about your work?
- What analysis have you used that gives you conviction in your forecasts?
- Brag about your research techniques

### 3rd Bullet

- Explore the most interesting pivotal questions.
- Or focus on scenarios where we could be wrong in case of Neutral and Sell ratings

### 4th Bullet

- What is the valuation framework for your Price Target?
- Why is that multiple or DCF assumption appropriate?
- What is the valuation context supporting your rating?
- What is the recommendation given by valuation framework and corresponding price target, if mentioned?

## SC EXTRACT

Extract relevant information for each Topic only from the given text.

**Do not repeat the topics in output.**

## SC Summary

Summarize key points from the text as a paragraph using guidelines below:

- Each paragraph should have around 8 to 10 lines/500-600 chars/110-120 words.
- Highlight the most important information (specific numbers or statistics) and facts.
- The language of the paragraph should be subtle/indicative, and not over-promising/too harsh.
- **Include only facts that are in the report. Do not invent!**
- If needed, use assertive phrases such as "We believe" or "In our view" instead of passive language like "the report suggests" or "based on the report"!
- **Be concise and share main evidence without over-explaining**
- Emphasize and highlight anything with action words like "we are downgrading/upgrading" or "we are changing" or "we prefer" if needed.

**SC SUMMARY GUIDELINES +  The summary should be focused around following points or to answer following questions**:

### **SC REFINE**

Refine the given text as a paragraph using guidelines below:

- The paragraph should be concise and, of maximum {nwords) words.
- Highlight the most important information (specific numbers or statistics) and facts.
- The language of the paragraph should be subtle/indicative, and not over-promising/too harsh.
- If needed, use assertive phrases such as "We believe" or "In our view" instead of passive language like "the report suggests" or "based on the report"!
- Emphasize and highlight anything with action words like "we are downgrading/upgrading" or "we are changing" or "we prefer" if needed.
- The output text should be plain text without any characters for formating.

Do not repeat the phrases or content from previous paragraphs: {previous)n\n

### SC BULLET

* Generate a single, short title for the paragraph to entice readers to continue reading
* "Paragraph: {content}"
* "Use the following guidelines as suggestions to create the title:"
	- The title should be no longer than 40 characters.
    - Use the title to summarize vour call/action/recommendation.
    - Ensure title to be concise, clear and compelling
    - The language of the title should be subtle/indicative, and not over-promising, or too harsh.
    - Include any new or notable insights from the paragraph.
    - Avoid mention of company name and use of two parts in title
    - The title should be generated in sentence case.

### SC BULLET4

* Generate a single, short title for the paragraph to entice readers to continue reading.
* "Paragraph: {content}"
* "Use the following guidelines as suggestions to create the title:"
	* The title should be no longer than 40 characters.
    * Use the title to summarize your call/action/recommendation
    * The title should be generated in sentence case
    * The title should be similar to given examples
    	* Ex.- Valuation: maintain Buy; trim PT from HK$138.00 to HK$126.00
        * Ex.- Valuation: Maintain Buy Rating; Lower PT to $280 (from $400)
        * Ex.- Valuation: New DCF-based price target of €103 per share
        * Ex.- Valuation: Long-term growth does not look fully discounted

### SC BULLET123

**Generate a single, short and unique title for each paragraph to entice readers to continue reading.**

"Use the following guidelines as suggestions to create the title:"

- The title should be no longer than 40 characters.
- Use the title to summarize vour call/action/recommendation.
- Ensure title to be concise, clear and compelling
- The language of the title should be subtle/indicative, and not over-promising, or too harsh.
- Include any new or notable insights from the paragraph.
- Avoid mention of company name and use of two parts in title
- The title should be generated in sentence case.

### Prompts Bullet Generation generic

"Summarize the following text in a concise manner, ensuring it captures all key information."

It should avoid redundancy and focus on the most important facts and insights

**Keep the language clear and professional**

### REFINE

You have an existing summary and a new section of text. Refine the summary to include the new information while maintaining conciseness.

**Ensure the refined summary remains clear, non-redundant, and captures all key insights:**

- "Existing Summary: (existing_summary}"
- "New Text: {Text}"
- "Refined Summary:"

### Prompt for Paragraph generation

**You are a finance and economics expert specializing in creating and reviewing research report.**

**Generate four different unique and diverse paragraphs that summaries the most important aspects of the content.**

**"Use the following guidelines as suggestions to create paragraphs"**

- Each paragraph should have around 8 to 10 lines/500-600 chars/110-120 words.
- Highlight the most important information(specific numbers or statistics) and facts.
- The language of the paragraph should be subtle/indicative, and not over-promising/too harsh.




# Prompt Engineering

Practice of crafting effective prompts for AI models to generate desired outputs. The goals is to structure input in a way that elicits accurate, creative and desired responses from the model.

## Enhanced Prompt Engineering

Enhanced prompt engineering is the process of optimizing the input to the model to generate the desired output. It involves crafting prompts that are clear, concise, and relevant to the task at hand. Enhanced prompt engineering can help improve the performance of the model and ensure that it generates accurate and relevant responses.

 - Instructions: Provide clear and concise instructions to the model to guide its response.
 - Context: Provide relevant context to the model to help it understand the task at hand.
 - Input: Structure the input in a way that is easy for the model to understand and process.
 - Output: Define the desired output to guide the model in generating the response.

## Negative Prompt Engineering

Technique where you explicitly instruct the model on what not to include or do in its response.

## Helps to

 - Avoid unwanted content
 - maintain focus
 - Enhance clarity

## Prompt performance optimization

 - Top P: consider likely words or broad range
 - Temperature: control creativity
 - Top K: Limit the number of probable words
 - Legit: Maximum length of the answer
 - Stop sequences: Tokens that signal the model to stop generated output

## Prompt latency

 - Latency is how fast the model responds
 - Its impacted by a few parameters
   - model size
   - model type itself
   - number of tokens (input)
   - number of tokens (output)
 - Latency is not impacted by top P, top K or temperature

## Prompt engineering techniques

 - zero-shot prompt: Task to the model without providing examples
 - Few-shot prompt: Task to the model with a few examples

# YOWAC

### Hi there 👋, here is YOWAC
#### I am Your Own Word AutoComplete
![I am Your Own Word AutoComplete](banner.png)

.NET Word Addin coupled with Natural language processing 🤗 Transformers Network fine-tuned to custom texts.

This repository features PyTorch Code to fine-tune GPT2-based language model to your own texts, some code to help you prepare your own dataset to do so and code snippets, that you can implement in your own Word VB .NET Addin (or even just VBA Macro).

### Motivation

It might come in handy to autocomplete sentences with a button shortcut in your writing style. 
If you have extensive email exchanges or reports as part of your daily work then you might have accumulated enough data to get it done with ML. <br>
That's where the combination of fine-tuning a GPT model and VB .NET comes in. 

VB .NET get the Office part done (if you are using MS Office, that is). I intentionnaly kept this part separated since someone might want to adopt it to TeX editor for example. <br>
With 🤗 Transformers fine-tuning of GPT model happens.

### Training and Results

I currently tested it with English (`distilgpt2`), German (`dbmdz/german-gpt2`) and French (`bigscience/bloom-560m` is actually multilingual) models with decent results.

* The `notebooks` folder has Jupyter notebooks to prepare the dataset, train the model and do predictions.
* The `dotnet_vba` folder has VBA code which is easily adaptable to VB .NET to get a single sentence as a prompt and send it as a JSON to model entrypoint.
* For obvious reasons, I saved under the `data` not my personal and professional email exchange, but tiny_shakespeare dataset (from [Andrey Karpathy's Github](https://github.com/karpathy)) and Goethe texts dataset compiled from free online libraries.

Trained on Google Colab (takes around 30min on Pro instances and couple of hours on free ones).

### Future stuff

- 🔭 I’m currently working on TorchServe Container to deploy the model in a more optimal way. 
- ⚡ Fun fact: Automatic language detection in data preparation helps a lot to clean up the dataset. 


[<img src='https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/github.svg' alt='github' height='40'>](https://github.com/garnik-arut)  [<img src='https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/linkedin.svg' alt='linkedin' height='40'>](https://www.linkedin.com/in/garnik-arut/)  


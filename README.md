# Dataset and description.

Our team project is **Gender Recognition by Voice**,  team will use logistic regression model to identify the gender which is male or female based upon acoustic properties of the voice and speech. The link to the dataset and its description are below. 

**Link dataset**

https://www.kaggle.com/datasets/primaryobjects/voicegender

**Description**

This database was created to identify a voice as male or female, based upon acoustic properties of the voice and speech. The dataset consists of 3,168 recorded voice samples, collected from male and female speakers. The voice samples are pre-processed by acoustic analysis in R using the seewave and tuneR packages, with an analyzed frequency range of 0hz-280hz (human vocal range). 

There are 21 features, these variables are defined by the acoustic properties:

- meanfreq: mean frequency (in kHz)

- sd: standard deviation of frequency

- median: median frequency (in kHz)

- Q25: first quantile (in kHz)

- Q75: third quantile (in kHz)

- IQR: interquantile range (in kHz)

- skew: skewness (see note in specprop description)

- kurt: kurtosis (see note in specprop description)

- sp.ent: spectral entropy

- sfm: spectral flatness

- mode: mode frequency

- centroid: frequency centroid (see specprop)

- peakf: peak frequency (frequency with highest energy)

- meanfun: average of fundamental frequency measured across acoustic signal

- minfun: minimum fundamental frequency measured across acoustic signal

- maxfun: maximum fundamental frequency measured across acoustic signal

- meandom: average of dominant frequency measured across acoustic signal

- mindom: minimum of dominant frequency measured across acoustic signal

- maxdom: maximum of dominant frequency measured across acoustic signal

- dfrange: range of dominant frequency measured across acoustic signal

- modindx: modulation index. Calculated as the accumulated absolute difference between adjacent measurements of fundamental frequencies divided by the frequency range

- label: male or female



# Team members 

- Aaron Banlao - WU8888

- Dan Hoang - CU2107

- Sadanidan Balamurugan - CB9166


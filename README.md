# narx-code
This repository includes the Matlab Codes used for the article "Forecasting The Consumptions of Coagulation Tests Using A Deep Learning Model" accepted for publication in the Journal of Medical Biochemistry

Forecasting The Consumptions of Coagulation Tests Using A Deep Learning Model
Running Title: Forecasting The Consumptions of Coagulation Tests
Summary
Background: Laboratory professionals aim to provide a reliable laboratory service using public resources efficiently while planning a test’s procurement. This intuitive approach is ineffective, as seen in the COVID-19 pandemic, where the dramatic changes in admissions (e.g. decreased patient admissions) and the purpose of testing (e.g. D-dimer) were experienced. A model based on objective data was developed that predicts the future test consumption of coagulation tests whose consumptions were highly variable during the pandemic.
Methods: Between December 2018 and July 2021, monthly consumptions of coagulation tests (PTT, aPTT, D-dimer, fibrinogen), total-, inpatient-, outpatient-, emergency-, non-emergency -admission numbers were collected. The relationship between inputs and outputs was modeled with the external input nonlinear autoregressive artificial neural network (ANN) (NARX) using MATLAB. Monthly test consumptions between January-July 2021 were used to test the models’ prediction power.
Results: According to the cointegration analysis, total-, emergency-, and non-emergency admission numbers plus the number of working days per month were included in the model. When aPTT and fibrinogen consumptions were estimated, it was possible to predict the other tests. Fifty months of data were used to predict the consumption of the next six months, and the NARX prediction was the more robust approach for both tests. 
Conclusions: The deep learning model gives better results than the intuitive approach in forecasting, even in the pandemic era, and it shows that more effective and efficient planning will be possible if ANN-supported decision mechanisms are used in forecasting 

Keywords: Coagulation test, test consumption, test procurement, deep learning, artificial neural network, NARX (nonlinear autoregressive with external input) neural network

# Homework 5
### Jeremiah Lowhorn
### 8/2/2023

Answer each question by writing the Python code needed to perform the task. Please only use the libraries requested in each problem. 

### Problem 1
Load the interest_inflation data from the statsmodels library as a pandas data frame assigned to `df`. Use the function `df.head()` to view the first 5 rows of the data. Notice the first observation is indexed at 0. Unlike R, Python is a 0 based index language which means when you iterate or wish to view the first observation of a data object it will be at the index 0. 

What do the columns `Dp` and `R` represent? (You can find this using the documentation)



```python
# your code here
x = 8 + 6
print(x)
```

    14
    

### Problem 2
Import scipy as sp and numpy as np. Using the `mean()` and `var()` function from scipy, validate that both functions equate to their numpy counterparts against the column `Dp`.

By using the scipy library you should receive a warning message. What does the warning message indicate? Which function should you use going forward? 


```python
# your code here

```

### Problem 3
Fit an OLS regression (linear regression) using the statsmodels api where `y = df['Dp']` and `x = df['R']`. By default OLS estimates the theoretical mean of the dependent variable y. Statsmodels.ols does not fit a constant value by default so be sure to add a constant to `x`. Extract the coefficients into a variable named `res1_coefs`. See the documentation for `params`. Finally print the `summary()` of the model. 

Documentation: https://www.statsmodels.org/dev/generated/statsmodels.regression.linear_model.OLS.html


```python
# your code here
```

                                OLS Regression Results                            
    ==============================================================================
    Dep. Variable:                     Dp   R-squared:                       0.018
    Model:                            OLS   Adj. R-squared:                  0.009
    Method:                 Least Squares   F-statistic:                     1.954
    Date:                Sun, 26 Jun 2022   Prob (F-statistic):              0.165
    Time:                        11:01:14   Log-Likelihood:                 274.44
    No. Observations:                 107   AIC:                            -544.9
    Df Residuals:                     105   BIC:                            -539.5
    Df Model:                           1                                         
    Covariance Type:            nonrobust                                         
    ==============================================================================
                     coef    std err          t      P>|t|      [0.025      0.975]
    ------------------------------------------------------------------------------
    const         -0.0031      0.008     -0.370      0.712      -0.020       0.014
    R              0.1545      0.111      1.398      0.165      -0.065       0.374
    ==============================================================================
    Omnibus:                       11.018   Durbin-Watson:                   2.552
    Prob(Omnibus):                  0.004   Jarque-Bera (JB):                3.844
    Skew:                          -0.050   Prob(JB):                        0.146
    Kurtosis:                       2.077   Cond. No.                         61.2
    ==============================================================================
    
    Notes:
    [1] Standard Errors assume that the covariance matrix of the errors is correctly specified.
    

    C:\Users\jlowh\anaconda3\lib\site-packages\statsmodels\tsa\tsatools.py:142: FutureWarning: In a future version of pandas all arguments of concat except for the argument 'objs' will be keyword-only
      x = pd.concat(x[::order], 1)
    

### Probelm 4
Fit a quantile regression model using the statsmodels api using the formula `Dp ~ R`. By default quantreg creates a constant so there is no need to add one to this model. In your `fit()` method be sure to set `q = 0.5` so that we are estimating the theoritical median.  Extract the coefficients into a variable named `res2_coefs`.  Finally print the `summary()` of the model. 


Documentation: https://www.statsmodels.org/dev/generated/statsmodels.regression.quantile_regression.QuantReg.html


```python
# your code here
```

                             QuantReg Regression Results                          
    ==============================================================================
    Dep. Variable:                     Dp   Pseudo R-squared:              0.02100
    Model:                       QuantReg   Bandwidth:                     0.02021
    Method:                 Least Squares   Sparsity:                      0.05748
    Date:                Sun, 26 Jun 2022   No. Observations:                  107
    Time:                        11:00:49   Df Residuals:                      105
                                            Df Model:                            1
    ==============================================================================
                     coef    std err          t      P>|t|      [0.025      0.975]
    ------------------------------------------------------------------------------
    Intercept     -0.0054      0.013     -0.417      0.677      -0.031       0.020
    R              0.1818      0.169      1.075      0.285      -0.153       0.517
    ==============================================================================
    




    Intercept   -0.005388
    R            0.181800
    dtype: float64



### Problem 5

Part 1: Use the `type()` method to determine the type of `res1_coefs` and `res2_coefs`. Print the type in a Jupyter cell. 

Part 2: In the next Jupyter cell show that `res1_coefs > res2_coefs`. What does the error mean? To resolve this error we must convert the data to an unnamed object or change the names of the objects. Since we are not focusing on pandas this week we will simply convert to a different data type.

Part 3: Now, do the same comparision using the `tolist()` function at the end of each object name. 

Part 4: We performed two types of linear regression and compared their coefficients. Coefficients are essentially the rate at which x changes the values of y. Do some research on what OLS estimates versus what quantreg estimates and explain why we have two different coefficient estimates. In which cases do you think quantile regression will be useful? What about ordinary least squares regression? 


```python
# your code here
```



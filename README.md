# Chess Game Dynamics: An Exploratory Data Analysis

### Project Overview

This project performs an exploratory data analysis (EDA) on a dataset of chess games played on Lichess. The goal is to uncover key factors that influence the outcome of a chess game, such as first-move advantage, player skill, and strategic opening choices. The analysis uses Python with pandas for data manipulation and seaborn for visualization, as well as SQL for data querying and aggregation.

### Dataset

* **Source**: [Chess Game Dataset (Lichess)](https://www.kaggle.com/datasets/datasnaek/chess) on Kaggle.
* **Content**: The dataset contains over 20,000 chess games, with detailed information including player ELO ratings, opening names, number of turns, and the final outcome of each game.

### Key Questions Investigated

This analysis seeks to answer several key questions about chess strategy:
1.  Does the player with the White pieces have a statistically significant first-move advantage?
2.  How much does the skill difference (ELO rating) between players impact the game's outcome?
3.  Are certain openings played more frequently than others?
4.  Can a poor opening choice negate the first-move advantage?
5.  Do games between higher-rated players last longer than those between lower-rated players?

### How to Use This Notebook

1.  **Prerequisites**: Make sure you have Python installed, along with the following libraries: `pandas`, `matplotlib`, `seaborn`.
2.  **Dataset**: Download the `games.csv` file from the Kaggle link above and place it in the same directory as the notebook.
3.  **Run the Notebook**: Open `ChessEDA.ipynb` in JupyterLab or Jupyter Notebook and run the cells sequentially. The notebook will:
    * Load and clean the dataset.
    * Perform univariate and bivariate analysis.
    * Generate visualizations for key insights.
    * Save a cleaned version of the data to a SQLite database file (`chess_analysis.sqlite`).

### Summary of Key Findings

* **A Slight Edge**: The data confirms a small but statistically significant first-move advantage for White.
* **Skill is Decisive**: This advantage is minor compared to player skill. The higher-rated player is the overwhelming favorite to win.
* **Strategy Matters**: A player's opening choice can be so critical that it can even reverse the first-move advantage.
* **Complexity Increases with Skill**: Games between higher-rated players are, on average, significantly longer and more complex.

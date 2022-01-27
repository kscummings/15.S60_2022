# A trick to stop the editor complaining about undefined variables.
snakemake = snakemake # type: ignore

import pandas as pd


## Setup with Snakemake

input_file = snakemake.input[0]
output_file = snakemake.output[0]

factor = int(snakemake.params["factor"])


## Main script

with open(input_file, 'r') as f:
    nums = [(factor + float(x)) ** 2 for x in f.readlines()]

result = pd.DataFrame([{"num_sum": sum(nums), "id": factor}])

result.to_csv(output_file, index=False)

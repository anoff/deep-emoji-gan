# deep emoji generative adversarial network

> (trying to) generate new emojis with DCGAN 🤗🏭

## development

keeping track of different network designs and hyperparameters

### [15817e6](https://github.com/anoff/deep-emoji-gan/blob/15817e6dc4c72496321b59b4fef99910d73292c2/Smiley_Generator.ipynb)

#### generator design

*convolutions:* `4`

*features:* `512 > 256 > 128 > 64 > 4`

*kernel size:* `5`

#### discriminator design

*convolutions:* `3`

*features:* `64 > 128 > 256`

*kernel size:* `5`

#### hyper params

*training set:* `225` (people no tones)

*epochs:* `768`

*learning rate:* `0.0002`

*batch size:* `64`

*opt.beta:* `0.4`

#### result

![](./results/15817e6_loss.png)

![](./results/15817e6_sample.png)

### [fa696d4](https://github.com/anoff/deep-emoji-gan/blob/fa696d4353342382dbeb31a793a82b6b6c3e1f7a/Smiley_Generator.ipynb)

#### generator design

*convolutions:* `4`

*features:* `256 > 128 > 32 > 4`

*kernel size:* `5`

#### discriminator design

*convolutions:* `3`

*features:* `32 > 128 > 256`

*kernel size:* `5`

#### hyper params

*training set:* `714` (people & activity)

*epochs:* `768`

*learning rate:* `0.0003`

*batch size:* `256`

*opt.beta:* `0.5`

#### result

![](./results/fa696d4_loss.png)

![](./results/fa696d4_sample.png)

### [e8285ca](https://github.com/anoff/deep-emoji-gan/blob/e8285cacd005ae8246a1eddc7123e70d2cdbfd1d/Smiley_Generator.ipynb)

#### generator design

*convolutions:* `4`

*features:* `256 > 128 > 32 > 4`

*kernel size:* `5`

#### discriminator design

*convolutions:* `3`

*features:* `32 > 128 > 256`

*kernel size:* `5`

#### hyper params

*training set:* `714` (people & activity)

*epochs:* `4096` (only `1200` run?)

*learning rate:* `0.0003`

*batch size:* `256`

*opt.beta:* `0.5`

#### result

![](./results/e8285ca_loss.png)

![](./results/e8285ca_sample.png)


# dev_container_template

## Update Git URL
Update the following lines in the `.devcontainer/devcontainer.json` file at the end of the line 9:

```
"postStartCommand": "chmod +x aider.sh && python -m pip install -U --upgrade-strategy only-if-needed aider-chat && export CODESTRAL_API_KEY=$(cat ai_dev/codestral_api.txt) && gh auth login && gh auth status && git remote set-url origin https://github.com/llama887/dev_container_template.git
```

It specifies a URL that links to the template repository. Update this URL to the URL of your repository. Find the URL via the terminal by running the command 'git remote -v'.

## Git Ignoring Aider Files
To not leak your API keys and to hide all of the aider related files, add the following lines to the `.gitignore`:
```
ai_dev/
aider.sh
```

## Getting Free API Keys
Get a free API key from [Mixtral](https://mistral.ai/). Tutorial on setting up extensions here:
https://github.com/user-attachments/assets/0beef1ec-c3c5-44bf-b397-dde981a559c4

## Running on Machines without GPUs
On lines 6-8 in `.devcontainer/devcontainer.json` tries to access a GPU. If the machine does not have a GPU, remove `"--gpus", "all",`
```
	"runArgs": [
		"--gpus", "all","--init", "-v", "${env:HOME}/.ssh:/root/.ssh"
	],
```

## Using a Different CUDA Version
The container uses CUDA version 12.4 which matches my device. You may need to change the base container to your CUDA version.



# Fire-Proximity-Prompt
The first instance of a function which could automatically fire a proximity prompt without any use of Virtual Input Manager or any Virtual User related methods. This didn't take me too long, just a 5 minute review of the api surrounding proximity prompts and then another 5 minutes testing how they work. This function could also skip the time it takes for the proximity prompt to fire but this can be detected so there is an option to disable it. 

About a week or two after this function was released, the Synapse X developers added a C function to support firing this safely and efficiently. 

## Preview 
![alt text](https://i.imgur.com/6U7ZHfX.gif)

## Usage 

```lua
--[[ 
This will fire the proximity prompt indexed in the first argument
for the amount of times specified in the second argument and the third
argument is whether or not you would like to skip the proximity prompt's hold duration. 
]]

fireproximityprompt(workspace.Instance.ProximityPrompt, 1, true)
```

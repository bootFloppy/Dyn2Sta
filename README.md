# Dyn2Sta
Roblox Dynamic Heads back 2 Static, Texture Based Heads.

The reason why this was made into a repo is because of two things.
* So people can contribute to [HeadTable](HeadTable.luau)
* So people can use this in their Experiences, if they want. (Including you)

# Installation
You'll have to manually copy stuff from each file in the repo, here is a layout of where the scripts should be placed.

- [Dyn2Sta](Dyn2Sta.luau) (Recommended you parent to ServerScriptService)
- - [HeadTable](HeadTable.luau) (Required to be parented to Dyn2Sta)
## Rojo?
Unfortunately I'm not familiar with something like Rojo, so unless I know how to format this repo to support Rojo's stuff, or that I learn Rojo, there won't be any Rojo support.

# How to add to [HeadTable](HeadTable.luau).
Adding to the HeadTable is somewhat simple, as you only need a MeshId and ImageId.
```luau
["MeshId"] = "TextureId", -- Name (Useful for organization.)
```

# FAQ
<details>
<summary>Why not use HumanoidDescription instead of model.Head.Mesh.MeshId?</summary>
HumanoidDescription kept giving me issues with If statements and stuff, as in. 
<pre>if HeadTable[HumanoidDescription.Head] then</pre>
would for some (unknown) reason (to me) would always return false, even if the Values' would look the same.
</details>
<details>
<summary>Does this support R15?</summary>
No. Not at the moment.
</details>
<details>
<summary>Config?</summary>
As you can tell in Dyn2Sta.luau, there isn't any config options yet. I may add some options for handling how Heads that don't have a static version are handled but for now you'll have to manually edit the script yourself.
</details>

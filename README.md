change log, by Leon.
1. podspec中添加自动化发版版本设置
2. 命令执行的时候，添加group设置，并将其替换到podspec中
3. 设置podspec中source的正确值
4. 命令执行阶段：默认语言改为ObjC
5. 命令执行阶段：testing frameworks默认为None
6. 命令执行阶段：view base testing 默认为No
7. 命令执行阶段：prefix 添加默认选项，默认为MD
8. 命令执行阶段：添加group选项


pod-template
============

An opinionated template for creating a Pod with the following features:

- Git as the source control management system
- Clean folder structure
- Project generation
- MIT license
- Testing as a standard
- Turnkey access to Travis CI
- Also supports Carthage

## Getting started

There are two reasons for wanting to work on this template, making your own or improving the one for everyone's. In both cases you will want to work with the ruby classes inside the `setup` folder, and the example base template that it works on from inside `template/ios/`. 

## Best practices

The command `pod lib create` aims to be ran along with this guide: https://guides.cocoapods.org/making/using-pod-lib-create.html so any changes of flow should be updated there also.

It is open to communal input, but adding new features, or new ideas are probably better off being discussed in an issue first. In general we try to think if an average Xcode user is going to use this feature or not, if it's unlikely is it a _very strongly_ encouraged best practice ( ala testing / CI. ) If it's something useful for saving a few minutes every deploy, or isn't easily documented in the guide it is likely to be denied in order to keep this project as simple as possible.

## Requirements:

- CocoaPods 1.0.0+

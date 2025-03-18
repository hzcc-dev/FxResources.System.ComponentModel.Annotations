# FxResources.System.ComponentModel.Annotations

本仓库旨在为 .NET **System.ComponentModel.Annotations** 库提供默认验证消息和异常提示信息的本地化支持。

在使用 ValidationAttribute 进行模型验证时，如果你想给用户一个本地化的错误信息而不是默认的英文信息，你将不得不指定 ErrorMessage 参数。
如果有大量模型需要验证，这样会非常麻烦。通过添加本地化的语言资源，我们就可以得到本地化的消息而不必指定 ErrorMessage。

## 关键特性
- 多语言支持：提供多种语言的本地化资源，已支持中文（简体）、中文（繁体）。
- 持续更新：随着.NET版本的迭代，本地化资源也将同步更新，确保兼容性和准确性。
- 社区驱动：欢迎开发者参与翻译贡献，共同完善本地化支持。
## 目录结构
- SR.resx：存放中立语言的资源文件，与官方原始资源相同。
- SR.\{culture}.resx：存放相应文化的本地化资源文件。

*注意：不同版本的.NET中的SR.resx内容略有不同，因此请先确认您使用了正确的版本或分支。*
## 如何参与
- 翻译贡献：选择一种语言，提交翻译后的本地化资源。
- 反馈问题：在 Issues 中报告翻译错误或缺失的语言支持。
## 使用方法
根据资源卫星dll的查找规则，我们需要确保资源dll在正确的目录。
看起来就像这样：
```
.\System.ComponentModel.Annotations.dll
.\zh-Hans\System.ComponentModel.Annotations.resources.dll
```

具体来说：
- 在开发环境中，System.ComponentModel.Annotations.dll **不会**复制到程序输出目录，因此你必须把资源dll复制到dotnet目录（Windows系统为 `C:\Program Files\dotnet\shared\Microsoft.NETCore.App\{version}\`）。
- 在发布程序时，如果选择了`self-contained`模式，那么 System.ComponentModel.Annotations.dll 会复制到程序输出目录。这时不需要手动复制资源dll，它们已经在正确的位置。
- 在发布程序时，如果选择`no-self-contained`模式，那么 System.ComponentModel.Annotations.dll **不会**复制到程序输出目录，你必须把资源dll复制到运行环境的dotnet目录。

欢迎加入我们，提供更多文化的本地化支持！
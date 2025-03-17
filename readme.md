本仓库旨在为 .NET **System.ComponentModel.Annotations** 库提供默认验证消息和异常提示信息的本地化支持。帮助开发者在不同语言环境下更便捷地使用该库，提升开发效率和用户体验。

在使用ValidationAttribute时，如果你不想使用默认的英文信息，你将不得不提供一个本地化的ErrorMessage。
这在有大量模型需要验证时非常麻烦。所以我们希望可以直接提供本地化的语言资源，这样就不必单独指定ErrorMessage。

## 关键特性
- 多语言支持：提供多种语言的本地化资源，已支持中文（简体）、中文（繁体）。
- 持续更新：随着.NET版本的迭代，本地化资源也将同步更新，确保兼容性和准确性。
- 社区驱动：欢迎开发者参与翻译贡献，共同完善本地化支持。
## 目录结构
- SR.resx：存放中立语言的资源文件，与官方原始资源相同。
- SR.{culture}.resx：存放相应文化的本地化资源文件。
## 如何参与
- 翻译贡献：选择一种语言，提交翻译后本地化资源。
- 反馈问题：在 Issues 中报告翻译错误或缺失的语言支持。
## 使用方法
依据资源卫星dll的查找方式，我们必须将生成的culture目录和dll复制到 **System.ComponentModel.Annotations.dll**所在目录。
具体来说：
- 如果你在开发环境，System.ComponentModel.Annotations.dll 不会复制到程序输出目录，因此你必须把资源dll复制到dotnet目录。（通常为 Program Files\dotnet\shared\Microsoft.NETCore.App\{version}\）
- 在发布程序时，如果选择standalone模式，那么 System.ComponentModel.Annotations.dll 不会复制到程序输出目录，因此你必须把资源dll复制到运行环境的dotnet目录。
- 在发布程序时，如果选择了standalone模式，那么 System.ComponentModel.Annotations.dll 会复制到程序输出目录，因此你需要把资源dll复制到程序输出目录。

欢迎加入我们，提供更多文化的本地化支持！
# FxResources.System.ComponentModel.Annotations

本项目为 .NET **System.ComponentModel.Annotations** 库提供本地化的验证消息和异常提示信息。

在使用 ValidationAttribute 进行模型验证时，如果你想给用户一个本地化的错误信息而不是默认的英文信息，你将不得不指定 ErrorMessage 参数。
如果有大量模型需要验证，这样会非常麻烦。通过添加本地化的语言资源，我们就可以得到本地化的消息而不必指定 ErrorMessage。

## 关键特性
- 多语言支持：提供多种语言的本地化资源，已支持中文（简体）、中文（繁体）。
- 持续更新：随着.NET版本的迭代，本地化资源也将同步更新，确保兼容性和准确性。
- 社区驱动：欢迎开发者参与翻译贡献，共同完善本地化支持。

## 使用方法
### 安装包
根据你使用的.NET版本和需要的本地化语言安装合适的 nuget 包，示例如下：
```
Install-Package FxResources.System.ComponentModel.Annotations.zh-Hans -Version 7.0.0
```
### 设置文化
如果你没有使用国际化功能，只想为用户提供本地化的模型验证消息，那么需要设置默认的UI文化。
``` csharp
// program.cs
CultureInfo.DefaultThreadCurrentUICulture = CultureInfo.GetCultureInfo("zh-Hans");
```

如果你使用了ASP.NET Core的国际化功能，只需要将使用的文化添加到支持列表。正常情况下你应该已经这么做了。
```
services.AddRequestLocalization(t =>
{
    t.AddSupportedUICultures("zh-CN", "zh-TW", "en");
});
```

### 删除 ErrorMessage
现在你不再需要在验证特性上指定ErrorMessage。
```
public class FooUser
{
    [Required]
    public string Name { get; set; }
    [Required]
    public string Email { get; set; }
    [Required]
    [Range(1, 100)]
    public int? Age { get; set; }
}
```
假设没有传递任何参数，你会得到这样的错误信息：
```
Age字段为必填项。
Name字段为必填项。
Email字段为必填项。
```

## 目录结构
- SR.resx：存放中立语言的资源文件，与官方原始资源相同。
- SR.\{culture}.resx：存放相应文化的本地化资源文件。

*注意：不同版本的 .NET 中的 SR.resx 内容略有不同，因此请先确认您使用了正确的版本或分支。*

## 如何参与
- 翻译贡献：选择一种语言，提交翻译后的本地化资源。
- 反馈问题：在 Issues 中报告翻译错误或缺失的语言支持。

欢迎加入我们，提供更多文化的本地化支持！

## 可用语言包
- [中文（简体）](https://www.nuget.org/packages/FxResources.System.ComponentModel.Annotations.zh-Hans/)
- [中文（繁体）](https://www.nuget.org/packages/FxResources.System.ComponentModel.Annotations.zh-Hant/)
# FxResources.System.ComponentModel.Annotations

[中文](./docs/readme.zh-Hans.md)

This project provides localized validation messages and exception prompts for the .NET **System.ComponentModel.Annotations** library.

When using `ValidationAttribute` for model validation, if you want to provide users with localized error messages instead of the default English messages, you would have to specify the `ErrorMessage` parameter. This can be cumbersome if you have a large number of models to validate. By adding localized language resources, we can obtain localized messages without specifying `ErrorMessage`.

## Key Features
- **Multilingual Support**: Provides localization resources for multiple languages, with support for Simplified Chinese and Traditional Chinese already available.
- **Continuous Updates**: Localization resources will be updated in sync with .NET versions to ensure compatibility and accuracy.
- **Community-Driven**: Developers are welcome to contribute translations to help improve localization support.

## Usage
### Install the Package
Install the appropriate NuGet package based on the version of .NET you are using and the localization language you need.

For example:
```
Install-Package FxResources.System.ComponentModel.Annotations.zh-Hans -Version 8.0.0
```

### Set the Culture
If you are not using internationalization features and just want to provide localized model validation messages to users, you need to set the default UI culture.
``` csharp
// program.cs
CultureInfo.DefaultThreadCurrentUICulture = CultureInfo.GetCultureInfo("zh-Hans");
```

If you are using ASP.NET Core's internationalization features, you only need to add the culture you are using to the supported list. You should have already done this under normal circumstances.
```
services.AddRequestLocalization(t =>
{
    t.AddSupportedUICultures("zh-CN", "zh-TW", "en");
});
```

### Remove `ErrorMessage`
You no longer need to specify `ErrorMessage` on validation attributes.
``` csharp
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
Assuming no parameters are passed, you will get the following error messages:
```
Age字段为必填项。
Name字段为必填项。
Email字段为必填项。
```

## How to Contribute
- **Translation Contribution**: Choose a language and submit the translated localization resources.
- **Report Issues**: Report translation errors or missing language support in the Issues section.

Welcome to join us and provide localization support for more cultures!

## Directory Structure
- `SR.resx`: Contains the neutral language resource file, which is identical to the official original resources.
- `SR.{culture}.resx`: Contains localized resource files for the corresponding culture.

*Note: The content of `SR.resx` may vary slightly between different versions of .NET, so please make sure you are using the correct version or branch.*

## Available language packages
- [中文（简体）](https://www.nuget.org/packages/FxResources.System.ComponentModel.Annotations.zh-Hans/)
- [中文（繁体）](https://www.nuget.org/packages/FxResources.System.ComponentModel.Annotations.zh-Hant/)
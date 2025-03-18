# FxResources.System.ComponentModel.Annotations

This repository aims to provide localization support for default validation messages and exception prompts for the .NET **System.ComponentModel.Annotations** library.

When using `ValidationAttribute` for model validation, if you want to provide users with localized error messages instead of the default English messages, you would have to specify the `ErrorMessage` parameter. This can be cumbersome if you have a large number of models to validate. By adding localized language resources, we can obtain localized messages without specifying `ErrorMessage`.

## Key Features
- **Multilingual Support**: Provides localization resources for multiple languages, with support for Simplified Chinese and Traditional Chinese already available.
- **Continuous Updates**: Localization resources will be updated in sync with .NET versions to ensure compatibility and accuracy.
- **Community-Driven**: Developers are welcome to contribute translations to help improve localization support.

## Directory Structure
- `SR.resx`: Contains the neutral language resource file, which is identical to the official original resources.
- `SR.{culture}.resx`: Contains localized resource files for the corresponding culture.

*Note: The content of `SR.resx` may vary slightly between different versions of .NET, so please make sure you are using the correct version or branch.*

## How to Contribute
- **Translation Contribution**: Choose a language and submit the translated localization resources.
- **Report Issues**: Report translation errors or missing language support in the Issues section.

## Usage
According to the resource satellite DLL lookup rules, we need to ensure that the resource DLL is in the correct directory. It should look like this:
```
.\System.ComponentModel.Annotations.dll
.\zh-Hans\System.ComponentModel.Annotations.resources.dll
```

Specifically:
- In the development environment, `System.ComponentModel.Annotations.dll` **will not** be copied to the program output directory. Therefore, you must copy the resource DLL to the dotnet directory (on Windows, this is `C:\Program Files\dotnet\shared\Microsoft.NETCore.App\{version}\`).
- When publishing the application, if you choose the `self-contained` mode, `System.ComponentModel.Annotations.dll` will be copied to the program output directory. In this case, there is no need to manually copy the resource DLLs, as they are already in the correct location.
- When publishing the application, if you choose the `no-self-contained` mode, `System.ComponentModel.Annotations.dll` **will not** be copied to the program output directory. You must copy the resource DLL to the dotnet directory of the runtime environment.

Welcome to join us and provide localization support for more cultures!
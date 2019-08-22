# launcher-app-ios

IMPORTANT: This app needs to be release on a entreprise account and will not be accepted on the App Store

## Icon

The easiest way to update app icon is to go inside Acme Folder then Acme/Assets/AppIcon. Then you have to replace all images with same name and correct size

## Change Name of application

In order to update app name on springboard you need to open Xcode project. You should have Xcode install on your machine then launch **Acme.xcodeproj**

On left side of your Xcode window you have the Navigator panel, you should select Acme on top of the list to bring all project settings on center panel. Then on left side of center panel you have a tree with `PROJECT` and `TARGETS`, under target select `Acme`

On General tab under Identity you will see a text field named `Display name`, you can enter there your app name.

To finish you should also update `Bundle Identifier` with the one you defined on iTunes connect in order to make your application available on the App Store.

## Update wording

In the application we have an AlertView which redirect user to the App Store if LumApps is not installed on the device.

[](https://www.notion.so/c441852a174840a58421de94e13fca6d#64161829ee2c4f98b1fae7eeef5d02db)

You have the possibity to change the wording or add more languages.

By default the application is localized into 2 languages: English and French. If you want to remove one or add more languages follow this steps:

- On navigator panel select Acme
- On center panel, tree on the left, select Acme under `PROJECT`
- Select Info tab, then you should see `Localizations`
- To delete a language, select it then click on `-`
- To add a language, click on `+`, select desired language into the list, then click on Finish
- Repeat last step if you have more than on language that you want to add

Now that your languages are defined we can update wording. On Navigator panel, under folder Acme you have a file named `Localizable.strings`. You can expand it to show all languages of you app (for example `Localizable.strings (English)`)

Those files contain 3 keys/values, you should NOT modify keys which are on left side of `=` sign because they are used into the code and are commun to all files. What you need to update is the sentences on right side of the `=` sign in the correct language. Repeat for all files.

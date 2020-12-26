# edvive_proto
![GitHub all releases](https://img.shields.io/github/downloads/mirajus-salehin/edvive-proto/total)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/mirajus-salehin/edvive-proto)
![GitHub last commit](https://img.shields.io/github/last-commit/mirajus-salehin/edvive-proto)



# App in prototyping phase

> A prerelease version is available at [v0.1.1-pre-dbg](https://github.com/mirajus-salehin/edvive-proto/releases/tag/v0.1.1-pre-dbg)

# Running the app locally (from source)

1. Clone the repo
```bash
git clone https://github.com/mirajus-salehin/edvive-proto
```
Alternatively you can use [Github CLI](https://cli.github.com/)
```bash
gh repo clone mirajus-salehin/edvive-proto
```
2. Check that an Android device is running.
```bash
flutter devices

```
3. Run the app with the following command:
```bash
flutter run
```

# Building web version from the source

## Requirments
1. Flutter SDK
2. Android Studio (for android build)
3. Xcode (for iOS build) 

## Steps to build

1. Clone the repo
```bash
git clone https://github.com/mirajus-salehin/edvive-proto
```
Alternatively you can use [Github CLI](https://cli.github.com/)
```bash
gh repo clone mirajus-salehin/edvive-proto
```
2. Setup Flutter SDK your device. Visit https://flutter.dev/docs/get-started/install for installation instructions.
3. Build the app for deployment using
```bash
flutter build web
```
The release build of a simple app has the following structure:

```
/build/web
  assets
    AssetManifest.json
    FontManifest.json
    NOTICES
    fonts
      MaterialIcons-Regular.ttf
      <other font files>
    <image files>
  index.html
  main.dart.js
  main.dart.js.map

```

4. Goto ```<apdir>/build/web``` and launch a web server. For example
```bash
python -m http.server 8000
```
5. Navigate to ```localhost:8000``` in your browser.

> **NOTE:** web release is not coded properly. So many visual issuses may rise.


If any error occuers, please follow this steps

1. Before starting Make sure you are on flutter Dev channel if you are not
You need to switch to Beta or Master channel by hitting this command on your terminal.
```bash
flutter channel beta
```
2. To enable web support you have to write
```bash
flutter config --enable-web
```
It will enable experimental web support
3. Now open terminal in your old flutter project directory and write
```bash
flutter create .
```
All done....
> Not all library is supported in flutter web so you might be get some errors so take backup of your project before performing this tasks.
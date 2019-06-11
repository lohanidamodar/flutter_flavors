# Flutter Flavors
Separating build environments in flutter

This is a companion repository for my youtube tutorial regarding flutter flavors. This consists of a 3 part tutorial.

### [Companion Tutorial Videos ](https://www.youtube.com/watch?v=DgGUtTUatDQ&list=PLUiueC0kTFqLdkuj4j8FNy1qlzcI0nyCu)

## Part 1
- Starting code is in [master](https://github.com/lohanidamodar/flutter_flavors/tree/master) branch.
- Final code is in [part1](https://github.com/lohanidamodar/flutter_flavors/tree/part1) branch

In this part, we will learn to separate build environment and configs in dart side, we will learn to create separate main files each for the build flavors we want and apply different configs to each app.

## Part 2
- Starting code is in [part2-start](https://github.com/lohanidamodar/flutter_flavors/tree/part2-start) branch.
- Final code is in [part2-finish](https://github.com/lohanidamodar/flutter_flavors/tree/part2-finish) branch

In part 2 we will learn to setup flavors in android side which will allow us to use two separate firebase configs based on flavors in our flutter project in android.

## Part 3
- Starting code is in [part3-start](https://github.com/lohanidamodar/flutter_flavors/tree/part3-start) branch.
- Final code is in [part3-finish](https://github.com/lohanidamodar/flutter_flavors/tree/part3-finish) branch

In part 3 we will learn to setup schemas in iOS side, and make our flutter app able to use separate firebase config in iOS. 

### Run Script phase code
```bash
if [ "${CONFIGURATION}" == "Debug-prod" ] || [ "${CONFIGURATION}" == "Release-prod" ] || [ "${CONFIGURATION}" == "Release" ]; then
cp -r "${PROJECT_DIR}/Runner/Firebase/prod/GoogleService-Info.plist" "${PROJECT_DIR}/Runner/GoogleService-Info.plist"

echo "Production plist copied"

elif [ "${CONFIGURATION}" == "Debug-dev" ] || [ "${CONFIGURATION}" == "Release-dev" ] || [ "${CONFIGURATION}" == "Debug" ]; then

cp -r "${PROJECT_DIR}/Runner/Firebase/dev/GoogleService-Info.plist" "${PROJECT_DIR}/Runner/GoogleService-Info.plist"

echo "Development plist copied"
fi
```

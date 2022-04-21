flutter packages pub get
flutter --stacktrace
flutter --warning-mode=all
flutter gradlew build --stacktrace


FIREBASE_PROJECT="Ecom-check" # <-- update with the name of your firebase project
GCLOUD_KEY_FILE="C:\Users\Gamestester\Documents\ecom-check-firebase-adminsdk-xwwxg-09f492cb07.json" ## <-- update with the path to your gcloud key file

rm -rf build

flutter build apk --debug

TARGET_DIR= "$(pwd)/integration_test/splash_screen_tests.dart"

pushd android
./gradlew app:assembleAndroidTest
./gradlew app:assembleDebug -Ptarget= "$(pwd)/integration_test/splash_screen_tests.dart"
#./gradlew app:connectedAndroidTest -Ptarget= C:\Users\Gamestester\StudioProjects\E-commerce-Complete-Flutter-UI\integration_test\splash_screen_tests.dart
popd
#
#gcloud auth activate-service-account --key-file=$GCLOUD_KEY_FILE
#gcloud --quiet config set project $FIREBASE_PROJECT
#
#gcloud firebase test android run \
#  --type instrumentation \
#  --app build/app/outputs/apk/debug/app-debug.apk \
#  --test build/app/outputs/apk/androidTest/debug/app-debug-androidTest.apk \
#  --timeout 3m
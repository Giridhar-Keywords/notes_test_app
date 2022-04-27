import org.junit.Rule;
import org.junit.runner.RunWith;
import dev.flutter.plugins.integration_test.FlutterTestRunner;
import androidx.test.rule.ActivityTestRule;
package com.example.notes_test_app

@RunWith(FlutterTestRunner.class)
public class MainActivityTest {
    @Rule
    public ActivityTestRule<MainActivityTest> rule = new ActivityTestRule<>(MainActivity.class,true, false);
}
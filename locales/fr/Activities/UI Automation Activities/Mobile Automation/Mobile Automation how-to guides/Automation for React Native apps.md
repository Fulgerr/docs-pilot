# Automation for React Native apps

To build automations for Reach Native apps, you can use the React Native Demo App for iOS to
            learn how to make specific components ready to automate.

# Prerequisites

* UiPath.MobileAutomation.ActivitiesAlternatively, you can use the Mobile Testing Project default template, as this will install the activity package for you.
* Device farm or Physical Mobile Device (see Managing Devices).
* Appium endpoint.

### Prepare the environment

For this example, the TouchableOpacity component is being used to automate touch-based input. You can set other views as accessible as the behavior will be similar with the TouchableOpacity component.

Download the React Native Demo App for iOS.Configure an iOS application in Mobile Device Manager using the React Native Demo App for iOS.Start the application in Mobile Device Manager.Use the interaction bar right next to the device emulator to record the action so you can import them directly in Studio (see Import Recorded Actions).


### Building automation for React Native
    apps

In this example, we use the React Native Demo App for iOS to configure specific properties to make components automatable.

# Accessibility properties

Setting this property to true indicates the view as an accessibility element. Accessibility set to true makes an element automatable. All touchable components are accessible by default (see React Native Accessibility).

<View accessible={true}>
  <Text>text one</Text>
  <Text>text two</Text>
</View>

PropertyTypeDescriptionaccessiblebool`{truetestIDstring'any text' Ungroups this component from its parent making it individually automatable.Makes the component automatable despite its parent accessibility status (true or false).not mentioned  Component is treated accordingly to its parent accessibility status

# Mobile automation sample

Use the following mobile automation sample as a starting point to building the automation according to your requirements. Alternatively, you can use Mobile Device Manager to record steps and then import them to Studio.

import React from 'react';
import type { Node } from 'react';
import {
  SafeAreaView,
  ScrollView,
  StatusBar,
  StyleSheet,
  Text,
  Alert,
  useColorScheme,
  View,
  TouchableOpacity,
  Button
} from 'react-native';
import {
  Colors,
  DebugInstructions,
  Header,
  LearnMoreLinks,
  ReloadInstructions,
} from 'react-native/Libraries/NewAppScreen';
import symbolicateStackTrace from 'react-native/Libraries/Core/Devtools/symbolicateStackTrace';
const App: () => Node = () => {
  const isDarkMode = useColorScheme() === 'dark';
  const backgroundStyle = {
    backgroundColor: isDarkMode ? Colors.darker : Colors.lighter,
  };
  const click = () => {
    Alert.alert("click!! ")
  }
  return (
    <View style={styles.container}>
      <TouchableOpacity style={styles.top} accessible={true}>
        <View>
          <Text accessible={true} style={[styles.text1, backgroundColor = "lightblue"]}>Touchable opacity(TO) accessible = true</Text>
          <Text accessible={true} style={[styles.text1, backgroundColor = "lightblue"]}>Accessible true on TO groups all elements within TO</Text>
        </View>
        <View >
          <Text accessible={true} style={styles.text2} onPress={click}>Accessible true text in view</Text>
        </View>
        <Button accessible={true} color="white" title='Button accessible true' onPress={click}></Button>
      </TouchableOpacity>
      <TouchableOpacity style={styles.middle} accessible={true}>
        <View>
          <Text style={styles.text1}>Touchable opacity </Text>
          <Text style={styles.text1}>accessible = true</Text>
          <Text style={styles.text1}>Despite accessible true on TO, testID ungroups all elements within and makes them automatable</Text>
        </View>
        <Text testID='text1' style={styles.text2} onPress={click}>Text with testID</Text>
        <Text style={styles.text2} onPress={click}>Text without testID</Text>
        <View testID='view1'>
          <Text style={styles.text2} onPress={click}>Text in a view with testID</Text>
          <Text style={styles.text2} onPress={click}>Second text in a view with testID</Text>
        </View>
        <Button testID='button1' accessible={true} title='Button with testID' onPress={click}></Button>
      </TouchableOpacity>
      
      <TouchableOpacity style={styles.bottom} accessible={false}>
      <View>
          <Text style={styles.text1}>Touchable opacity </Text>
          <Text style={styles.text1}>accessible = false</Text>
          <Text style={styles.text1}>Setting accessible false ungroups all elements contained by TO</Text>
        </View>
        <View >
          <Text style={styles.text2} onPress={click}>Text without accessible mentioned</Text>
        </View>
        <Button title='Button without accessible mentioned' onPress={click}></Button>
      </TouchableOpacity>
    </View>
  );
};
const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: "space-between",
    backgroundColor: "#fff",
    padding: 20,
    margin: 20,
  },
  top: {
    flex: 0.2,
    backgroundColor: "grey",
    borderWidth: 5,
    borderRadius: 20,
    justifyContent: "center",
    alignContent: "center"
  },
  middle: {
    flex: 0.4,
    backgroundColor: "beige",
    borderWidth: 5,
    justifyContent: "center",
    alignContent: "center"
  },
  bottom: {
    flex: 0.3,
    backgroundColor: "pink",
    borderWidth: 5,
    borderRadius: 20,
    justifyContent: "center",
    alignContent: "center"
  },
  text1: {
    alignContent: "center",
    textAlign: "center"
  },
  text2: {
    margin: 10,
    backgroundColor: "lightblue",
    padding: 1,
    borderWidth: 2,
  },
  button: {
    color: "white",
    backgroundColor: "pink"
  }
});
export default App;


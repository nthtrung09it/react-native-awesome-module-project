/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import React from 'react';
import {
  SafeAreaView,
  StatusBar,
  Text,
  useColorScheme,
  View,
} from 'react-native';

import {Colors} from 'react-native/Libraries/NewAppScreen';

import {AwesomeModuleView} from 'react-native-awesome-module';

const uiManager = global?.nativeFabricUIManager ? 'Fabric' : 'Paper';
console.log(`Using ${uiManager}`);

function App(): React.JSX.Element {
  const isDarkMode = useColorScheme() === 'dark';

  const backgroundStyle = {
    backgroundColor: 'blue',
  };

  return (
    <SafeAreaView style={{...backgroundStyle}}>
      <StatusBar
        barStyle={isDarkMode ? 'light-content' : 'dark-content'}
        backgroundColor={backgroundStyle.backgroundColor}
      />
      <View style={{flexDirection: 'column'}}>
        <View style={{height: 50, backgroundColor: 'white'}} />
        <AwesomeModuleView
          style={{
            width: '100%',
            borderWidth: 2,
            // height: 200,
            backgroundColor: 'yellow',
            borderBlockColor: 'green',
          }}
          vocabulary="abide by"
          type="(v.)"
          vocabularySize={22}
          typeSize={12}
          spacing={4}
          centerVocabularyText={false}
        />
        <View style={{borderWidth: 2, borderColor: 'red', height: 50}} />
      </View>
    </SafeAreaView>
  );
}

export default App;

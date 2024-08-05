import codegenNativeComponent from 'react-native/Libraries/Utilities/codegenNativeComponent';
import type {HostComponent, ViewProps} from 'react-native';
import {Int32} from 'react-native/Libraries/Types/CodegenTypes';

interface NativeProps extends ViewProps {
  vocabulary: string;
  vocabularySize: Int32;
  type: string;
  typeSize: Int32;
  spacing: Int32;
  centerVocabularyText: boolean;
}

export default codegenNativeComponent<NativeProps>(
  'AwesomeModuleView',
) as HostComponent<NativeProps>;

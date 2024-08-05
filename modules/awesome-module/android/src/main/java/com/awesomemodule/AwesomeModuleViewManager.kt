package com.awesomemodule

import android.graphics.Color
import com.facebook.react.module.annotations.ReactModule
import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.ThemedReactContext
import com.facebook.react.uimanager.ViewManagerDelegate
import com.facebook.react.uimanager.annotations.ReactProp
import com.facebook.react.viewmanagers.AwesomeModuleViewManagerInterface
import com.facebook.react.viewmanagers.AwesomeModuleViewManagerDelegate

@ReactModule(name = AwesomeModuleViewManager.NAME)
class AwesomeModuleViewManager : SimpleViewManager<AwesomeModuleView>(),
  AwesomeModuleViewManagerInterface<AwesomeModuleView> {
  private val mDelegate: ViewManagerDelegate<AwesomeModuleView>

  init {
    mDelegate = AwesomeModuleViewManagerDelegate(this)
  }

  override fun getDelegate(): ViewManagerDelegate<AwesomeModuleView>? {
    return mDelegate
  }

  override fun getName(): String {
    return NAME
  }

  public override fun createViewInstance(context: ThemedReactContext): AwesomeModuleView {
    return AwesomeModuleView(context)
  }

  @ReactProp(name = "color")
  override fun setColor(view: AwesomeModuleView?, color: String?) {
    view?.setBackgroundColor(Color.parseColor(color))
  }

  companion object {
    const val NAME = "AwesomeModuleView"
  }
}

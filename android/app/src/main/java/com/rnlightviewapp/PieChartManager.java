package com.rnlightviewapp;

import androidx.annotation.NonNull;

import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;

public class PieChartManager extends SimpleViewManager<PieChartView> {

  @ReactProp(name = "colorForeground")
  public void setColorForeground(PieChartView pieChartView, String colorCode) {
    pieChartView.setColorForeground(colorCode);
  }

  @ReactProp(name = "colorBackground")
  public void setColorBackground(PieChartView pieChartView, String colorCode) {
    pieChartView.setColorBackground(colorCode);
  }

  @NonNull
  @Override
  public String getName() {
    return "PieChart";
  }

  @NonNull
  @Override
  protected PieChartView createViewInstance(@NonNull ThemedReactContext reactContext) {
    return new PieChartView(reactContext);
  }
}

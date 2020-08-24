package com.rnlightviewapp;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.facebook.react.common.MapBuilder;
import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;

import java.util.Map;

public class BulbManager extends SimpleViewManager<BulbView> {

  @ReactProp(name="isOn")
  public void setBulbStatus(BulbView bulbView, Boolean isOn) {
    bulbView.setIsOn(isOn);
  }

  @Nullable
  @Override
  public Map getExportedCustomBubblingEventTypeConstants() {
    return MapBuilder.builder()
            .put(
                    "statusChange",
                    MapBuilder.of(
                            "phasedRegistrationNames",
                            MapBuilder.of("bubbled", "onStatusChange")))
            .build();
  }

  @NonNull
  @Override
  public String getName() {
    return "Bulb";
  }

  @NonNull
  @Override
  protected BulbView createViewInstance(@NonNull ThemedReactContext reactContext) {
    return new BulbView(reactContext);
  }

}

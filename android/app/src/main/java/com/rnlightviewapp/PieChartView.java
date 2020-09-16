package com.rnlightviewapp;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;

public class PieChartView extends View {

  public String colorForeground = "#00AEEF";
  public void setColorForeground(String colorCode) {
    this.colorForeground = colorCode;
  }

  public String colorBackground = "#CD5C5C";
  public void setColorBackground(String colorCode) {
    this.colorBackground = colorCode;
  }

  private Paint paintBackground;
  private Paint paintForeground;
  private RectF rect;

  public PieChartView(Context context) {
    super(context);

    rect = new RectF(0, 0, 100, 100);

    paintBackground = new Paint(Paint.ANTI_ALIAS_FLAG);
    paintBackground.setStyle(Paint.Style.FILL);

    paintForeground = new Paint(Paint.ANTI_ALIAS_FLAG);
    paintForeground.setStyle(Paint.Style.FILL_AND_STROKE);
//    paintForeground.setStrokeWidth(3);
  }

  public PieChartView(Context context, AttributeSet attrs) {
    super(context, attrs);
  }

  public PieChartView(Context context, AttributeSet attrs, int defStyle) {
    super(context, attrs, defStyle);
  }

  @Override
  protected void onDraw(Canvas canvas) {
    super.onDraw(canvas);

    int width = getWidth();
    int height = getHeight();
    int radius = width/2;

    paintBackground.setColor(Color.WHITE);
    canvas.drawPaint(paintBackground);

    paintBackground.setColor(Color.parseColor(colorBackground));
    canvas.drawCircle(width/2, height/2, radius, paintBackground);

    rect.set(0, 0, width, height);
    paintForeground.setColor(Color.parseColor(colorForeground));
    canvas.drawArc(rect, -90, -270, true, paintForeground);
  }
}

.class Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/parts/ColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorPickerView"
.end annotation


# static fields
.field private static final CENTER_RADIUS:I = 0x20

.field private static final CENTER_X:I = 0x64

.field private static final CENTER_Y:I = 0x64

.field private static final PI:F = 3.1415925f


# instance fields
.field private mCenterPaint:Landroid/graphics/Paint;

.field private final mColors:[I

.field private mHighlightCenter:Z

.field private mListener:Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mTrackingCenter:Z

.field final synthetic this$0:Lcom/lidroid/parts/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/lidroid/parts/ColorPickerDialog;Landroid/content/Context;Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;I)V
    .locals 5
    .parameter
    .parameter "c"
    .parameter "l"
    .parameter "color"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    iput-object p1, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->this$0:Lcom/lidroid/parts/ColorPickerDialog;

    .line 65
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 66
    iput-object p3, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mListener:Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;

    .line 67
    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mColors:[I

    .line 71
    new-instance v0, Landroid/graphics/SweepGradient;

    iget-object v1, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mColors:[I

    const/4 v2, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 73
    .local v0, s:Landroid/graphics/Shader;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    .line 74
    iget-object v1, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 75
    iget-object v1, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object v1, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4200

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    .line 79
    iget-object v1, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v1, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    return-void

    .line 67
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0xfft 0x0t 0xfft 0xfft
        0xfft 0x0t 0x0t 0xfft
        0xfft 0xfft 0x0t 0xfft
        0x0t 0xfft 0x0t 0xfft
        0x0t 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x80t 0x80t 0x80t 0xfft
        0x0t 0x0t 0x0t 0xfft
        0x0t 0x0t 0xfft 0xfft
    .end array-data
.end method

.method private ave(IIF)I
    .locals 1
    .parameter "s"
    .parameter "d"
    .parameter "p"

    .prologue
    .line 149
    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private floatToByte(F)I
    .locals 1
    .parameter "x"

    .prologue
    .line 123
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 124
    .local v0, n:I
    return v0
.end method

.method private interpColor([IF)I
    .locals 10
    .parameter "colors"
    .parameter "unit"

    .prologue
    .line 153
    const/4 v8, 0x0

    cmpg-float v8, p2, v8

    if-gtz v8, :cond_0

    .line 154
    const/4 v8, 0x0

    aget v8, p1, v8

    .line 172
    :goto_0
    return v8

    .line 156
    :cond_0
    const/high16 v8, 0x3f80

    cmpl-float v8, p2, v8

    if-ltz v8, :cond_1

    .line 157
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    aget v8, p1, v8

    goto :goto_0

    .line 160
    :cond_1
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    mul-float v6, p2, v8

    .line 161
    .local v6, p:F
    float-to-int v5, v6

    .line 162
    .local v5, i:I
    int-to-float v8, v5

    sub-float/2addr v6, v8

    .line 165
    aget v2, p1, v5

    .line 166
    .local v2, c0:I
    add-int/lit8 v8, v5, 0x1

    aget v3, p1, v8

    .line 167
    .local v3, c1:I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v0

    .line 168
    .local v0, a:I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v7

    .line 169
    .local v7, r:I
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v4

    .line 170
    .local v4, g:I
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v1

    .line 172
    .local v1, b:I
    invoke-static {v0, v7, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    goto :goto_0
.end method

.method private pinToByte(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 127
    if-gez p1, :cond_1

    .line 128
    const/4 p1, 0x0

    .line 132
    :cond_0
    :goto_0
    return p1

    .line 129
    :cond_1
    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    .line 130
    const/16 p1, 0xff

    goto :goto_0
.end method

.method private rotateColor(IF)I
    .locals 14
    .parameter "color"
    .parameter "rad"

    .prologue
    .line 176
    const/high16 v10, 0x4334

    mul-float v10, v10, p2

    const v11, 0x40490fdb

    div-float v3, v10, v11

    .line 177
    .local v3, deg:F
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 178
    .local v8, r:I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 179
    .local v4, g:I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 181
    .local v1, b:I
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 182
    .local v2, cm:Landroid/graphics/ColorMatrix;
    new-instance v9, Landroid/graphics/ColorMatrix;

    invoke-direct {v9}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 184
    .local v9, tmp:Landroid/graphics/ColorMatrix;
    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->setRGB2YUV()V

    .line 185
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v3}, Landroid/graphics/ColorMatrix;->setRotate(IF)V

    .line 186
    invoke-virtual {v2, v9}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 187
    invoke-virtual {v9}, Landroid/graphics/ColorMatrix;->setYUV2RGB()V

    .line 188
    invoke-virtual {v2, v9}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 190
    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    .line 192
    .local v0, a:[F
    const/4 v10, 0x0

    aget v10, v0, v10

    int-to-float v11, v8

    mul-float/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v0, v11

    int-to-float v12, v4

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/4 v11, 0x2

    aget v11, v0, v11

    int-to-float v12, v1

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-direct {p0, v10}, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->floatToByte(F)I

    move-result v7

    .line 193
    .local v7, ir:I
    const/4 v10, 0x5

    aget v10, v0, v10

    int-to-float v11, v8

    mul-float/2addr v10, v11

    const/4 v11, 0x6

    aget v11, v0, v11

    int-to-float v12, v4

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/4 v11, 0x7

    aget v11, v0, v11

    int-to-float v12, v1

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-direct {p0, v10}, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->floatToByte(F)I

    move-result v6

    .line 194
    .local v6, ig:I
    const/16 v10, 0xa

    aget v10, v0, v10

    int-to-float v11, v8

    mul-float/2addr v10, v11

    const/16 v11, 0xb

    aget v11, v0, v11

    int-to-float v12, v4

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/16 v11, 0xc

    aget v11, v0, v11

    int-to-float v12, v1

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-direct {p0, v10}, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->floatToByte(F)I

    move-result v5

    .line 196
    .local v5, ib:I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    invoke-direct {p0, v7}, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->pinToByte(I)I

    move-result v11

    invoke-direct {p0, v6}, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->pinToByte(I)I

    move-result v12

    invoke-direct {p0, v5}, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->pinToByte(I)I

    move-result v13

    invoke-static {v10, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    return v10
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/high16 v6, 0x4200

    const/high16 v4, 0x42c8

    const/4 v5, 0x0

    .line 88
    iget-object v2, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    sub-float v1, v4, v2

    .line 90
    .local v1, r:F
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 92
    new-instance v2, Landroid/graphics/RectF;

    neg-float v3, v1

    neg-float v4, v1

    invoke-direct {v2, v3, v4, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 93
    iget-object v2, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 95
    iget-boolean v2, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 97
    .local v0, c:I
    iget-object v2, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    iget-boolean v2, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    if-eqz v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 104
    :goto_0
    iget-object v2, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    add-float/2addr v2, v6

    iget-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 108
    iget-object v2, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    iget-object v2, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    .end local v0           #c:I
    :cond_0
    return-void

    .line 102
    .restart local v0       #c:I
    :cond_1
    iget-object v2, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/16 v0, 0xc8

    .line 115
    invoke-virtual {p0, v0, v0}, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->setMeasuredDimension(II)V

    .line 116
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/high16 v9, 0x42c8

    const/4 v6, 0x1

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float v4, v8, v9

    .line 205
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float v5, v8, v9

    .line 206
    .local v5, y:F
    mul-float v8, v4, v4

    mul-float v9, v5, v5

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4040

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_1

    move v2, v6

    .line 208
    .local v2, inCenter:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 246
    :cond_0
    :goto_1
    return v6

    .end local v2           #inCenter:Z
    :cond_1
    move v2, v7

    .line 206
    goto :goto_0

    .line 210
    .restart local v2       #inCenter:Z
    :pswitch_0
    iput-boolean v2, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    .line 211
    if-eqz v2, :cond_2

    .line 212
    iput-boolean v6, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    .line 213
    invoke-virtual {p0}, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_1

    .line 217
    :cond_2
    :pswitch_1
    iget-boolean v7, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    if-eqz v7, :cond_3

    .line 218
    iget-boolean v7, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    if-eq v7, v2, :cond_0

    .line 219
    iput-boolean v2, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    .line 220
    invoke-virtual {p0}, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_1

    .line 223
    :cond_3
    float-to-double v7, v5

    float-to-double v9, v4

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    double-to-float v0, v7

    .line 225
    .local v0, angle:F
    const v7, 0x40c90fda

    div-float v3, v0, v7

    .line 226
    .local v3, unit:F
    const/4 v7, 0x0

    cmpg-float v7, v3, v7

    if-gez v7, :cond_4

    .line 227
    const/high16 v7, 0x3f80

    add-float/2addr v3, v7

    .line 229
    :cond_4
    iget-object v7, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mColors:[I

    invoke-direct {p0, v7, v3}, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->interpColor([IF)I

    move-result v1

    .line 230
    .local v1, color:I
    iget-object v7, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    iget-object v7, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->this$0:Lcom/lidroid/parts/ColorPickerDialog;

    #getter for: Lcom/lidroid/parts/ColorPickerDialog;->mEditText:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/lidroid/parts/ColorPickerDialog;->access$100(Lcom/lidroid/parts/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v7

    iget-object v8, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->this$0:Lcom/lidroid/parts/ColorPickerDialog;

    #calls: Lcom/lidroid/parts/ColorPickerDialog;->convertToARGB(I)Ljava/lang/String;
    invoke-static {v8, v1}, Lcom/lidroid/parts/ColorPickerDialog;->access$000(Lcom/lidroid/parts/ColorPickerDialog;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v7, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mListener:Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;

    invoke-interface {v7, v1}, Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;->colorUpdate(I)V

    .line 233
    invoke-virtual {p0}, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_1

    .line 237
    .end local v0           #angle:F
    .end local v1           #color:I
    .end local v3           #unit:F
    :pswitch_2
    iget-boolean v8, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    if-eqz v8, :cond_0

    .line 238
    if-eqz v2, :cond_5

    .line 239
    iget-object v8, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mListener:Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;

    iget-object v9, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/lidroid/parts/ColorPickerDialog$OnColorChangedListener;->colorChanged(I)V

    .line 241
    :cond_5
    iput-boolean v7, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    .line 242
    invoke-virtual {p0}, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_1

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCenterColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    invoke-virtual {p0}, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->invalidate()V

    .line 138
    return-void
.end method

.method public setTransparency(I)V
    .locals 5
    .parameter "alpha"

    .prologue
    .line 141
    iget-object v2, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 142
    .local v0, color:I
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {p1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 143
    .local v1, newColor:I
    iget-object v2, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    iget-object v2, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->this$0:Lcom/lidroid/parts/ColorPickerDialog;

    #getter for: Lcom/lidroid/parts/ColorPickerDialog;->mEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/lidroid/parts/ColorPickerDialog;->access$100(Lcom/lidroid/parts/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->this$0:Lcom/lidroid/parts/ColorPickerDialog;

    #calls: Lcom/lidroid/parts/ColorPickerDialog;->convertToARGB(I)Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/lidroid/parts/ColorPickerDialog;->access$000(Lcom/lidroid/parts/ColorPickerDialog;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {p0}, Lcom/lidroid/parts/ColorPickerDialog$ColorPickerView;->invalidate()V

    .line 146
    return-void
.end method

.class Lcom/android/internal/widget/SlidingTab$Slider;
.super Ljava/lang/Object;
.source "SlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Slider"
.end annotation


# static fields
.field public static final ALIGN_BOTTOM:I = 0x3

.field public static final ALIGN_LEFT:I = 0x0

.field public static final ALIGN_RIGHT:I = 0x1

.field public static final ALIGN_TOP:I = 0x2

.field public static final ALIGN_UNKNOWN:I = 0x4

.field private static final STATE_ACTIVE:I = 0x2

.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_PRESSED:I = 0x1


# instance fields
.field private alignment:I

.field private alignment_value:I

.field private currentState:I

.field private final tab:Landroid/widget/ImageView;

.field private final target:Landroid/widget/ImageView;

.field private final text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;III)V
    .locals 5
    .parameter "parent"
    .parameter "tabId"
    .parameter "barId"
    .parameter "targetId"

    .prologue
    const/4 v4, 0x4

    const/4 v3, -0x2

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    .line 180
    iput v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    .line 193
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 194
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 195
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 196
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 201
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 204
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030093

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 208
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    .line 209
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 211
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 216
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 218
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getTabHeight()I
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getTabWidth()I
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method hide()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 237
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-ne v4, v7, :cond_1

    :cond_0
    move v2, v7

    .line 238
    .local v2, horiz:Z
    :goto_0
    if-eqz v2, :cond_3

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getRight()I

    move-result v5

    sub-int/2addr v4, v5

    move v0, v4

    .line 240
    .local v0, dx:I
    :goto_1
    if-eqz v2, :cond_4

    move v1, v6

    .line 243
    .local v1, dy:I
    :goto_2
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-direct {v3, v8, v4, v8, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 244
    .local v3, trans:Landroid/view/animation/Animation;
    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 245
    invoke-virtual {v3, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 246
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 247
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 248
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    return-void

    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v2           #horiz:Z
    .end local v3           #trans:Landroid/view/animation/Animation;
    :cond_1
    move v2, v6

    .line 237
    goto :goto_0

    .line 238
    .restart local v2       #horiz:Z
    :cond_2
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_1

    .line 240
    .restart local v0       #dx:I
    :cond_4
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move v1, v4

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    move v1, v4

    goto :goto_2
.end method

.method public hideTarget()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 436
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 437
    return-void
.end method

.method layout(IIIII)V
    .locals 26
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"
    .parameter "alignment"

    .prologue
    .line 337
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 339
    .local v14, tabBackground:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 340
    .local v7, handleWidth:I
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 341
    .local v6, handleHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 342
    .local v16, targetDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    .line 343
    .local v21, targetWidth:I
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    .line 344
    .local v17, targetHeight:I
    sub-int v11, p3, p1

    .line 345
    .local v11, parentWidth:I
    sub-int v10, p4, p2

    .line 347
    .local v10, parentHeight:I
    const v23, 0x3f2aaaab

    move v0, v11

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sub-int v23, v23, v21

    div-int/lit8 v24, v7, 0x2

    add-int v9, v23, v24

    .line 348
    .local v9, leftTarget:I
    const v23, 0x3eaaaaaa

    move v0, v11

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v24, v7, 0x2

    sub-int v13, v23, v24

    .line 349
    .local v13, rightTarget:I
    sub-int v23, v11, v7

    div-int/lit8 v8, v23, 0x2

    .line 350
    .local v8, left:I
    add-int v12, v8, v7

    .line 352
    .local v12, right:I
    if-eqz p5, :cond_0

    const/16 v23, 0x1

    move/from16 v0, p5

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 354
    :cond_0
    sub-int v23, v10, v17

    div-int/lit8 v20, v23, 0x2

    .line 355
    .local v20, targetTop:I
    add-int v15, v20, v17

    .line 356
    .local v15, targetBottom:I
    sub-int v23, v10, v6

    div-int/lit8 v22, v23, 0x2

    .line 357
    .local v22, top:I
    add-int v23, v10, v6

    div-int/lit8 v5, v23, 0x2

    .line 358
    .local v5, bottom:I
    if-nez p5, :cond_1

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    move v3, v7

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    sub-int v24, v24, v11

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    move/from16 v3, v25

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->setSingleLine()V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x5

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setGravity(I)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    add-int v24, v9, v21

    move-object/from16 v0, v23

    move v1, v9

    move/from16 v2, v20

    move/from16 v3, v24

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 364
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    .line 390
    .end local v15           #targetBottom:I
    .end local v20           #targetTop:I
    :goto_0
    return-void

    .line 366
    .restart local v15       #targetBottom:I
    .restart local v20       #targetTop:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    sub-int v24, v11, v7

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    move v3, v11

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v23, v0

    add-int v24, v11, v11

    move-object/from16 v0, v23

    move v1, v11

    move/from16 v2, v22

    move/from16 v3, v24

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    add-int v24, v13, v21

    move-object/from16 v0, v23

    move v1, v13

    move/from16 v2, v20

    move/from16 v3, v24

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x30

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setGravity(I)V

    .line 370
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    goto :goto_0

    .line 374
    .end local v5           #bottom:I
    .end local v15           #targetBottom:I
    .end local v20           #targetTop:I
    .end local v22           #top:I
    :cond_2
    sub-int v23, v11, v21

    div-int/lit8 v18, v23, 0x2

    .line 375
    .local v18, targetLeft:I
    add-int v23, v11, v21

    div-int/lit8 v19, v23, 0x2

    .line 376
    .local v19, targetRight:I
    const v23, 0x3f2aaaab

    move v0, v10

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v24, v6, 0x2

    add-int v23, v23, v24

    sub-int v22, v23, v17

    .line 377
    .restart local v22       #top:I
    const v23, 0x3eaaaaaa

    move v0, v10

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v24, v6, 0x2

    sub-int v5, v23, v24

    .line 378
    .restart local v5       #bottom:I
    const/16 v23, 0x2

    move/from16 v0, p5

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move v1, v8

    move/from16 v2, v24

    move v3, v12

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    sub-int v24, v24, v10

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move v1, v8

    move/from16 v2, v24

    move v3, v12

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    add-int v24, v22, v17

    move-object/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v22

    move/from16 v3, v19

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 382
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    goto/16 :goto_0

    .line 384
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    sub-int v24, v10, v6

    move-object/from16 v0, v23

    move v1, v8

    move/from16 v2, v24

    move v3, v12

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v23, v0

    add-int v24, v10, v10

    move-object/from16 v0, v23

    move v1, v8

    move v2, v10

    move v3, v12

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    add-int v24, v5, v17

    move-object/from16 v0, v23

    move/from16 v1, v18

    move v2, v5

    move/from16 v3, v19

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 387
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    goto/16 :goto_0
.end method

.method public measure()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 400
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->measure(II)V

    .line 402
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 404
    return-void
.end method

.method reset(Z)V
    .locals 10
    .parameter "animate"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 293
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    .line 294
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1030093

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 296
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-ne v4, v9, :cond_1

    :cond_0
    move v2, v9

    .line 299
    .local v2, horiz:Z
    :goto_0
    if-eqz v2, :cond_3

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    move v0, v4

    .line 301
    .local v0, dx:I
    :goto_1
    if-eqz v2, :cond_4

    move v1, v7

    .line 303
    .local v1, dy:I
    :goto_2
    if-eqz p1, :cond_6

    .line 304
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-direct {v3, v8, v4, v8, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 305
    .local v3, trans:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 306
    invoke-virtual {v3, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 307
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 308
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 321
    .end local v3           #trans:Landroid/view/animation/TranslateAnimation;
    :goto_3
    return-void

    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v2           #horiz:Z
    :cond_1
    move v2, v7

    .line 298
    goto :goto_0

    .line 299
    .restart local v2       #horiz:Z
    :cond_2
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getRight()I

    move-result v5

    sub-int/2addr v4, v5

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v7

    goto :goto_1

    .line 301
    .restart local v0       #dx:I
    :cond_4
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    move v1, v4

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v5, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move v1, v4

    goto :goto_2

    .line 310
    .restart local v1       #dy:I
    :cond_6
    if-eqz v2, :cond_7

    .line 311
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->offsetLeftAndRight(I)V

    .line 312
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 317
    :goto_4
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->clearAnimation()V

    .line 318
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 319
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_3

    .line 314
    :cond_7
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->offsetTopAndBottom(I)V

    .line 315
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    goto :goto_4
.end method

.method setBarBackgroundResource(I)V
    .locals 1
    .parameter "barId"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 230
    return-void
.end method

.method setHintText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 234
    return-void
.end method

.method setIcon(I)V
    .locals 1
    .parameter "iconId"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    return-void
.end method

.method setState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 268
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    if-ne p1, v3, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPressed(Z)V

    .line 269
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    if-ne p1, v3, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 270
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 271
    new-array v0, v3, [I

    const v1, 0x10100a2

    aput v1, v0, v4

    .line 272
    .local v0, activeState:[I
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1030094

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 282
    .end local v0           #activeState:[I
    :goto_2
    iput p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    .line 283
    return-void

    :cond_2
    move v2, v4

    .line 268
    goto :goto_0

    :cond_3
    move v2, v4

    .line 269
    goto :goto_1

    .line 280
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1030093

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method setTabBackgroundResource(I)V
    .locals 1
    .parameter "tabId"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 226
    return-void
.end method

.method setTarget(I)V
    .locals 1
    .parameter "targetId"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 325
    return-void
.end method

.method show(Z)V
    .locals 8
    .parameter "animate"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 252
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    if-eqz p1, :cond_1

    .line 256
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-ne v4, v7, :cond_2

    :cond_0
    move v2, v7

    .line 257
    .local v2, horiz:Z
    :goto_0
    if-eqz v2, :cond_4

    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    move v0, v4

    .line 258
    .local v0, dx:I
    :goto_1
    if-eqz v2, :cond_5

    move v1, v5

    .line 260
    .local v1, dy:I
    :goto_2
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    neg-int v4, v0

    int-to-float v4, v4

    neg-int v5, v1

    int-to-float v5, v5

    invoke-direct {v3, v4, v6, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 261
    .local v3, trans:Landroid/view/animation/Animation;
    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 262
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 263
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 265
    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v2           #horiz:Z
    .end local v3           #trans:Landroid/view/animation/Animation;
    :cond_1
    return-void

    :cond_2
    move v2, v5

    .line 256
    goto :goto_0

    .line 257
    .restart local v2       #horiz:Z
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    neg-int v4, v4

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v5

    goto :goto_1

    .line 258
    .restart local v0       #dx:I
    :cond_5
    iget v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    move v1, v4

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    neg-int v4, v4

    move v1, v4

    goto :goto_2
.end method

.method showTarget()V
    .locals 3

    .prologue
    .line 286
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 287
    .local v0, alphaAnim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 288
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 289
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "anim1"
    .parameter "anim2"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 431
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 432
    return-void
.end method

.method public updateDrawableStates()V
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    .line 394
    return-void
.end method

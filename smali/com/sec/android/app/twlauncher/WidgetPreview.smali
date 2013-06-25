.class public Lcom/sec/android/app/twlauncher/WidgetPreview;
.super Landroid/widget/FrameLayout;
.source "WidgetPreview.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/WidgetPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/WidgetPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->init()V

    .line 25
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getChildCount()I

    move-result v5

    .line 39
    .local v5, count:I
    if-lez v5, :cond_0

    .line 40
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 42
    .local v4, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 44
    .local v1, childHeight:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v6, v4

    div-int/lit8 v2, v6, 0x2

    .line 45
    .local v2, childLeft:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v1

    div-int/lit8 v3, v6, 0x2

    .line 47
    .local v3, childTop:I
    add-int v6, v2, v4

    add-int v7, v3, v1

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 49
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeight:I
    .end local v2           #childLeft:I
    .end local v3           #childTop:I
    .end local v4           #childWidth:I
    :cond_0
    return-void
.end method

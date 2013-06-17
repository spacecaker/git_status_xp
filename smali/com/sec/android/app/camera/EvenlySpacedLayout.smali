.class public Lcom/sec/android/app/camera/EvenlySpacedLayout;
.super Landroid/view/ViewGroup;
.source "EvenlySpacedLayout.java"


# instance fields
.field private mHorizontal:Z

.field private mKeepEndSpace:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    sget-object v1, Lcom/sec/android/app/camera/R$styleable;->EvenlySpacedLayout:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mHorizontal:Z

    .line 42
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mKeepEndSpace:Z

    .line 44
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    return-void

    :cond_0
    move v1, v2

    .line 40
    goto :goto_0
.end method

.method private layoutHorizontal(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildCount()I

    move-result v1

    .line 71
    .local v1, count:I
    const/4 v8, 0x0

    .line 72
    .local v8, usedWidth:I
    const/4 v7, 0x0

    .line 73
    .local v7, usedChildren:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 74
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_0

    .line 73
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v8, v10

    .line 77
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 79
    .end local v0           #child:Landroid/view/View;
    :cond_1
    sub-int v10, p4, p2

    sub-int/2addr v10, v8

    iget-boolean v11, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mKeepEndSpace:Z

    if-eqz v11, :cond_3

    add-int/lit8 v11, v7, 0x1

    :goto_2
    div-int v5, v10, v11

    .line 81
    .local v5, spacing:I
    if-gez v5, :cond_2

    .line 82
    const/4 v5, 0x0

    .line 83
    :cond_2
    iget-boolean v10, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mKeepEndSpace:Z

    if-eqz v10, :cond_4

    move v4, v5

    .line 84
    .local v4, left:I
    :goto_3
    const/4 v6, 0x0

    .line 85
    .local v6, top:I
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_6

    .line 86
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 87
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_5

    .line 85
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 79
    .end local v0           #child:Landroid/view/View;
    .end local v4           #left:I
    .end local v5           #spacing:I
    .end local v6           #top:I
    :cond_3
    const/4 v11, 0x1

    sub-int v11, v7, v11

    goto :goto_2

    .line 83
    .restart local v5       #spacing:I
    :cond_4
    const/4 v10, 0x0

    move v4, v10

    goto :goto_3

    .line 88
    .restart local v0       #child:Landroid/view/View;
    .restart local v4       #left:I
    .restart local v6       #top:I
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 89
    .local v9, w:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 90
    .local v2, h:I
    div-int/2addr v9, v7

    .line 91
    add-int v10, v4, v9

    add-int v11, v6, v2

    invoke-virtual {v0, v4, v6, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 92
    add-int/2addr v4, v9

    .line 93
    add-int/2addr v4, v5

    goto :goto_5

    .line 95
    .end local v0           #child:Landroid/view/View;
    .end local v2           #h:I
    .end local v9           #w:I
    :cond_6
    return-void
.end method

.method private layoutVertical(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildCount()I

    move-result v1

    .line 100
    .local v1, count:I
    const/4 v8, 0x0

    .line 101
    .local v8, usedHeight:I
    const/4 v7, 0x0

    .line 102
    .local v7, usedChildren:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 103
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_0

    .line 102
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v8, v10

    .line 106
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 109
    .end local v0           #child:Landroid/view/View;
    :cond_1
    sub-int v10, p5, p3

    sub-int/2addr v10, v8

    iget-boolean v11, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mKeepEndSpace:Z

    if-eqz v11, :cond_2

    add-int/lit8 v11, v7, 0x1

    :goto_2
    div-int v5, v10, v11

    .line 111
    .local v5, spacing:I
    iget-boolean v10, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mKeepEndSpace:Z

    if-eqz v10, :cond_3

    move v6, v5

    .line 112
    .local v6, top:I
    :goto_3
    const/4 v4, 0x0

    .line 113
    .local v4, left:I
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_5

    .line 114
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 115
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_4

    .line 113
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 109
    .end local v0           #child:Landroid/view/View;
    .end local v4           #left:I
    .end local v5           #spacing:I
    .end local v6           #top:I
    :cond_2
    const/4 v11, 0x1

    sub-int v11, v7, v11

    goto :goto_2

    .line 111
    .restart local v5       #spacing:I
    :cond_3
    const/4 v10, 0x0

    move v6, v10

    goto :goto_3

    .line 116
    .restart local v0       #child:Landroid/view/View;
    .restart local v4       #left:I
    .restart local v6       #top:I
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 117
    .local v9, w:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 118
    .local v2, h:I
    add-int v10, v4, v9

    add-int v11, v6, v2

    invoke-virtual {v0, v4, v6, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 119
    add-int/2addr v6, v2

    .line 120
    add-int/2addr v6, v5

    goto :goto_5

    .line 122
    .end local v0           #child:Landroid/view/View;
    .end local v2           #h:I
    .end local v9           #w:I
    :cond_5
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mHorizontal:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->layoutHorizontal(ZIIII)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->layoutVertical(ZIIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildCount()I

    move-result v1

    .line 50
    .local v1, count:I
    const/4 v4, 0x0

    .line 51
    .local v4, width:I
    const/4 v2, 0x0

    .line 52
    .local v2, height:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 53
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 52
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->measureChild(Landroid/view/View;II)V

    .line 56
    iget-boolean v5, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mHorizontal:Z

    if-eqz v5, :cond_1

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v2, v5

    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_1

    .line 64
    .end local v0           #child:Landroid/view/View;
    :cond_2
    invoke-static {v4, p1}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->resolveSize(II)I

    move-result v5

    invoke-static {v2, p2}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->resolveSize(II)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->setMeasuredDimension(II)V

    .line 66
    return-void
.end method

.class public Lcom/sec/android/app/camera/EvenlySpacedLayout;
.super Landroid/view/ViewGroup;
.source "EvenlySpacedLayout.java"


# instance fields
.field private mExtendHeight:I

.field private mExtendWidth:I

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

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    sget-object v1, Lcom/sec/android/app/camera/R$styleable;->EvenlySpacedLayout:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mHorizontal:Z

    .line 44
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mKeepEndSpace:Z

    .line 46
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mExtendWidth:I

    .line 48
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mExtendHeight:I

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void

    :cond_0
    move v1, v2

    .line 42
    goto :goto_0
.end method

.method private layoutHorizontal(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildCount()I

    move-result v1

    .line 77
    .local v1, count:I
    const/4 v10, 0x0

    .line 78
    .local v10, usedWidth:I
    const/4 v9, 0x0

    .line 79
    .local v9, usedChildren:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 80
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_0

    .line 79
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v10, v12

    .line 83
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 85
    .end local v0           #child:Landroid/view/View;
    :cond_1
    sub-int v12, p4, p2

    sub-int/2addr v12, v10

    iget-boolean v13, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mKeepEndSpace:Z

    if-eqz v13, :cond_3

    add-int/lit8 v13, v9, 0x1

    :goto_2
    div-int v7, v12, v13

    .line 87
    .local v7, spacing:I
    if-gez v7, :cond_2

    .line 88
    const/4 v7, 0x0

    .line 89
    :cond_2
    iget-boolean v12, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mKeepEndSpace:Z

    if-eqz v12, :cond_4

    move v6, v7

    .line 90
    .local v6, left:I
    :goto_3
    const/4 v8, 0x0

    .line 91
    .local v8, top:I
    iget v3, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mExtendWidth:I

    .line 92
    .local v3, extendWidth:I
    iget v2, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mExtendHeight:I

    .line 93
    .local v2, extendHeight:I
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v1, :cond_6

    .line 94
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 95
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_5

    .line 93
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 85
    .end local v0           #child:Landroid/view/View;
    .end local v2           #extendHeight:I
    .end local v3           #extendWidth:I
    .end local v6           #left:I
    .end local v7           #spacing:I
    .end local v8           #top:I
    :cond_3
    const/4 v13, 0x1

    sub-int v13, v9, v13

    goto :goto_2

    .line 89
    .restart local v7       #spacing:I
    :cond_4
    const/4 v12, 0x0

    move v6, v12

    goto :goto_3

    .line 96
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #extendHeight:I
    .restart local v3       #extendWidth:I
    .restart local v6       #left:I
    .restart local v8       #top:I
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 97
    .local v11, w:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 98
    .local v4, h:I
    div-int/2addr v11, v9

    .line 99
    add-int v12, v6, v11

    add-int/2addr v12, v3

    add-int v13, v8, v4

    add-int/2addr v13, v2

    invoke-virtual {v0, v6, v8, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 100
    add-int/2addr v6, v11

    .line 101
    add-int/2addr v6, v7

    goto :goto_5

    .line 103
    .end local v0           #child:Landroid/view/View;
    .end local v4           #h:I
    .end local v11           #w:I
    :cond_6
    return-void
.end method

.method private layoutVertical(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildCount()I

    move-result v1

    .line 108
    .local v1, count:I
    const/4 v10, 0x0

    .line 109
    .local v10, usedHeight:I
    const/4 v9, 0x0

    .line 110
    .local v9, usedChildren:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 111
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_0

    .line 110
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v10, v12

    .line 114
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 117
    .end local v0           #child:Landroid/view/View;
    :cond_1
    sub-int v12, p5, p3

    sub-int/2addr v12, v10

    iget-boolean v13, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mKeepEndSpace:Z

    if-eqz v13, :cond_2

    add-int/lit8 v13, v9, 0x1

    :goto_2
    div-int v7, v12, v13

    .line 119
    .local v7, spacing:I
    iget-boolean v12, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mKeepEndSpace:Z

    if-eqz v12, :cond_3

    move v8, v7

    .line 120
    .local v8, top:I
    :goto_3
    const/4 v6, 0x0

    .line 121
    .local v6, left:I
    iget v3, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mExtendWidth:I

    .line 122
    .local v3, extendWidth:I
    iget v2, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mExtendHeight:I

    .line 123
    .local v2, extendHeight:I
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v1, :cond_5

    .line 124
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 125
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_4

    .line 123
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 117
    .end local v0           #child:Landroid/view/View;
    .end local v2           #extendHeight:I
    .end local v3           #extendWidth:I
    .end local v6           #left:I
    .end local v7           #spacing:I
    .end local v8           #top:I
    :cond_2
    const/4 v13, 0x1

    sub-int v13, v9, v13

    goto :goto_2

    .line 119
    .restart local v7       #spacing:I
    :cond_3
    const/4 v12, 0x0

    move v8, v12

    goto :goto_3

    .line 126
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #extendHeight:I
    .restart local v3       #extendWidth:I
    .restart local v6       #left:I
    .restart local v8       #top:I
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 127
    .local v11, w:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 128
    .local v4, h:I
    add-int v12, v6, v11

    add-int/2addr v12, v3

    add-int v13, v8, v4

    add-int/2addr v13, v2

    invoke-virtual {v0, v6, v8, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 129
    add-int/2addr v8, v4

    .line 130
    add-int/2addr v8, v7

    goto :goto_5

    .line 132
    .end local v0           #child:Landroid/view/View;
    .end local v4           #h:I
    .end local v11           #w:I
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
    .line 136
    iget-boolean v0, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mHorizontal:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->layoutHorizontal(ZIIII)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->layoutVertical(ZIIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildCount()I

    move-result v1

    .line 56
    .local v1, count:I
    const/4 v4, 0x0

    .line 57
    .local v4, width:I
    const/4 v2, 0x0

    .line 58
    .local v2, height:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 59
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 58
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->measureChild(Landroid/view/View;II)V

    .line 62
    iget-boolean v5, p0, Lcom/sec/android/app/camera/EvenlySpacedLayout;->mHorizontal:Z

    if-eqz v5, :cond_1

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v2, v5

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_1

    .line 70
    .end local v0           #child:Landroid/view/View;
    :cond_2
    invoke-static {v4, p1}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->resolveSize(II)I

    move-result v5

    invoke-static {v2, p2}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->resolveSize(II)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/EvenlySpacedLayout;->setMeasuredDimension(II)V

    .line 72
    return-void
.end method

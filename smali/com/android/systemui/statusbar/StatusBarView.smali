.class public Lcom/android/systemui/statusbar/StatusBarView;
.super Landroid/widget/FrameLayout;
.source "StatusBarView.java"


# static fields
.field static final DIM_ANIM_TIME:I = 0x190

.field private static final TAG:Ljava/lang/String; = "StatusBarView"


# instance fields
.field mBackground:Lcom/android/systemui/statusbar/FixedSizeDrawable;

.field mDate:Landroid/view/View;

.field mNotificationIcons:Landroid/view/ViewGroup;

.field mService:Lcom/android/systemui/statusbar/StatusBarService;

.field mStartX:I

.field mStartY:I

.field mStatusIcons:Landroid/view/ViewGroup;

.field mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method private getDateSize(Landroid/view/ViewGroup;II)I
    .locals 6
    .parameter "g"
    .parameter "w"
    .parameter "offset"

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 123
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 131
    const/4 v3, -0x1

    :cond_0
    return v3

    .line 124
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 125
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int v2, v5, p3

    .line 126
    .local v2, l:I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v3, v5, p3

    .line 127
    .local v3, r:I
    if-lt p2, v2, :cond_2

    if-le p2, v3, :cond_0

    .line 123
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getViewOffset(Landroid/view/View;)I
    .locals 5
    .parameter "v"

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, offset:I
    :goto_0
    if-ne p1, p0, :cond_0

    .line 118
    return v0

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v0, v2

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 112
    .local v1, p:Landroid/view/ViewParent;
    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_1

    move-object p1, v1

    .line 113
    check-cast p1, Landroid/view/View;

    .line 114
    goto :goto_0

    .line 115
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a child of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->onBarViewAttached()V

    .line 65
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 52
    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    .line 53
    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    .line 54
    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/FixedSizeDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/FixedSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackground:Lcom/android/systemui/statusbar/FixedSizeDrawable;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackground:Lcom/android/systemui/statusbar/FixedSizeDrawable;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/android/systemui/statusbar/FixedSizeDrawable;->setFixedBounds(IIII)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackground:Lcom/android/systemui/statusbar/FixedSizeDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    .line 150
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 75
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 78
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 81
    .local v3, oldDateRight:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    .line 82
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/StatusBarView;->getViewOffset(Landroid/view/View;)I

    move-result v5

    .line 81
    invoke-direct {p0, v4, v3, v5}, Lcom/android/systemui/statusbar/StatusBarView;->getDateSize(Landroid/view/ViewGroup;II)I

    move-result v1

    .line 83
    .local v1, newDateRight:I
    if-gez v1, :cond_0

    .line 84
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/StatusBarView;->getViewOffset(Landroid/view/View;)I

    move-result v2

    .line 85
    .local v2, offset:I
    if-ge v3, v2, :cond_2

    .line 86
    move v1, v3

    .line 94
    .end local v2           #offset:I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarView;->getPaddingRight()I

    move-result v4

    sub-int v0, p4, v4

    .line 95
    .local v0, max:I
    if-le v1, v0, :cond_1

    .line 96
    move v1, v0

    .line 99
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/view/View;->layout(IIII)V

    .line 100
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBackground:Lcom/android/systemui/statusbar/FixedSizeDrawable;

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    neg-int v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    neg-int v6, v6

    sub-int v7, p4, p2

    sub-int v8, p5, p3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/systemui/statusbar/FixedSizeDrawable;->setFixedBounds(IIII)V

    .line 101
    return-void

    .line 88
    .end local v0           #max:I
    .restart local v2       #offset:I
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v4, v3, v2}, Lcom/android/systemui/statusbar/StatusBarView;->getDateSize(Landroid/view/ViewGroup;II)I

    move-result v1

    .line 89
    if-gez v1, :cond_0

    .line 90
    move v1, p4

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 71
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 144
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

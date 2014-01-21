.class public Lcom/android/systemui/statusbar/LatestItemContainer;
.super Landroid/widget/LinearLayout;
.source "LatestItemContainer.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "NotificationContainer"


# instance fields
.field private mDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

.field private mEventsControlledByDispatcher:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mStartPoint:Landroid/graphics/Point;

.field private mSwipeCallback:Ljava/lang/Runnable;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mEventsControlledByDispatcher:Z

    .line 38
    iput-object v2, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    .line 39
    iput-object v2, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mSwipeCallback:Ljava/lang/Runnable;

    .line 40
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mStartPoint:Landroid/graphics/Point;

    .line 46
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 47
    .local v0, vc:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mTouchSlop:I

    .line 48
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/LatestItemContainer;->scrollTo(II)V

    .line 136
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 72
    const/4 v2, 0x0

    .line 74
    .local v2, handled:Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    if-eqz v3, :cond_1

    .line 79
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mEventsControlledByDispatcher:Z

    if-nez v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 84
    :cond_0
    const-string v3, "NotificationContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got touch event "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dispatcher handled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 85
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " controlled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mEventsControlledByDispatcher:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    .line 127
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    const/4 v2, 0x1

    .line 131
    :cond_2
    return v2

    .line 90
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mStartPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 91
    const/4 v2, 0x1

    .line 92
    goto :goto_0

    .line 94
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mStartPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int v0, v3, v4

    .line 95
    .local v0, diffX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mStartPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int v1, v3, v4

    .line 96
    .local v1, diffY:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mTouchSlop:I

    if-le v3, v4, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v3, v4, :cond_3

    .line 97
    iget-object v3, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->setItem(Lcom/android/systemui/statusbar/LatestItemContainer;)V

    .line 99
    :cond_3
    neg-int v3, v0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/LatestItemContainer;->scrollTo(II)V

    .line 100
    const/4 v2, 0x1

    .line 101
    goto :goto_0

    .line 103
    .end local v0           #diffX:I
    .end local v1           #diffY:I
    :pswitch_2
    if-nez v2, :cond_4

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/LatestItemContainer;->reset()V

    .line 106
    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mEventsControlledByDispatcher:Z

    if-nez v3, :cond_5

    .line 107
    iget-object v3, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->releaseItem(Lcom/android/systemui/statusbar/LatestItemContainer;)V

    .line 109
    :cond_5
    const/4 v2, 0x1

    .line 110
    goto :goto_0

    .line 118
    :pswitch_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mEventsControlledByDispatcher:Z

    if-nez v3, :cond_6

    .line 119
    iget-object v3, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->releaseItem(Lcom/android/systemui/statusbar/LatestItemContainer;)V

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/LatestItemContainer;->reset()V

    .line 122
    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public finishSwipe(Z)V
    .locals 6
    .parameter "toRight"

    .prologue
    .line 51
    if-eqz p1, :cond_0

    const v1, 0x7f040001

    .line 52
    .local v1, id:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LatestItemContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 54
    .local v0, animation:Landroid/view/animation/Animation;
    const-string v3, "NotificationContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Finishing swipe of item "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_1

    const-string v2, "right"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/LatestItemContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 56
    iget-object v2, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mSwipeCallback:Ljava/lang/Runnable;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mEventsControlledByDispatcher:Z

    .line 58
    return-void

    .line 51
    .end local v0           #animation:Landroid/view/animation/Animation;
    .end local v1           #id:I
    :cond_0
    const/high16 v1, 0x7f04

    goto :goto_0

    .line 54
    .restart local v0       #animation:Landroid/view/animation/Animation;
    .restart local v1       #id:I
    :cond_1
    const-string v2, "left"

    goto :goto_1
.end method

.method public setEventsControlledByDispatcher()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mEventsControlledByDispatcher:Z

    .line 68
    return-void
.end method

.method public setOnSwipeCallback(Lcom/android/systemui/statusbar/ItemTouchDispatcher;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "dispatcher"
    .parameter "callback"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mDispatcher:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    .line 140
    iput-object p2, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mSwipeCallback:Ljava/lang/Runnable;

    .line 141
    return-void
.end method

.method public stopSwipe()V
    .locals 3

    .prologue
    .line 61
    const-string v0, "NotificationContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Swipe of item "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cancelled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/LatestItemContainer;->reset()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/LatestItemContainer;->mEventsControlledByDispatcher:Z

    .line 64
    return-void
.end method

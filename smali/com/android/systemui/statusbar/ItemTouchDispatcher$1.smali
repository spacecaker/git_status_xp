.class Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ItemTouchDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ItemTouchDispatcher;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ItemTouchDispatcher;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;->this$0:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    iput-object p2, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;->val$context:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "vX"
    .parameter "vY"

    .prologue
    .line 38
    iget-object v4, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;->val$context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 39
    .local v3, vc:Landroid/view/ViewConfiguration;
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 40
    .local v1, minDistance:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v0, v4

    .line 41
    .local v0, distance:I
    const/4 v2, 0x0

    .line 44
    .local v2, result:Z
    const-string v4, "NotificationTouchDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Fling detected, distance "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " vs. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 45
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " vX "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " vY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v4, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;->this$0:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    #getter for: Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItem:Lcom/android/systemui/statusbar/LatestItemContainer;
    invoke-static {v4}, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->access$0(Lcom/android/systemui/statusbar/ItemTouchDispatcher;)Lcom/android/systemui/statusbar/LatestItemContainer;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 49
    if-le v0, v1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 50
    iget-object v4, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;->this$0:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    #getter for: Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItem:Lcom/android/systemui/statusbar/LatestItemContainer;
    invoke-static {v4}, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->access$0(Lcom/android/systemui/statusbar/ItemTouchDispatcher;)Lcom/android/systemui/statusbar/LatestItemContainer;

    move-result-object v5

    const/4 v4, 0x0

    cmpl-float v4, p3, v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/LatestItemContainer;->finishSwipe(Z)V

    .line 51
    const/4 v2, 0x1

    .line 55
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;->this$0:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    const/4 v5, 0x0

    #setter for: Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItem:Lcom/android/systemui/statusbar/LatestItemContainer;
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->access$1(Lcom/android/systemui/statusbar/ItemTouchDispatcher;Lcom/android/systemui/statusbar/LatestItemContainer;)V

    .line 58
    :cond_0
    return v2

    .line 50
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 53
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/ItemTouchDispatcher$1;->this$0:Lcom/android/systemui/statusbar/ItemTouchDispatcher;

    #getter for: Lcom/android/systemui/statusbar/ItemTouchDispatcher;->mItem:Lcom/android/systemui/statusbar/LatestItemContainer;
    invoke-static {v4}, Lcom/android/systemui/statusbar/ItemTouchDispatcher;->access$0(Lcom/android/systemui/statusbar/ItemTouchDispatcher;)Lcom/android/systemui/statusbar/LatestItemContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/LatestItemContainer;->stopSwipe()V

    goto :goto_1
.end method

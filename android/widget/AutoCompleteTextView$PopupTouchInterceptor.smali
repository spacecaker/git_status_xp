.class Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AutoCompleteTextView;


# direct methods
.method private constructor <init>(Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 1463
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1463
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;-><init>(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const-wide/16 v6, 0xfa

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1465
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1466
    .local v0, action:I
    if-nez v0, :cond_2

    iget-object v3, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v3}, Landroid/widget/AutoCompleteTextView;->access$1200(Landroid/widget/AutoCompleteTextView;)Landroid/widget/PopupWindow;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v3}, Landroid/widget/AutoCompleteTextView;->access$1200(Landroid/widget/AutoCompleteTextView;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1468
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1469
    .local v1, currentTick:J
    iget-object v3, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    #setter for: Landroid/widget/AutoCompleteTextView;->mIsTouchDown:Z
    invoke-static {v3, v4}, Landroid/widget/AutoCompleteTextView;->access$1302(Landroid/widget/AutoCompleteTextView;Z)Z

    .line 1470
    iget-object v3, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mlastClickTime:J
    invoke-static {v3}, Landroid/widget/AutoCompleteTextView;->access$1400(Landroid/widget/AutoCompleteTextView;)J

    move-result-wide v3

    add-long/2addr v3, v6

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 1471
    iget-object v3, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mResizePopupRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Landroid/widget/AutoCompleteTextView;->access$1500(Landroid/widget/AutoCompleteTextView;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/AutoCompleteTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1480
    .end local v1           #currentTick:J
    :cond_0
    :goto_0
    return v5

    .line 1474
    .restart local v1       #currentTick:J
    :cond_1
    const-string v3, "AutoCompleteTextView"

    const-string/jumbo v4, "onTouch:ACTION_DOWN event ignored "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1476
    .end local v1           #currentTick:J
    :cond_2
    if-ne v0, v4, :cond_0

    .line 1477
    iget-object v3, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    #setter for: Landroid/widget/AutoCompleteTextView;->mIsTouchDown:Z
    invoke-static {v3, v5}, Landroid/widget/AutoCompleteTextView;->access$1302(Landroid/widget/AutoCompleteTextView;Z)Z

    .line 1478
    iget-object v3, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mResizePopupRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Landroid/widget/AutoCompleteTextView;->access$1500(Landroid/widget/AutoCompleteTextView;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

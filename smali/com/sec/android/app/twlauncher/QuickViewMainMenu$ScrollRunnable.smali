.class Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;
.super Ljava/lang/Object;
.source "QuickViewMainMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/QuickViewMainMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 1307
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1308
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1311
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    #getter for: Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->access$300(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    #getter for: Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->access$000(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    #getter for: Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->access$100(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getHeight()I

    move-result v4

    neg-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    #getter for: Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I
    invoke-static {v5}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->access$200(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I

    move-result v8

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1317
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    #setter for: Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I
    invoke-static {v0, v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->access$602(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;I)I

    .line 1318
    return-void

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    #getter for: Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->access$300(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    #getter for: Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->access$400(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    #getter for: Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->access$500(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    #getter for: Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I
    invoke-static {v5}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->access$200(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I

    move-result v8

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 1321
    iput p1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->mDirection:I

    .line 1322
    return-void
.end method

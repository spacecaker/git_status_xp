.class Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/DragLayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/DragLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 705
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/DragLayer;

    #getter for: Lcom/sec/android/app/twlauncher/DragLayer;->mDragScroller:Lcom/sec/android/app/twlauncher/DragScroller;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->access$000(Lcom/sec/android/app/twlauncher/DragLayer;)Lcom/sec/android/app/twlauncher/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/DragLayer;

    #getter for: Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->access$100(Lcom/sec/android/app/twlauncher/DragLayer;)Lcom/sec/android/app/twlauncher/DragController$DragListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 710
    iget v0, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_1

    .line 711
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/DragLayer;

    #getter for: Lcom/sec/android/app/twlauncher/DragLayer;->mDragMenuScroller:Lcom/sec/android/app/twlauncher/DragScroller;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->access$200(Lcom/sec/android/app/twlauncher/DragLayer;)Lcom/sec/android/app/twlauncher/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragScroller;->scrollLeft()V

    .line 722
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/DragLayer;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/twlauncher/DragLayer;->mScrollState:I
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->access$302(Lcom/sec/android/app/twlauncher/DragLayer;I)I

    .line 724
    :cond_0
    return-void

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/DragLayer;

    #getter for: Lcom/sec/android/app/twlauncher/DragLayer;->mDragMenuScroller:Lcom/sec/android/app/twlauncher/DragScroller;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->access$200(Lcom/sec/android/app/twlauncher/DragLayer;)Lcom/sec/android/app/twlauncher/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragScroller;->scrollRight()V

    goto :goto_0

    .line 716
    :cond_2
    iget v0, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_3

    .line 717
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/DragLayer;

    #getter for: Lcom/sec/android/app/twlauncher/DragLayer;->mDragScroller:Lcom/sec/android/app/twlauncher/DragScroller;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->access$000(Lcom/sec/android/app/twlauncher/DragLayer;)Lcom/sec/android/app/twlauncher/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragScroller;->scrollLeft()V

    goto :goto_0

    .line 719
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/DragLayer;

    #getter for: Lcom/sec/android/app/twlauncher/DragLayer;->mDragScroller:Lcom/sec/android/app/twlauncher/DragScroller;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->access$000(Lcom/sec/android/app/twlauncher/DragLayer;)Lcom/sec/android/app/twlauncher/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragScroller;->scrollRight()V

    goto :goto_0
.end method

.method setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 727
    iput p1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mDirection:I

    .line 728
    return-void
.end method

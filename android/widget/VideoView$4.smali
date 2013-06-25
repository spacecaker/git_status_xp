.class Landroid/widget/VideoView$4;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 8
    .parameter "mp"
    .parameter "framework_err"
    .parameter "impl_err"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 427
    iget-object v3, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/widget/VideoView;->access$1100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v3, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mCurrentState:I
    invoke-static {v3, v6}, Landroid/widget/VideoView;->access$202(Landroid/widget/VideoView;I)I

    .line 429
    iget-object v3, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v3, v6}, Landroid/widget/VideoView;->access$1402(Landroid/widget/VideoView;I)I

    .line 430
    iget-object v3, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v3}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 431
    iget-object v3, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v3}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/MediaController;->hide()V

    .line 435
    :cond_0
    iget-object v3, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v3}, Landroid/widget/VideoView;->access$1800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 436
    iget-object v3, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v3}, Landroid/widget/VideoView;->access$1800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-interface {v3, v4, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v7

    .line 462
    :goto_0
    return v3

    .line 446
    :cond_1
    iget-object v3, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 447
    iget-object v3, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/VideoView;->access$1900(Landroid/widget/VideoView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 450
    .local v2, r:Landroid/content/res/Resources;
    const/16 v3, 0xc8

    if-ne p2, v3, :cond_3

    .line 451
    const v0, 0x1040015

    .line 457
    .local v0, messageId:I
    :goto_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 458
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v1, Landroid/os/Message;->what:I

    .line 459
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 460
    iget-object v3, p0, Landroid/widget/VideoView$4;->this$0:Landroid/widget/VideoView;

    iget-object v3, v3, Landroid/widget/VideoView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0           #messageId:I
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #r:Landroid/content/res/Resources;
    :cond_2
    move v3, v7

    .line 462
    goto :goto_0

    .line 453
    .restart local v2       #r:Landroid/content/res/Resources;
    :cond_3
    const v0, 0x1040011

    .restart local v0       #messageId:I
    goto :goto_1
.end method

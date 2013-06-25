.class Landroid/widget/VideoView$6;
.super Landroid/os/Handler;
.source "VideoView.java"


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
    .line 513
    iput-object p1, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const-string v4, "There is a Bad Token, is VideoView finished before start playing?"

    .line 516
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 567
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/VideoView;->access$1100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Undefined Message Received"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :goto_1
    return-void

    .line 521
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 523
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 524
    .local v0, e:Landroid/view/WindowManager$BadTokenException;
    iget-object v1, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/VideoView;->access$1100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "There is a Bad Token, is VideoView finished before start playing?"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 529
    .end local v0           #e:Landroid/view/WindowManager$BadTokenException;
    :pswitch_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/VideoView$6;->removeMessages(I)V

    .line 532
    :try_start_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/widget/VideoView;->access$2100(Landroid/widget/VideoView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040012

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040010

    new-instance v3, Landroid/widget/VideoView$6$2;

    invoke-direct {v3, p0}, Landroid/widget/VideoView$6$2;-><init>(Landroid/widget/VideoView$6;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Landroid/widget/VideoView$6$1;

    invoke-direct {v2, p0}, Landroid/widget/VideoView$6$1;-><init>(Landroid/widget/VideoView$6;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 558
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 559
    .restart local v0       #e:Landroid/view/WindowManager$BadTokenException;
    iget-object v1, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/VideoView;->access$1100(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "There is a Bad Token, is VideoView finished before start playing?"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 563
    .end local v0           #e:Landroid/view/WindowManager$BadTokenException;
    :pswitch_2
    iget-object v1, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v1}, Landroid/widget/VideoView;->access$1700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 564
    iget-object v1, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v1}, Landroid/widget/VideoView;->access$1700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 516
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

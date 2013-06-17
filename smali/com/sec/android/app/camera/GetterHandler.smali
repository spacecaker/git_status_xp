.class Lcom/sec/android/app/camera/GetterHandler;
.super Landroid/os/Handler;
.source "ImageGetter.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 298
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 303
    .end local p0
    :goto_0
    return-void

    .line 300
    .restart local p0
    :pswitch_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public postDelayedGetterCallback(Ljava/lang/Runnable;J)V
    .locals 2
    .parameter "callback"
    .parameter "delay"

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 311
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 313
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 314
    .local v0, message:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 315
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 316
    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/app/camera/GetterHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 317
    return-void
.end method

.method public postGetterCallback(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 306
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/camera/GetterHandler;->postDelayedGetterCallback(Ljava/lang/Runnable;J)V

    .line 307
    return-void
.end method

.method public removeAllGetterCallbacks()V
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/GetterHandler;->removeMessages(I)V

    .line 321
    return-void
.end method

.class Lcom/android/music/MediaPlaybackActivity$18;
.super Landroid/os/Handler;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2402
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$18;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 2406
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$18;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2409
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$18;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v2, 0x1

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mIsFling:Z
    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackActivity;->access$3702(Lcom/android/music/MediaPlaybackActivity;Z)Z

    .line 2410
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$18;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->next()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2446
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2447
    return-void

    .line 2412
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2414
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2417
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$18;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2420
    :try_start_1
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$18;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v2, 0x1

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mIsFling:Z
    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackActivity;->access$3702(Lcom/android/music/MediaPlaybackActivity;Z)Z

    .line 2421
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$18;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->prev()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2423
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 2425
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2429
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 2431
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$18;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v1, v3, v3}, Lcom/android/music/MediaPlaybackActivity;->showAdditionalPanel(ZZ)V

    goto :goto_0

    .line 2433
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 2435
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$18;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-boolean v1, v1, Lcom/android/music/MediaPlaybackActivity;->isShowPanel:Z

    if-nez v1, :cond_0

    .line 2437
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$18;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v1, v1, Lcom/android/music/MediaPlaybackActivity;->reNomalHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/music/MediaPlaybackActivity$18$1;

    invoke-direct {v2, p0}, Lcom/android/music/MediaPlaybackActivity$18$1;-><init>(Lcom/android/music/MediaPlaybackActivity$18;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

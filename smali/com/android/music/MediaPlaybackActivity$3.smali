.class Lcom/android/music/MediaPlaybackActivity$3;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/MediaPlaybackActivity;->initLayout()V
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
    .line 437
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$3;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "arg0"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 442
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 475
    :goto_0
    return v1

    .line 445
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$3;->this$0:Lcom/android/music/MediaPlaybackActivity;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$3;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090080

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity$3;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity$3;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity$3;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Lcom/android/music/MediaPlaybackActivity$3$1;

    invoke-direct {v4, p0}, Lcom/android/music/MediaPlaybackActivity$3$1;-><init>(Lcom/android/music/MediaPlaybackActivity$3;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mSearchPopup:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackActivity;->access$202(Lcom/android/music/MediaPlaybackActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move v1, v6

    .line 475
    goto :goto_0

    .line 469
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 471
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

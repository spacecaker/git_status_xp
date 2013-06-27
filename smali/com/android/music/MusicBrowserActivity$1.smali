.class Lcom/android/music/MusicBrowserActivity$1;
.super Ljava/lang/Object;
.source "MusicBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MusicBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MusicBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/MusicBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/music/MusicBrowserActivity$1;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity$1;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v1, p0}, Lcom/android/music/MusicBrowserActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    :goto_0
    invoke-static {p2}, Lcom/android/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    .line 74
    .local v0, serv:Lcom/android/music/IMediaPlaybackService;
    if-eqz v0, :cond_0

    .line 76
    const/4 v1, 0x2

    :try_start_1
    invoke-interface {v0, v1}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    :cond_0
    :goto_1
    return-void

    .line 77
    :catch_0
    move-exception v1

    goto :goto_1

    .line 71
    .end local v0           #serv:Lcom/android/music/IMediaPlaybackService;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "classname"

    .prologue
    .line 83
    return-void
.end method

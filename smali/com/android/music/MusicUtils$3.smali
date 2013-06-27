.class final Lcom/android/music/MusicUtils$3;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ll:Landroid/widget/TabWidget;


# direct methods
.method constructor <init>(Landroid/widget/TabWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1320
    iput-object p1, p0, Lcom/android/music/MusicUtils$3;->val$ll:Landroid/widget/TabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 1325
    :try_start_0
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1326
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1327
    iget-object v0, p0, Lcom/android/music/MusicUtils$3;->val$ll:Landroid/widget/TabWidget;

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    .line 1328
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1329
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    :cond_0
    :goto_0
    return-void

    .line 1331
    :catch_0
    move-exception v0

    .line 1332
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.class Lcom/android/music/MediaPlaybackActivity$15;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 1809
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1811
    const-string v0, "MediaPlaybackActivity"

    const-string v1, "service connected.."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {p2}, Lcom/android/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v1

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->access$302(Lcom/android/music/MediaPlaybackActivity;Lcom/android/music/IMediaPlaybackService;)Lcom/android/music/IMediaPlaybackService;

    .line 1813
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->startPlayback()V
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$1900(Lcom/android/music/MediaPlaybackActivity;)V

    .line 1817
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1823
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$2000(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1824
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$2100(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1825
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQueueButton-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mQueueButton:Lcom/sec/android/app/music/IconTextButton;
    invoke-static {v2}, Lcom/android/music/MediaPlaybackActivity;->access$2200(Lcom/android/music/MediaPlaybackActivity;)Lcom/sec/android/app/music/IconTextButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-boolean v0, v0, Lcom/android/music/MediaPlaybackActivity;->mScreenMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1828
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mQueueButton:Lcom/sec/android/app/music/IconTextButton;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$2200(Lcom/android/music/MediaPlaybackActivity;)Lcom/sec/android/app/music/IconTextButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/IconTextButton;->setVisibility(I)V

    .line 1833
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$2400(Lcom/android/music/MediaPlaybackActivity;)V

    .line 1834
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$2500(Lcom/android/music/MediaPlaybackActivity;)V

    .line 1837
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mMTMV:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$2600(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1838
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mEqualizerName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$2700(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1839
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->setEqualizerText()V
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$2800(Lcom/android/music/MediaPlaybackActivity;)V

    .line 1840
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->setMTMVButtonImage()V
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$2900(Lcom/android/music/MediaPlaybackActivity;)V

    .line 1842
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->setPauseButtonImage()V
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$3000(Lcom/android/music/MediaPlaybackActivity;)V

    .line 1857
    :goto_1
    return-void

    .line 1829
    :cond_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-boolean v0, v0, Lcom/android/music/MediaPlaybackActivity;->mScreenMode:Z

    if-nez v0, :cond_1

    .line 1830
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mQueueSmallButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$2300(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1845
    :catch_0
    move-exception v0

    .line 1850
    :cond_3
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1851
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1852
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1853
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const-class v2, Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1854
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v1, v0}, Lcom/android/music/MediaPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    .line 1856
    :cond_4
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackActivity;->finish()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "classname"

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$15;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->access$302(Lcom/android/music/MediaPlaybackActivity;Lcom/android/music/IMediaPlaybackService;)Lcom/android/music/IMediaPlaybackService;

    .line 1860
    return-void
.end method

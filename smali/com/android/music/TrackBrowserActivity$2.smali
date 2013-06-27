.class Lcom/android/music/TrackBrowserActivity$2;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/TrackBrowserActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$2;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$2;->this$0:Lcom/android/music/TrackBrowserActivity;

    #calls: Lcom/android/music/TrackBrowserActivity;->setAlbumArtBackground()V
    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity;->access$000(Lcom/android/music/TrackBrowserActivity;)V

    .line 299
    return-void
.end method

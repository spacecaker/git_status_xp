.class Lcom/sec/android/app/music/MusicSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/android/app/music/MusicSettings$1;->this$0:Lcom/sec/android/app/music/MusicSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.music.turnoffmtmv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/sec/android/app/music/MusicSettings$1;->this$0:Lcom/sec/android/app/music/MusicSettings;

    #calls: Lcom/sec/android/app/music/MusicSettings;->turnOffMTMV()V
    invoke-static {v1}, Lcom/sec/android/app/music/MusicSettings;->access$000(Lcom/sec/android/app/music/MusicSettings;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const-string v1, "com.android.music.turnoffeq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/music/MusicSettings$1;->this$0:Lcom/sec/android/app/music/MusicSettings;

    #calls: Lcom/sec/android/app/music/MusicSettings;->turnOffEQ()V
    invoke-static {v1}, Lcom/sec/android/app/music/MusicSettings;->access$100(Lcom/sec/android/app/music/MusicSettings;)V

    goto :goto_0
.end method

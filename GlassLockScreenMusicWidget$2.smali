.class Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;
.super Landroid/content/BroadcastReceiver;
.source "GlassLockScreenMusicWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 174
    const-string v7, "GlassLockScreenMusicWidget"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive() : intent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 176
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mScreenOn:Z
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$102(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;Z)Z

    .line 181
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, action:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v7

    if-nez v7, :cond_a

    .line 183
    const-string v7, "com.android.music.musicservicecommand.mediainfo"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 184
    const-string v7, "playing"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    const/4 v7, 0x1

    move v6, v7

    .line 185
    .local v6, playing:I
    :goto_1
    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 186
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$202(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)I

    .line 188
    :cond_1
    const-string v7, "isStop"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    const/4 v7, 0x1

    move v3, v7

    .line 189
    .local v3, isStop:I
    :goto_2
    const-string v7, "mediauri"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 190
    .local v4, mediaUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x12c2

    invoke-virtual {v7, v8, v6, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 191
    .local v5, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    .end local v3           #isStop:I
    .end local v4           #mediaUri:Landroid/net/Uri;
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #playing:I
    :cond_2
    :goto_3
    return-void

    .line 177
    .end local v0           #action:Ljava/lang/String;
    :cond_3
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 178
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    const/4 v8, 0x0

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mScreenOn:Z
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$102(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;Z)Z

    goto :goto_0

    .line 184
    .restart local v0       #action:Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    move v6, v7

    goto :goto_1

    .line 188
    .restart local v6       #playing:I
    :cond_5
    const/4 v7, 0x0

    move v3, v7

    goto :goto_2

    .line 192
    .end local v6           #playing:I
    :cond_6
    const-string v7, "com.samsung.music.musicservicecommand.mediainfo"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 194
    const-string v7, "playing"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 195
    const/4 v6, 0x1

    .line 199
    .restart local v6       #playing:I
    :goto_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    const/4 v8, 0x2

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$202(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)I

    .line 200
    const-string v7, "hostType"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_8

    const/4 v7, 0x1

    move v2, v7

    .line 201
    .local v2, hostType:I
    :goto_5
    const/4 v7, 0x1

    if-ne v2, v7, :cond_9

    .line 202
    const/4 v7, 0x2

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "title"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    const/4 v7, 0x1

    const-string v8, "artist"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    .line 204
    .local v1, dataArray:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x12c3

    invoke-virtual {v7, v8, v6, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 206
    .restart local v5       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 197
    .end local v1           #dataArray:[Ljava/lang/String;
    .end local v2           #hostType:I
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #playing:I
    :cond_7
    const/4 v6, 0x0

    .restart local v6       #playing:I
    goto :goto_4

    .line 200
    :cond_8
    const/4 v7, 0x0

    move v2, v7

    goto :goto_5

    .line 208
    .restart local v2       #hostType:I
    :cond_9
    const-string v7, "mediauri"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 209
    .restart local v4       #mediaUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x12c2

    invoke-virtual {v7, v8, v6, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 210
    .restart local v5       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 214
    .end local v2           #hostType:I
    .end local v4           #mediaUri:Landroid/net/Uri;
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #playing:I
    :cond_a
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_e

    const-string v7, "com.android.music.musicservicecommand.mediainfo"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 215
    const-string v7, "playing"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    const/4 v7, 0x1

    move v6, v7

    .line 216
    .restart local v6       #playing:I
    :goto_6
    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    .line 217
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$202(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)I

    .line 219
    :cond_b
    const-string v7, "isStop"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_d

    const/4 v7, 0x1

    move v3, v7

    .line 220
    .restart local v3       #isStop:I
    :goto_7
    const-string v7, "mediauri"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 221
    .restart local v4       #mediaUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x12c2

    invoke-virtual {v7, v8, v6, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 222
    .restart local v5       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 215
    .end local v3           #isStop:I
    .end local v4           #mediaUri:Landroid/net/Uri;
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #playing:I
    :cond_c
    const/4 v7, 0x0

    move v6, v7

    goto :goto_6

    .line 219
    .restart local v6       #playing:I
    :cond_d
    const/4 v7, 0x0

    move v3, v7

    goto :goto_7

    .line 223
    .end local v6           #playing:I
    :cond_e
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    const-string v7, "com.samsung.music.musicservicecommand.mediainfo"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 225
    const-string v7, "playing"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_f

    .line 226
    const/4 v6, 0x1

    .line 231
    .restart local v6       #playing:I
    :goto_8
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    const/4 v8, 0x2

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$202(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)I

    .line 232
    const-string v7, "hostType"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_10

    const/4 v7, 0x1

    move v2, v7

    .line 233
    .restart local v2       #hostType:I
    :goto_9
    const/4 v7, 0x1

    if-ne v2, v7, :cond_11

    .line 234
    const/4 v7, 0x2

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "title"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    const/4 v7, 0x1

    const-string v8, "artist"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    .line 236
    .restart local v1       #dataArray:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x12c3

    invoke-virtual {v7, v8, v6, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 237
    .restart local v5       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 228
    .end local v1           #dataArray:[Ljava/lang/String;
    .end local v2           #hostType:I
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #playing:I
    :cond_f
    const/4 v6, 0x0

    .restart local v6       #playing:I
    goto :goto_8

    .line 232
    :cond_10
    const/4 v7, 0x0

    move v2, v7

    goto :goto_9

    .line 239
    .restart local v2       #hostType:I
    :cond_11
    const-string v7, "mediauri"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 240
    .restart local v4       #mediaUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x12c2

    invoke-virtual {v7, v8, v6, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 241
    .restart local v5       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3
.end method

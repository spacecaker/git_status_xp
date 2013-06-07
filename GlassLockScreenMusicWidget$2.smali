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
    .line 178
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v11, 0x12c2

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v12, "mediauri"

    .line 182
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, action:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$100(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v7

    if-nez v7, :cond_8

    .line 184
    const-string v7, "com.android.music.musicservicecommand.mediainfo"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 185
    const-string v7, "playing"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-ne v7, v8, :cond_2

    move v6, v8

    .line 186
    .local v6, playing:I
    :goto_0
    if-ne v6, v8, :cond_0

    .line 187
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$102(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)I

    .line 189
    :cond_0
    const-string v7, "isStop"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-ne v7, v8, :cond_3

    move v3, v8

    .line 190
    .local v3, isStop:I
    :goto_1
    const-string v7, "mediauri"

    invoke-virtual {p2, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 191
    .local v4, mediaUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v11, v6, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 192
    .local v5, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 245
    .end local v3           #isStop:I
    .end local v4           #mediaUri:Landroid/net/Uri;
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #playing:I
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v6, v9

    .line 185
    goto :goto_0

    .restart local v6       #playing:I
    :cond_3
    move v3, v9

    .line 189
    goto :goto_1

    .line 193
    .end local v6           #playing:I
    :cond_4
    const-string v7, "com.samsung.music.musicservicecommand.mediainfo"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 195
    const-string v7, "playing"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-ne v7, v8, :cond_5

    .line 196
    const/4 v6, 0x1

    .line 200
    .restart local v6       #playing:I
    :goto_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v7, v10}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$102(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)I

    .line 201
    const-string v7, "hostType"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_6

    move v2, v8

    .line 202
    .local v2, hostType:I
    :goto_4
    if-ne v2, v8, :cond_7

    .line 203
    new-array v1, v10, [Ljava/lang/String;

    const-string v7, "title"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v9

    const-string v7, "artist"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v8

    .line 205
    .local v1, dataArray:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x12c3

    invoke-virtual {v7, v8, v6, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 207
    .restart local v5       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 198
    .end local v1           #dataArray:[Ljava/lang/String;
    .end local v2           #hostType:I
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #playing:I
    :cond_5
    const/4 v6, 0x0

    .restart local v6       #playing:I
    goto :goto_3

    :cond_6
    move v2, v9

    .line 201
    goto :goto_4

    .line 209
    .restart local v2       #hostType:I
    :cond_7
    const-string v7, "mediauri"

    invoke-virtual {p2, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 210
    .restart local v4       #mediaUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v11, v6, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 211
    .restart local v5       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 215
    .end local v2           #hostType:I
    .end local v4           #mediaUri:Landroid/net/Uri;
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #playing:I
    :cond_8
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$100(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v7

    if-ne v7, v8, :cond_c

    const-string v7, "com.android.music.musicservicecommand.mediainfo"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 216
    const-string v7, "playing"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-ne v7, v8, :cond_a

    move v6, v8

    .line 217
    .restart local v6       #playing:I
    :goto_5
    if-ne v6, v8, :cond_9

    .line 218
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$102(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)I

    .line 220
    :cond_9
    const-string v7, "isStop"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-ne v7, v8, :cond_b

    move v3, v8

    .line 221
    .restart local v3       #isStop:I
    :goto_6
    const-string v7, "mediauri"

    invoke-virtual {p2, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 222
    .restart local v4       #mediaUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v11, v6, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 223
    .restart local v5       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .end local v3           #isStop:I
    .end local v4           #mediaUri:Landroid/net/Uri;
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #playing:I
    :cond_a
    move v6, v9

    .line 216
    goto :goto_5

    .restart local v6       #playing:I
    :cond_b
    move v3, v9

    .line 220
    goto :goto_6

    .line 224
    .end local v6           #playing:I
    :cond_c
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$100(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v7

    if-ne v7, v10, :cond_1

    const-string v7, "com.samsung.music.musicservicecommand.mediainfo"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 226
    const-string v7, "playing"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-ne v7, v8, :cond_d

    .line 227
    const/4 v6, 0x1

    .line 232
    .restart local v6       #playing:I
    :goto_7
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I
    invoke-static {v7, v10}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$102(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)I

    .line 233
    const-string v7, "hostType"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_e

    move v2, v8

    .line 234
    .restart local v2       #hostType:I
    :goto_8
    if-ne v2, v8, :cond_f

    .line 235
    new-array v1, v10, [Ljava/lang/String;

    const-string v7, "title"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v9

    const-string v7, "artist"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v8

    .line 237
    .restart local v1       #dataArray:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x12c3

    invoke-virtual {v7, v8, v6, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 238
    .restart local v5       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 229
    .end local v1           #dataArray:[Ljava/lang/String;
    .end local v2           #hostType:I
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #playing:I
    :cond_d
    const/4 v6, 0x0

    .restart local v6       #playing:I
    goto :goto_7

    :cond_e
    move v2, v9

    .line 233
    goto :goto_8

    .line 240
    .restart local v2       #hostType:I
    :cond_f
    const-string v7, "mediauri"

    invoke-virtual {p2, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 241
    .restart local v4       #mediaUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v11, v6, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 242
    .restart local v5       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2
.end method
